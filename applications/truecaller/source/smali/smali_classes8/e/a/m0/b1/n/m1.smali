.class public final Le/a/m0/b1/n/m1;
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

    const-string v0, "\n                    CREATE TABLE IF NOT EXISTS voip_history_peers (\n                        history_id INTEGER NOT NULL \n                        REFERENCES history (_id) ON DELETE CASCADE,\n                        normalized_number TEXT NOT NULL,\n                        status INTEGER DEFAULT 0 NOT NULL,\n                        position INTEGER NOT NULL,\n                        UNIQUE(history_id, position) ON CONFLICT REPLACE\n                    )\n                "

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
