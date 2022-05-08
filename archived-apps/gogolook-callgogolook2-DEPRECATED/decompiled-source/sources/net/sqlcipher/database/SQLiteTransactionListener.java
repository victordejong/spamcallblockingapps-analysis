package net.sqlcipher.database;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteTransactionListener.class */
public interface SQLiteTransactionListener {
    void onBegin();

    void onCommit();

    void onRollback();
}
