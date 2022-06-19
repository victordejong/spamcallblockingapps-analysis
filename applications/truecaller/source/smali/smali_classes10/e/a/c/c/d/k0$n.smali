.class public Le/a/c/c/d/k0$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/k0;->n(Ljava/lang/String;JLcom/truecaller/insights/models/pdo/ClassifierType;Ls1/w/d;)Ljava/lang/Object;
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

.field public final synthetic b:Lcom/truecaller/insights/models/pdo/ClassifierType;

.field public final synthetic c:J

.field public final synthetic d:Le/a/c/c/d/k0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/k0;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/k0$n;->d:Le/a/c/c/d/k0;

    iput-object p2, p0, Le/a/c/c/d/k0$n;->a:Ljava/lang/String;

    iput-object p3, p0, Le/a/c/c/d/k0$n;->b:Lcom/truecaller/insights/models/pdo/ClassifierType;

    iput-wide p4, p0, Le/a/c/c/d/k0$n;->c:J

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
    iget-object v0, p0, Le/a/c/c/d/k0$n;->d:Le/a/c/c/d/k0;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/k0;->b:Ln3/c0/c0;

    .line 3
    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Le/a/c/c/d/k0$n;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x2

    .line 7
    iget-object v2, p0, Le/a/c/c/d/k0$n;->d:Le/a/c/c/d/k0;

    .line 8
    iget-object v2, v2, Le/a/c/c/d/k0;->c:Le/a/c/c0/g;

    .line 9
    iget-object v3, p0, Le/a/c/c/d/k0$n;->b:Lcom/truecaller/insights/models/pdo/ClassifierType;

    .line 10
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "classifierType"

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Lcom/truecaller/insights/models/pdo/ClassifierType;->getValue()I

    move-result v2

    int-to-long v2, v2

    .line 12
    invoke-interface {v0, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    const/4 v1, 0x3

    .line 13
    iget-wide v2, p0, Le/a/c/c/d/k0$n;->c:J

    invoke-interface {v0, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 14
    iget-object v1, p0, Le/a/c/c/d/k0$n;->d:Le/a/c/c/d/k0;

    .line 15
    iget-object v1, v1, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    .line 16
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 17
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 18
    iget-object v1, p0, Le/a/c/c/d/k0$n;->d:Le/a/c/c/d/k0;

    .line 19
    iget-object v1, v1, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    .line 20
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V

    .line 21
    sget-object v1, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v2, p0, Le/a/c/c/d/k0$n;->d:Le/a/c/c/d/k0;

    .line 23
    iget-object v2, v2, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    .line 24
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 25
    iget-object v2, p0, Le/a/c/c/d/k0$n;->d:Le/a/c/c/d/k0;

    .line 26
    iget-object v2, v2, Le/a/c/c/d/k0;->b:Ln3/c0/c0;

    .line 27
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 28
    iget-object v2, p0, Le/a/c/c/d/k0$n;->d:Le/a/c/c/d/k0;

    .line 29
    iget-object v2, v2, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    .line 30
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 31
    iget-object v2, p0, Le/a/c/c/d/k0$n;->d:Le/a/c/c/d/k0;

    .line 32
    iget-object v2, v2, Le/a/c/c/d/k0;->b:Ln3/c0/c0;

    .line 33
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 34
    throw v1
.end method
