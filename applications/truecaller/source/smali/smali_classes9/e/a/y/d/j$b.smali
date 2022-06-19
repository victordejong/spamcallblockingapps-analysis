.class public final Le/a/y/d/j$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/d/j;->c(Ljava/lang/String;JLcom/truecaller/flashsdk/models/Flash;)V
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
    c = "com.truecaller.flashsdk.db.FlashPendingManagerImpl$saveHistoryAsync$1"
    f = "FlashPendingManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/y/d/j;

.field public final synthetic f:Le/a/y/d/h;


# direct methods
.method public constructor <init>(Le/a/y/d/j;Le/a/y/d/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/d/j$b;->e:Le/a/y/d/j;

    iput-object p2, p0, Le/a/y/d/j$b;->f:Le/a/y/d/h;

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

    new-instance p1, Le/a/y/d/j$b;

    iget-object v0, p0, Le/a/y/d/j$b;->e:Le/a/y/d/j;

    iget-object v1, p0, Le/a/y/d/j$b;->f:Le/a/y/d/h;

    invoke-direct {p1, v0, v1, p2}, Le/a/y/d/j$b;-><init>(Le/a/y/d/j;Le/a/y/d/h;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/d/j$b;

    iget-object v0, p0, Le/a/y/d/j$b;->e:Le/a/y/d/j;

    iget-object v1, p0, Le/a/y/d/j$b;->f:Le/a/y/d/h;

    invoke-direct {p1, v0, v1, p2}, Le/a/y/d/j$b;-><init>(Le/a/y/d/j;Le/a/y/d/h;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/y/d/j$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/y/d/j$b;->e:Le/a/y/d/j;

    iget-object v0, p0, Le/a/y/d/j$b;->f:Le/a/y/d/h;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    iget-object v2, v0, Le/a/y/d/h;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v8, 0x0

    .line 5
    :try_start_0
    iget-object v2, p1, Le/a/y/d/j;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6
    sget-object v9, Le/a/y/d/l;->a:Landroid/net/Uri;

    .line 7
    sget-object v4, Le/a/y/d/a;->a:[Ljava/lang/String;

    .line 8
    sget-object v10, Le/a/y/d/a;->b:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, v9

    move-object v5, v10

    move-object v6, v1

    .line 9
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 10
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 11
    iget-wide v2, v0, Le/a/y/d/h;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 12
    iget-object p1, p1, Le/a/y/d/j;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v9, v10, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p1, Le/a/y/d/j;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 14
    invoke-virtual {v0}, Le/a/y/d/h;->a()Landroid/content/ContentValues;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v9, v0, v10, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p1, Le/a/y/d/j;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0}, Le/a/y/d/h;->a()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v8, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 17
    :catch_0
    :try_start_1
    new-instance p1, Lcom/truecaller/log/UnmutedException$f;

    const-string v0, "Failed to Query in Flash"

    invoke-direct {p1, v0}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    .line 18
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 19
    :cond_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :goto_2
    if-eqz v8, :cond_3

    .line 20
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method
