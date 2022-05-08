package com.privacystar.core.data.sqlite;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/MigrationStatement.class */
public class MigrationStatement {
    @SerializedName("sql")
    @Expose
    protected String sqlStatement;
    @SerializedName("id")
    @Expose
    protected String transactionId;

    public String getSqlStatement() {
        return this.sqlStatement;
    }

    public String getTransactionId() {
        return this.transactionId;
    }

    public void setSqlStatement(String str) {
        this.sqlStatement = str;
    }

    public void setTransactionId(String str) {
        this.transactionId = str;
    }
}
