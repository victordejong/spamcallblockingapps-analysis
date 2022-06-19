.class public Le/a/i/b0/c/c/b$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/b0/c/c/b;->x(JLs1/w/d;)Ljava/lang/Object;
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
.field public final synthetic a:J

.field public final synthetic b:Le/a/i/b0/c/c/b;


# direct methods
.method public constructor <init>(Le/a/i/b0/c/c/b;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/b0/c/c/b$i;->b:Le/a/i/b0/c/c/b;

    iput-wide p2, p0, Le/a/i/b0/c/c/b$i;->a:J

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
    iget-object v0, p0, Le/a/i/b0/c/c/b$i;->b:Le/a/i/b0/c/c/b;

    .line 2
    iget-object v0, v0, Le/a/i/b0/c/c/b;->c:Ln3/c0/c0;

    .line 3
    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-wide v2, p0, Le/a/i/b0/c/c/b$i;->a:J

    invoke-interface {v0, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 5
    iget-object v1, p0, Le/a/i/b0/c/c/b$i;->b:Le/a/i/b0/c/c/b;

    .line 6
    iget-object v1, v1, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    .line 7
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9
    iget-object v2, p0, Le/a/i/b0/c/c/b$i;->b:Le/a/i/b0/c/c/b;

    .line 10
    iget-object v2, v2, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    .line 11
    invoke-virtual {v2}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v2, p0, Le/a/i/b0/c/c/b$i;->b:Le/a/i/b0/c/c/b;

    .line 13
    iget-object v2, v2, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    .line 14
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 15
    iget-object v2, p0, Le/a/i/b0/c/c/b$i;->b:Le/a/i/b0/c/c/b;

    .line 16
    iget-object v2, v2, Le/a/i/b0/c/c/b;->c:Ln3/c0/c0;

    .line 17
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 18
    iget-object v2, p0, Le/a/i/b0/c/c/b$i;->b:Le/a/i/b0/c/c/b;

    .line 19
    iget-object v2, v2, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    .line 20
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 21
    iget-object v2, p0, Le/a/i/b0/c/c/b$i;->b:Le/a/i/b0/c/c/b;

    .line 22
    iget-object v2, v2, Le/a/i/b0/c/c/b;->c:Ln3/c0/c0;

    .line 23
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 24
    throw v1
.end method
