.class public Le/a/c/c/d/g0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/g0;->c(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
.field public final synthetic a:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/truecaller/insights/source/SourceType;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Le/a/c/c/d/g0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/g0;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/g0$h;->f:Le/a/c/c/d/g0;

    iput-object p2, p0, Le/a/c/c/d/g0$h;->a:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    iput-object p3, p0, Le/a/c/c/d/g0$h;->b:Ljava/lang/String;

    iput-object p4, p0, Le/a/c/c/d/g0$h;->c:Ljava/lang/String;

    iput-object p5, p0, Le/a/c/c/d/g0$h;->d:Lcom/truecaller/insights/source/SourceType;

    iput-object p6, p0, Le/a/c/c/d/g0$h;->e:Ljava/lang/String;

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
    iget-object v0, p0, Le/a/c/c/d/g0$h;->f:Le/a/c/c/d/g0;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/g0;->d:Ln3/c0/c0;

    .line 3
    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Le/a/c/c/d/g0$h;->f:Le/a/c/c/d/g0;

    .line 5
    iget-object v2, v2, Le/a/c/c/d/g0;->c:Le/a/c/c0/g;

    .line 6
    iget-object v3, p0, Le/a/c/c/d/g0$h;->a:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    invoke-virtual {v2, v3}, Le/a/c/c0/g;->f(Lcom/truecaller/insights/source/SmartSMSFeatureStatus;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x2

    .line 9
    iget-object v2, p0, Le/a/c/c/d/g0$h;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 10
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_1
    const/4 v1, 0x3

    .line 12
    iget-object v2, p0, Le/a/c/c/d/g0$h;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 13
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_2
    const/4 v1, 0x4

    .line 15
    iget-object v2, p0, Le/a/c/c/d/g0$h;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 16
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 17
    :cond_3
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_3
    const/4 v1, 0x5

    .line 18
    iget-object v2, p0, Le/a/c/c/d/g0$h;->f:Le/a/c/c/d/g0;

    .line 19
    iget-object v2, v2, Le/a/c/c/d/g0;->c:Le/a/c/c0/g;

    .line 20
    iget-object v3, p0, Le/a/c/c/d/g0$h;->d:Lcom/truecaller/insights/source/SourceType;

    invoke-virtual {v2, v3}, Le/a/c/c0/g;->g(Lcom/truecaller/insights/source/SourceType;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 21
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 22
    :cond_4
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_4
    const/4 v1, 0x6

    .line 23
    iget-object v2, p0, Le/a/c/c/d/g0$h;->e:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 24
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_5

    .line 25
    :cond_5
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_5
    const/4 v1, 0x7

    .line 26
    iget-object v2, p0, Le/a/c/c/d/g0$h;->e:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 27
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_6

    .line 28
    :cond_6
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 29
    :goto_6
    iget-object v1, p0, Le/a/c/c/d/g0$h;->f:Le/a/c/c/d/g0;

    .line 30
    iget-object v1, v1, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    .line 31
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 32
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 33
    iget-object v1, p0, Le/a/c/c/d/g0$h;->f:Le/a/c/c/d/g0;

    .line 34
    iget-object v1, v1, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    .line 35
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V

    .line 36
    sget-object v1, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object v2, p0, Le/a/c/c/d/g0$h;->f:Le/a/c/c/d/g0;

    .line 38
    iget-object v2, v2, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    .line 39
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 40
    iget-object v2, p0, Le/a/c/c/d/g0$h;->f:Le/a/c/c/d/g0;

    .line 41
    iget-object v2, v2, Le/a/c/c/d/g0;->d:Ln3/c0/c0;

    .line 42
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 43
    iget-object v2, p0, Le/a/c/c/d/g0$h;->f:Le/a/c/c/d/g0;

    .line 44
    iget-object v2, v2, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    .line 45
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 46
    iget-object v2, p0, Le/a/c/c/d/g0$h;->f:Le/a/c/c/d/g0;

    .line 47
    iget-object v2, v2, Le/a/c/c/d/g0;->d:Ln3/c0/c0;

    .line 48
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 49
    throw v1
.end method
