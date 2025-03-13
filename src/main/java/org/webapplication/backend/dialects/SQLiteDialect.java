package org.webapplication.backend.dialects;

import org.hibernate.dialect.Dialect;
import org.hibernate.dialect.function.VarArgsSQLFunction;
import org.hibernate.type.StandardBasicTypes;

import java.sql.Types;

public class SQLiteDialect extends Dialect {

    public SQLiteDialect() {
        super();
        registerColumnType(Types.BIT, "integer");
        registerColumnType(Types.TINYINT, "integer");
        registerColumnType(Types.SMALLINT, "integer");
        registerColumnType(Types.INTEGER, "integer");
        registerColumnType(Types.BIGINT, "integer");
        registerColumnType(Types.FLOAT, "real");
        registerColumnType(Types.DOUBLE, "real");
        registerColumnType(Types.NUMERIC, "real");
        registerColumnType(Types.DECIMAL, "real");
        registerColumnType(Types.CHAR, "text");
        registerColumnType(Types.VARCHAR, "text");
        registerColumnType(Types.LONGVARCHAR, "text");
        registerColumnType(Types.DATE, "text"); // SQLite не имеет типа DATE
        registerColumnType(Types.TIME, "text"); // Используйте TEXT для хранения времени
        registerColumnType(Types.TIMESTAMP, "text"); // Используйте TEXT для хранения меток времени
        registerFunction("concat", new VarArgsSQLFunction(StandardBasicTypes.STRING, "", "||", ""));
    }
}
