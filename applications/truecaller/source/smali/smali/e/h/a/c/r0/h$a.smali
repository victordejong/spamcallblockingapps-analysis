.class public Le/h/a/c/r0/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/r0/h;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le/h/a/c/r0/h;


# direct methods
.method public constructor <init>(Le/h/a/c/r0/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/r0/h$a;->b:Le/h/a/c/r0/h;

    iput-object p2, p0, Le/h/a/c/r0/h$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/h$a;->b:Le/h/a/c/r0/h;

    .line 2
    iget-object v1, v0, Le/h/a/c/r0/h;->a:Le/h/a/c/l0/b;

    .line 3
    iget-object v2, p0, Le/h/a/c/r0/h$a;->a:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Le/h/a/c/r0/h;->d:Ljava/lang/String;

    .line 5
    monitor-enter v1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v4, "inboxMessages"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v5, v1, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "_id = ? AND messageUser = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object v2, v7, v3

    const/4 v2, 0x1

    aput-object v0, v7, v2

    .line 7
    invoke-virtual {v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    iget-object v0, v1, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 10
    :catch_0
    :try_start_3
    invoke-virtual {v1}, Le/h/a/c/l0/b;->h()Le/h/a/c/g0;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    iget-object v0, v1, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 13
    monitor-exit v1

    goto :goto_2

    .line 14
    :goto_0
    :try_start_5
    iget-object v2, v1, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 15
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 16
    :cond_1
    :goto_1
    monitor-exit v1

    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
