.class public Le/a/c/c/d/v$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/v;->d(JLjava/lang/String;Lcom/truecaller/insights/models/feedback/FeedbackType;Ls1/w/d;)Ljava/lang/Object;
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

.field public final synthetic b:J

.field public final synthetic c:Lcom/truecaller/insights/models/feedback/FeedbackType;

.field public final synthetic d:Le/a/c/c/d/v;


# direct methods
.method public constructor <init>(Le/a/c/c/d/v;Ljava/lang/String;JLcom/truecaller/insights/models/feedback/FeedbackType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/v$g;->d:Le/a/c/c/d/v;

    iput-object p2, p0, Le/a/c/c/d/v$g;->a:Ljava/lang/String;

    iput-wide p3, p0, Le/a/c/c/d/v$g;->b:J

    iput-object p5, p0, Le/a/c/c/d/v$g;->c:Lcom/truecaller/insights/models/feedback/FeedbackType;

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
    iget-object v0, p0, Le/a/c/c/d/v$g;->d:Le/a/c/c/d/v;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/v;->d:Ln3/c0/c0;

    .line 3
    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Le/a/c/c/d/v$g;->a:Ljava/lang/String;

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
    iget-wide v2, p0, Le/a/c/c/d/v$g;->b:J

    invoke-interface {v0, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    const/4 v1, 0x3

    .line 8
    iget-object v2, p0, Le/a/c/c/d/v$g;->d:Le/a/c/c/d/v;

    .line 9
    iget-object v2, v2, Le/a/c/c/d/v;->c:Le/a/c/c0/g;

    .line 10
    iget-object v3, p0, Le/a/c/c/d/v$g;->c:Lcom/truecaller/insights/models/feedback/FeedbackType;

    invoke-virtual {v2, v3}, Le/a/c/c0/g;->b(Lcom/truecaller/insights/models/feedback/FeedbackType;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 11
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 13
    :goto_1
    iget-object v1, p0, Le/a/c/c/d/v$g;->d:Le/a/c/c/d/v;

    .line 14
    iget-object v1, v1, Le/a/c/c/d/v;->a:Ln3/c0/q;

    .line 15
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 16
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 17
    iget-object v1, p0, Le/a/c/c/d/v$g;->d:Le/a/c/c/d/v;

    .line 18
    iget-object v1, v1, Le/a/c/c/d/v;->a:Ln3/c0/q;

    .line 19
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V

    .line 20
    sget-object v1, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v2, p0, Le/a/c/c/d/v$g;->d:Le/a/c/c/d/v;

    .line 22
    iget-object v2, v2, Le/a/c/c/d/v;->a:Ln3/c0/q;

    .line 23
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 24
    iget-object v2, p0, Le/a/c/c/d/v$g;->d:Le/a/c/c/d/v;

    .line 25
    iget-object v2, v2, Le/a/c/c/d/v;->d:Ln3/c0/c0;

    .line 26
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 27
    iget-object v2, p0, Le/a/c/c/d/v$g;->d:Le/a/c/c/d/v;

    .line 28
    iget-object v2, v2, Le/a/c/c/d/v;->a:Ln3/c0/q;

    .line 29
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 30
    iget-object v2, p0, Le/a/c/c/d/v$g;->d:Le/a/c/c/d/v;

    .line 31
    iget-object v2, v2, Le/a/c/c/d/v;->d:Ln3/c0/c0;

    .line 32
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 33
    throw v1
.end method
