.class public Le/a/c/c/d/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/j;->c(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
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
.field public final synthetic a:Ljava/util/Date;

.field public final synthetic b:Le/a/c/c/d/j;


# direct methods
.method public constructor <init>(Le/a/c/c/d/j;Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/j$c;->b:Le/a/c/c/d/j;

    iput-object p2, p0, Le/a/c/c/d/j$c;->a:Ljava/util/Date;

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
    iget-object v0, p0, Le/a/c/c/d/j$c;->b:Le/a/c/c/d/j;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/j;->f:Ln3/c0/c0;

    .line 3
    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Le/a/c/c/d/j$c;->b:Le/a/c/c/d/j;

    .line 5
    iget-object v2, v2, Le/a/c/c/d/j;->c:Le/a/c/c0/g;

    .line 6
    iget-object v3, p0, Le/a/c/c/d/j$c;->a:Ljava/util/Date;

    invoke-virtual {v2, v3}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 9
    :goto_0
    iget-object v1, p0, Le/a/c/c/d/j$c;->b:Le/a/c/c/d/j;

    .line 10
    iget-object v1, v1, Le/a/c/c/d/j;->a:Ln3/c0/q;

    .line 11
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 12
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 13
    iget-object v2, p0, Le/a/c/c/d/j$c;->b:Le/a/c/c/d/j;

    .line 14
    iget-object v2, v2, Le/a/c/c/d/j;->a:Ln3/c0/q;

    .line 15
    invoke-virtual {v2}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v2, p0, Le/a/c/c/d/j$c;->b:Le/a/c/c/d/j;

    .line 17
    iget-object v2, v2, Le/a/c/c/d/j;->a:Ln3/c0/q;

    .line 18
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 19
    iget-object v2, p0, Le/a/c/c/d/j$c;->b:Le/a/c/c/d/j;

    .line 20
    iget-object v2, v2, Le/a/c/c/d/j;->f:Ln3/c0/c0;

    .line 21
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 22
    iget-object v2, p0, Le/a/c/c/d/j$c;->b:Le/a/c/c/d/j;

    .line 23
    iget-object v2, v2, Le/a/c/c/d/j;->a:Ln3/c0/q;

    .line 24
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 25
    iget-object v2, p0, Le/a/c/c/d/j$c;->b:Le/a/c/c/d/j;

    .line 26
    iget-object v2, v2, Le/a/c/c/d/j;->f:Ln3/c0/c0;

    .line 27
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 28
    throw v1
.end method
