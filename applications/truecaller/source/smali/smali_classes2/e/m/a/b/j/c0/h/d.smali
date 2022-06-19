.class public final synthetic Le/m/a/b/j/c0/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/h/t;

.field public final synthetic b:Le/m/a/b/j/r;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/h/t;Le/m/a/b/j/r;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/h/d;->a:Le/m/a/b/j/c0/h/t;

    iput-object p2, p0, Le/m/a/b/j/c0/h/d;->b:Le/m/a/b/j/r;

    iput p3, p0, Le/m/a/b/j/c0/h/d;->c:I

    iput-object p4, p0, Le/m/a/b/j/c0/h/d;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Le/m/a/b/j/c0/h/d;->a:Le/m/a/b/j/c0/h/t;

    iget-object v1, p0, Le/m/a/b/j/c0/h/d;->b:Le/m/a/b/j/r;

    iget v2, p0, Le/m/a/b/j/c0/h/d;->c:I

    iget-object v3, p0, Le/m/a/b/j/c0/h/d;->d:Ljava/lang/Runnable;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 2
    :try_start_0
    iget-object v5, v0, Le/m/a/b/j/c0/h/t;->f:Le/m/a/b/j/d0/b;

    iget-object v6, v0, Le/m/a/b/j/c0/h/t;->c:Le/m/a/b/j/c0/i/a0;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Le/m/a/b/j/c0/h/b;

    invoke-direct {v7, v6}, Le/m/a/b/j/c0/h/b;-><init>(Le/m/a/b/j/c0/i/a0;)V

    invoke-interface {v5, v7}, Le/m/a/b/j/d0/b;->k(Le/m/a/b/j/d0/b$a;)Ljava/lang/Object;

    .line 3
    iget-object v5, v0, Le/m/a/b/j/c0/h/t;->a:Landroid/content/Context;

    const-string v6, "connectivity"

    .line 4
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 5
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    .line 7
    iget-object v5, v0, Le/m/a/b/j/c0/h/t;->f:Le/m/a/b/j/d0/b;

    new-instance v6, Le/m/a/b/j/c0/h/k;

    invoke-direct {v6, v0, v1, v2}, Le/m/a/b/j/c0/h/k;-><init>(Le/m/a/b/j/c0/h/t;Le/m/a/b/j/r;I)V

    invoke-interface {v5, v6}, Le/m/a/b/j/d0/b;->k(Le/m/a/b/j/d0/b$a;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, v1, v2}, Le/m/a/b/j/c0/h/t;->a(Le/m/a/b/j/r;I)V
    :try_end_0
    .catch Le/m/a/b/j/d0/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 9
    :catch_0
    :try_start_1
    iget-object v0, v0, Le/m/a/b/j/c0/h/t;->d:Le/m/a/b/j/c0/h/x;

    add-int/2addr v2, v4

    invoke-interface {v0, v1, v2}, Le/m/a/b/j/c0/h/x;->b(Le/m/a/b/j/r;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_2
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 11
    throw v0
.end method
