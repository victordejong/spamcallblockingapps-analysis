.class public Le/a/i/e/h/a/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/h/a/j;->p(ZLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le/a/i/e/h/a/j;


# direct methods
.method public constructor <init>(Le/a/i/e/h/a/j;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/e/h/a/j$c;->c:Le/a/i/e/h/a/j;

    iput-boolean p2, p0, Le/a/i/e/h/a/j$c;->a:Z

    iput-object p3, p0, Le/a/i/e/h/a/j$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/h/a/j$c;->c:Le/a/i/e/h/a/j;

    .line 2
    iget-object v0, v0, Le/a/i/e/h/a/j;->d:Ln3/c0/c0;

    .line 3
    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-boolean v2, p0, Le/a/i/e/h/a/j$c;->a:Z

    int-to-long v2, v2

    .line 5
    invoke-interface {v0, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    const/4 v1, 0x2

    .line 6
    iget-object v2, p0, Le/a/i/e/h/a/j$c;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 7
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 9
    :goto_0
    iget-object v1, p0, Le/a/i/e/h/a/j$c;->c:Le/a/i/e/h/a/j;

    .line 10
    iget-object v1, v1, Le/a/i/e/h/a/j;->a:Ln3/c0/q;

    .line 11
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 12
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 13
    iget-object v1, p0, Le/a/i/e/h/a/j$c;->c:Le/a/i/e/h/a/j;

    .line 14
    iget-object v1, v1, Le/a/i/e/h/a/j;->a:Ln3/c0/q;

    .line 15
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V

    .line 16
    sget-object v1, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v2, p0, Le/a/i/e/h/a/j$c;->c:Le/a/i/e/h/a/j;

    .line 18
    iget-object v2, v2, Le/a/i/e/h/a/j;->a:Ln3/c0/q;

    .line 19
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 20
    iget-object v2, p0, Le/a/i/e/h/a/j$c;->c:Le/a/i/e/h/a/j;

    .line 21
    iget-object v2, v2, Le/a/i/e/h/a/j;->d:Ln3/c0/c0;

    .line 22
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 23
    iget-object v2, p0, Le/a/i/e/h/a/j$c;->c:Le/a/i/e/h/a/j;

    .line 24
    iget-object v2, v2, Le/a/i/e/h/a/j;->a:Ln3/c0/q;

    .line 25
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 26
    iget-object v2, p0, Le/a/i/e/h/a/j$c;->c:Le/a/i/e/h/a/j;

    .line 27
    iget-object v2, v2, Le/a/i/e/h/a/j;->d:Ln3/c0/c0;

    .line 28
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 29
    throw v1
.end method
