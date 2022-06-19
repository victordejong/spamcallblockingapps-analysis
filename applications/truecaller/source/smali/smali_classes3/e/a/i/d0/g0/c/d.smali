.class public Le/a/i/d0/g0/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/d0/g0/c/c;


# direct methods
.method public constructor <init>(Le/a/i/d0/g0/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/d0/g0/c/d;->a:Le/a/i/d0/g0/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/d0/g0/c/d;->a:Le/a/i/d0/g0/c/c;

    .line 2
    iget-object v0, v0, Le/a/i/d0/g0/c/c;->d:Ln3/c0/c0;

    .line 3
    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/i/d0/g0/c/d;->a:Le/a/i/d0/g0/c/c;

    .line 5
    iget-object v1, v1, Le/a/i/d0/g0/c/c;->a:Ln3/c0/q;

    .line 6
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 7
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 8
    iget-object v2, p0, Le/a/i/d0/g0/c/d;->a:Le/a/i/d0/g0/c/c;

    .line 9
    iget-object v2, v2, Le/a/i/d0/g0/c/c;->a:Ln3/c0/q;

    .line 10
    invoke-virtual {v2}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v2, p0, Le/a/i/d0/g0/c/d;->a:Le/a/i/d0/g0/c/c;

    .line 12
    iget-object v2, v2, Le/a/i/d0/g0/c/c;->a:Ln3/c0/q;

    .line 13
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 14
    iget-object v2, p0, Le/a/i/d0/g0/c/d;->a:Le/a/i/d0/g0/c/c;

    .line 15
    iget-object v2, v2, Le/a/i/d0/g0/c/c;->d:Ln3/c0/c0;

    .line 16
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 17
    iget-object v2, p0, Le/a/i/d0/g0/c/d;->a:Le/a/i/d0/g0/c/c;

    .line 18
    iget-object v2, v2, Le/a/i/d0/g0/c/c;->a:Ln3/c0/q;

    .line 19
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 20
    iget-object v2, p0, Le/a/i/d0/g0/c/d;->a:Le/a/i/d0/g0/c/c;

    .line 21
    iget-object v2, v2, Le/a/i/d0/g0/c/c;->d:Ln3/c0/c0;

    .line 22
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 23
    throw v1
.end method
