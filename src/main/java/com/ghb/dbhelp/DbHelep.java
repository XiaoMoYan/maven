package com.ghb.dbhelp;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.Connection;
import java.sql.SQLException;

public class DbHelep {
    private static Connection conn=null;
    private static ComboPooledDataSource data=null;
    static
    {
        data=new ComboPooledDataSource("myc3p0");
    }

    public static Connection getConn() {
        try {
            conn=data.getConnection();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return conn;
    }

    public static QueryRunner getQueryRunner()
    {
        QueryRunner qu=new QueryRunner(data);

        return qu;
    }

}
