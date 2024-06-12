#!/usr/bin/python3
# -*- coding: utf-8 -*-
# Author: yehuanhuan
# Time: 2020-04-04 17:38
# Version:1.0

from pymysql import *


class Conn_Mysql:
    def __init__(self, host, port, user, password, database):
        self.host = host
        self.port = port
        self.user = user
        self.password = password
        self.database = database
        self.config = {
            "host": self.host,
            "port": self.port,
            "user": self.user,
            "password": self.password,
            "database": self.database,
            "charset": "utf8"
        }
        self.conn = connect(**self.config)
        self.cur = self.conn.cursor()
        # self.con = connect(
        #     host = self.host,port=self.port,user=self.user,password=self.password,database=self.database,charset='utf8'
        # )

    def close(self):
        self.conn.close()
        self.cur.close()

    def insert(self, table_name, *args):
        """
        往指定的表中插入数据
        :param table_name:表名称
        :param args:要插入的数据
        :return:None
        """

        for item in args:
            sql = "INSERT INTO {} VALUES{};".format(table_name, item)
            flag = self.cur.execute(sql)
            if flag == 1:
                self.conn.commit()
                print("插入成功！")
            else:
                print("插入失败！")

    def delete(self, table_name, identify, *args):
        """
        删除指定表的指定数据
        :param table_name: 表名称
        :param args: 要删除的数据
        :return: None
        """
        for item in args:
            sql = "DELETE FROM {0} WHERE {1}={2};".format(table_name, identify, item)
            print(sql)
            flag = self.cur.execute(sql)
            if flag == 1:
                self.conn.commit()
                print("删除成功！")
            else:
                print("删除失败！")

    def select(self):
        pass

    def update(self):
        pass


if __name__ == '__main__':
    conn1 = Conn_Mysql("10.211.55.8", 3306, "root", "123", "jing_dong")

    # 1代表笔记本，1代表华硕，2代表联想
    # conn1.insert('goods', (0, 'r510vc 15.6 英寸笔记本', 1, 1, '3399 ',0,1),
    #              (0, 'y400n 14.0 英寸笔记本电脑', 1, 2, '4999',1,0))
    conn1.delete('goods','cate_id',1)
    conn1.close()


