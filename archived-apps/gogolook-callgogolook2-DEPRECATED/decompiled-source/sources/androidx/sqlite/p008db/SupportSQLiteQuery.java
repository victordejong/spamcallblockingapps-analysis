package androidx.sqlite.p008db;
/* renamed from: androidx.sqlite.db.SupportSQLiteQuery */
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteQuery.class */
public interface SupportSQLiteQuery {
    void bindTo(SupportSQLiteProgram supportSQLiteProgram);

    int getArgCount();

    String getSql();
}
