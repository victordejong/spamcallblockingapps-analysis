.class public Le/a/c/c/d/q$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/q;->e(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/q;


# direct methods
.method public constructor <init>(Le/a/c/c/d/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/q$h;->a:Le/a/c/c/d/q;

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
    iget-object v0, p0, Le/a/c/c/d/q$h;->a:Le/a/c/c/d/q;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/q;->f:Ln3/c0/c0;

    .line 3
    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/c/c/d/q$h;->a:Le/a/c/c/d/q;

    .line 5
    iget-object v1, v1, Le/a/c/c/d/q;->a:Ln3/c0/q;

    .line 6
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 7
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 8
    iget-object v1, p0, Le/a/c/c/d/q$h;->a:Le/a/c/c/d/q;

    .line 9
    iget-object v1, v1, Le/a/c/c/d/q;->a:Ln3/c0/q;

    .line 10
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V

    .line 11
    sget-object v1, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v2, p0, Le/a/c/c/d/q$h;->a:Le/a/c/c/d/q;

    .line 13
    iget-object v2, v2, Le/a/c/c/d/q;->a:Ln3/c0/q;

    .line 14
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 15
    iget-object v2, p0, Le/a/c/c/d/q$h;->a:Le/a/c/c/d/q;

    .line 16
    iget-object v2, v2, Le/a/c/c/d/q;->f:Ln3/c0/c0;

    .line 17
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 18
    iget-object v2, p0, Le/a/c/c/d/q$h;->a:Le/a/c/c/d/q;

    .line 19
    iget-object v2, v2, Le/a/c/c/d/q;->a:Ln3/c0/q;

    .line 20
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 21
    iget-object v2, p0, Le/a/c/c/d/q$h;->a:Le/a/c/c/d/q;

    .line 22
    iget-object v2, v2, Le/a/c/c/d/q;->f:Ln3/c0/c0;

    .line 23
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 24
    throw v1
.end method
