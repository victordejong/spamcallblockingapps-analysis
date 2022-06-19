.class public Le/a/i/d0/c0/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/c0/n;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le/a/i/d0/c0/n;


# direct methods
.method public constructor <init>(Le/a/i/d0/c0/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/d0/c0/n$b;->b:Le/a/i/d0/c0/n;

    iput-object p2, p0, Le/a/i/d0/c0/n$b;->a:Ljava/lang/String;

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
    iget-object v0, p0, Le/a/i/d0/c0/n$b;->b:Le/a/i/d0/c0/n;

    .line 2
    iget-object v0, v0, Le/a/i/d0/c0/n;->e:Ln3/c0/c0;

    .line 3
    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Le/a/i/d0/c0/n$b;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 7
    :goto_0
    iget-object v1, p0, Le/a/i/d0/c0/n$b;->b:Le/a/i/d0/c0/n;

    .line 8
    iget-object v1, v1, Le/a/i/d0/c0/n;->a:Ln3/c0/q;

    .line 9
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 10
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    iget-object v2, p0, Le/a/i/d0/c0/n$b;->b:Le/a/i/d0/c0/n;

    .line 12
    iget-object v2, v2, Le/a/i/d0/c0/n;->a:Ln3/c0/q;

    .line 13
    invoke-virtual {v2}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v2, p0, Le/a/i/d0/c0/n$b;->b:Le/a/i/d0/c0/n;

    .line 15
    iget-object v2, v2, Le/a/i/d0/c0/n;->a:Ln3/c0/q;

    .line 16
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 17
    iget-object v2, p0, Le/a/i/d0/c0/n$b;->b:Le/a/i/d0/c0/n;

    .line 18
    iget-object v2, v2, Le/a/i/d0/c0/n;->e:Ln3/c0/c0;

    .line 19
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 20
    iget-object v2, p0, Le/a/i/d0/c0/n$b;->b:Le/a/i/d0/c0/n;

    .line 21
    iget-object v2, v2, Le/a/i/d0/c0/n;->a:Ln3/c0/q;

    .line 22
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 23
    iget-object v2, p0, Le/a/i/d0/c0/n$b;->b:Le/a/i/d0/c0/n;

    .line 24
    iget-object v2, v2, Le/a/i/d0/c0/n;->e:Ln3/c0/c0;

    .line 25
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 26
    throw v1
.end method
