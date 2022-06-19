.class public final Le/a/y/d/j$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/d/j;->e(Ljava/lang/String;)Le/a/y/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.flashsdk.db.FlashPendingManagerImpl$getHistory$1"
    f = "FlashPendingManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/y/d/j;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/y/d/j;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/d/j$a;->e:Le/a/y/d/j;

    iput-object p2, p0, Le/a/y/d/j$a;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/d/j$a;

    iget-object v0, p0, Le/a/y/d/j$a;->e:Le/a/y/d/j;

    iget-object v1, p0, Le/a/y/d/j$a;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/y/d/j$a;-><init>(Le/a/y/d/j;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/d/j$a;

    iget-object v0, p0, Le/a/y/d/j$a;->e:Le/a/y/d/j;

    iget-object v1, p0, Le/a/y/d/j$a;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/y/d/j$a;-><init>(Le/a/y/d/j;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/y/d/j$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/y/d/j$a;->e:Le/a/y/d/j;

    iget-object v8, p0, Le/a/y/d/j$a;->f:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p1, Le/a/y/d/j;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5
    sget-object v3, Le/a/y/d/l;->a:Landroid/net/Uri;

    .line 6
    sget-object v4, Le/a/y/d/a;->a:[Ljava/lang/String;

    .line 7
    sget-object v5, Le/a/y/d/a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v8, v6, v1

    const/4 v7, 0x0

    .line 8
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_0

    .line 9
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "timestamp"

    .line 10
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v0, "type"

    .line 11
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "history"

    .line 12
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 13
    new-instance v10, Le/a/y/d/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Le/a/y/d/h;-><init>(Ljava/lang/String;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Le/a/y/d/j;->a:Ln3/g/f;

    invoke-virtual {p1, v8, v10}, Ln3/g/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v9

    goto :goto_3

    :catch_0
    move-object v0, v9

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 15
    :catch_1
    :goto_1
    :try_start_2
    new-instance p1, Lcom/truecaller/log/UnmutedException$f;

    const-string v1, "Failed to Query in Flash"

    invoke-direct {p1, v1}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    move-object v9, v0

    .line 16
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 17
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :goto_3
    if-eqz v0, :cond_2

    .line 18
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method
