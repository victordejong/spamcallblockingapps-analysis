.class public final Le/a/m0/b1/n/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/b1/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE aggregated_contact ADD COLUMN spam_categories TEXT "

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE raw_contact ADD COLUMN spam_categories TEXT "

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "aggregated_contact"

    .line 3
    invoke-virtual {p0, v0}, Le/a/m0/b1/n/o0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "raw_contact"

    .line 4
    invoke-virtual {p0, v0}, Le/a/m0/b1/n/o0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\n                    UPDATE "

    const-string v1, " \n                    SET spam_categories = \n                    (\n                        SELECT data5 FROM data d\n                        WHERE \n                                "

    const-string v2, ".tc_id IS NOT NULL\n                                AND \n                                "

    .line 1
    invoke-static {v0, p1, v1, p1, v2}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tc_id IS NOT NULL \n                                AND \n                                "

    const-string v2, ".tc_id = d.tc_id \n                                AND\n                                d.data_type = 12\n                        LIMIT 1\n                    )\n                "

    .line 2
    invoke-static {v0, p1, v1, p1, v2}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
