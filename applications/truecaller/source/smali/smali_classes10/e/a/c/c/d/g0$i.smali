.class public Le/a/c/c/d/g0$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/g0;->f(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

.field public final synthetic e:Lcom/truecaller/insights/source/SourceType;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Le/a/c/c/d/g0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/g0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/g0$i;->g:Le/a/c/c/d/g0;

    iput-object p2, p0, Le/a/c/c/d/g0$i;->a:Ljava/lang/String;

    iput-object p3, p0, Le/a/c/c/d/g0$i;->b:Ljava/lang/String;

    iput-object p4, p0, Le/a/c/c/d/g0$i;->c:Ljava/lang/String;

    iput-object p5, p0, Le/a/c/c/d/g0$i;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    iput-object p6, p0, Le/a/c/c/d/g0$i;->e:Lcom/truecaller/insights/source/SourceType;

    iput-object p7, p0, Le/a/c/c/d/g0$i;->f:Ljava/lang/String;

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
    iget-object v0, p0, Le/a/c/c/d/g0$i;->g:Le/a/c/c/d/g0;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/g0;->e:Ln3/c0/c0;

    .line 3
    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Le/a/c/c/d/g0$i;->a:Ljava/lang/String;

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
    iget-object v2, p0, Le/a/c/c/d/g0$i;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 8
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_1
    const/4 v1, 0x3

    .line 10
    iget-object v2, p0, Le/a/c/c/d/g0$i;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 11
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_2
    const/4 v1, 0x4

    .line 13
    iget-object v2, p0, Le/a/c/c/d/g0$i;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 14
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_3
    const/4 v1, 0x5

    .line 16
    iget-object v2, p0, Le/a/c/c/d/g0$i;->g:Le/a/c/c/d/g0;

    .line 17
    iget-object v2, v2, Le/a/c/c/d/g0;->c:Le/a/c/c0/g;

    .line 18
    iget-object v3, p0, Le/a/c/c/d/g0$i;->d:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    invoke-virtual {v2, v3}, Le/a/c/c0/g;->f(Lcom/truecaller/insights/source/SmartSMSFeatureStatus;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 19
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 20
    :cond_4
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_4
    const/4 v1, 0x6

    .line 21
    iget-object v2, p0, Le/a/c/c/d/g0$i;->g:Le/a/c/c/d/g0;

    .line 22
    iget-object v2, v2, Le/a/c/c/d/g0;->c:Le/a/c/c0/g;

    .line 23
    iget-object v3, p0, Le/a/c/c/d/g0$i;->e:Lcom/truecaller/insights/source/SourceType;

    invoke-virtual {v2, v3}, Le/a/c/c0/g;->g(Lcom/truecaller/insights/source/SourceType;)Ljava/lang/String;

    move-result-object v2

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
    iget-object v2, p0, Le/a/c/c/d/g0$i;->f:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 27
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_6

    .line 28
    :cond_6
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_6
    const/16 v1, 0x8

    .line 29
    iget-object v2, p0, Le/a/c/c/d/g0$i;->f:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 30
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_7

    .line 31
    :cond_7
    invoke-interface {v0, v1, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 32
    :goto_7
    iget-object v1, p0, Le/a/c/c/d/g0$i;->g:Le/a/c/c/d/g0;

    .line 33
    iget-object v1, v1, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    .line 34
    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 35
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 36
    iget-object v1, p0, Le/a/c/c/d/g0$i;->g:Le/a/c/c/d/g0;

    .line 37
    iget-object v1, v1, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    .line 38
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V

    .line 39
    sget-object v1, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v2, p0, Le/a/c/c/d/g0$i;->g:Le/a/c/c/d/g0;

    .line 41
    iget-object v2, v2, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    .line 42
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 43
    iget-object v2, p0, Le/a/c/c/d/g0$i;->g:Le/a/c/c/d/g0;

    .line 44
    iget-object v2, v2, Le/a/c/c/d/g0;->e:Ln3/c0/c0;

    .line 45
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 46
    iget-object v2, p0, Le/a/c/c/d/g0$i;->g:Le/a/c/c/d/g0;

    .line 47
    iget-object v2, v2, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    .line 48
    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 49
    iget-object v2, p0, Le/a/c/c/d/g0$i;->g:Le/a/c/c/d/g0;

    .line 50
    iget-object v2, v2, Le/a/c/c/d/g0;->e:Ln3/c0/c0;

    .line 51
    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 52
    throw v1
.end method
