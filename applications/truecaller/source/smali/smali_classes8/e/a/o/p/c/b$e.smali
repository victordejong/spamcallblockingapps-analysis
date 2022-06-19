.class public Le/a/o/p/c/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/c/b;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le/a/o/p/c/b;


# direct methods
.method public constructor <init>(Le/a/o/p/c/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/o/p/c/b$e;->b:Le/a/o/p/c/b;

    iput-object p2, p0, Le/a/o/p/c/b$e;->a:Ljava/lang/String;

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
    iget-object v0, p0, Le/a/o/p/c/b$e;->b:Le/a/o/p/c/b;

    .line 2
    iget-object v0, v0, Le/a/o/p/c/b;->c:Ln3/c0/c0;

    .line 3
    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Le/a/o/p/c/b$e;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 7
    :goto_0
    iget-object v1, p0, Le/a/o/p/c/b$e;->b:Le/a/o/p/c/b;

    .line 8
    iget-object v1, v1, Le/a/o/p/c/b;->a:Ln3/c0/q;

    .line 9
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 10
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 11
    iget-object v1, p0, Le/a/o/p/c/b$e;->b:Le/a/o/p/c/b;

    .line 12
    iget-object v1, v1, Le/a/o/p/c/b;->a:Ln3/c0/q;

    .line 13
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V

    .line 14
    sget-object v1, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v2, p0, Le/a/o/p/c/b$e;->b:Le/a/o/p/c/b;

    .line 16
    iget-object v2, v2, Le/a/o/p/c/b;->a:Ln3/c0/q;

    .line 17
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 18
    iget-object v2, p0, Le/a/o/p/c/b$e;->b:Le/a/o/p/c/b;

    .line 19
    iget-object v2, v2, Le/a/o/p/c/b;->c:Ln3/c0/c0;

    .line 20
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 21
    iget-object v2, p0, Le/a/o/p/c/b$e;->b:Le/a/o/p/c/b;

    .line 22
    iget-object v2, v2, Le/a/o/p/c/b;->a:Ln3/c0/q;

    .line 23
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 24
    iget-object v2, p0, Le/a/o/p/c/b$e;->b:Le/a/o/p/c/b;

    .line 25
    iget-object v2, v2, Le/a/o/p/c/b;->c:Ln3/c0/c0;

    .line 26
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 27
    throw v1
.end method
