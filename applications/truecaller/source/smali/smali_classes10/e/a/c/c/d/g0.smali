.class public final Le/a/c/c/d/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/d/f0;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/c/r/i/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/c0/g;

.field public final d:Ln3/c0/c0;

.field public final e:Ln3/c0/c0;

.field public final f:Ln3/c0/c0;

.field public final g:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/c/c0/g;

    invoke-direct {v0}, Le/a/c/c0/g;-><init>()V

    iput-object v0, p0, Le/a/c/c/d/g0;->c:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/c/c/d/g0$b;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/g0$b;-><init>(Le/a/c/c/d/g0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/g0;->b:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/c/c/d/g0$c;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/g0$c;-><init>(Le/a/c/c/d/g0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/g0;->d:Ln3/c0/c0;

    .line 6
    new-instance v0, Le/a/c/c/d/g0$d;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/g0$d;-><init>(Le/a/c/c/d/g0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/g0;->e:Ln3/c0/c0;

    .line 7
    new-instance v0, Le/a/c/c/d/g0$e;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/g0$e;-><init>(Le/a/c/c/d/g0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/g0;->f:Ln3/c0/c0;

    .line 8
    new-instance v0, Le/a/c/c/d/g0$f;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/g0$f;-><init>(Le/a/c/c/d/g0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/g0;->g:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lq3/a/x2/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/r/i/a;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n            SELECT * FROM sender_info WHERE sender LIKE \'%\' || ? || \'%\'\n        "

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    const/4 v1, 0x0

    const-string v2, "sender_info"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/a/c/c/d/g0$a;

    invoke-direct {v3, p0, v0}, Le/a/c/c/d/g0$a;-><init>(Le/a/c/c/d/g0;Ln3/c0/y;)V

    invoke-static {p1, v1, v2, v3}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public b(Le/a/c/r/i/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/r/i/a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/g0$g;

    invoke-direct {v1, p0, p1}, Le/a/c/c/d/g0$g;-><init>(Le/a/c/c/d/g0;Le/a/c/r/i/a;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/source/SmartSMSFeatureStatus;",
            "Lcom/truecaller/insights/source/SourceType;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    new-instance v8, Le/a/c/c/d/g0$h;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Le/a/c/c/d/g0$h;-><init>(Le/a/c/c/d/g0;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v8, p6}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/truecaller/insights/source/SourceType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        DELETE FROM sender_info "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        WHERE sender NOT IN ("

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 8
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ") AND "

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        source_type = "

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    const-string v5, "        (country_code = "

    .line 13
    invoke-static {v0, v4, v1, v5, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, " OR"

    const-string v5, "            (country_code IS NULL AND "

    .line 14
    invoke-static {v0, v4, v1, v5, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, " is NULL))"

    const-string v4, "    "

    .line 15
    invoke-static {v0, v3, v1, v4}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v1, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 18
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 19
    :cond_0
    invoke-interface {v0, v1, v3}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v2, 0x1

    .line 20
    iget-object v1, p0, Le/a/c/c/d/g0;->c:Le/a/c/c0/g;

    invoke-virtual {v1, p2}, Le/a/c/c0/g;->g(Lcom/truecaller/insights/source/SourceType;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 21
    invoke-interface {v0, p1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 22
    :cond_2
    invoke-interface {v0, p1, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 p1, v2, 0x2

    if-nez p3, :cond_3

    .line 23
    invoke-interface {v0, p1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 24
    :cond_3
    invoke-interface {v0, p1, p3}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x3

    if-nez p3, :cond_4

    .line 25
    invoke-interface {v0, v2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 26
    :cond_4
    invoke-interface {v0, v2, p3}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 27
    :goto_4
    iget-object p1, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 28
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 29
    iget-object p1, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object p1, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 31
    throw p1
.end method

.method public e(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/g0;->f:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/c/c/d/g0;->c:Le/a/c/c0/g;

    invoke-virtual {v1, p2}, Le/a/c/c0/g;->f(Lcom/truecaller/insights/source/SmartSMSFeatureStatus;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v1, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    .line 6
    invoke-interface {v0, p2, p1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 7
    iget-object p2, p0, Le/a/c/c/d/g0;->c:Le/a/c/c0/g;

    invoke-virtual {p2, p3}, Le/a/c/c0/g;->g(Lcom/truecaller/insights/source/SourceType;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 8
    invoke-interface {v0, p1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v0, p1, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x4

    if-nez p4, :cond_2

    .line 10
    invoke-interface {v0, p1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {v0, p1, p4}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_2
    const/4 p1, 0x5

    if-nez p4, :cond_3

    .line 12
    invoke-interface {v0, p1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-interface {v0, p1, p4}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 14
    :goto_3
    iget-object p1, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 15
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 16
    iget-object p1, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object p1, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    .line 18
    iget-object p1, p0, Le/a/c/c/d/g0;->f:Ln3/c0/c0;

    invoke-virtual {p1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    iget-object p2, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 20
    iget-object p2, p0, Le/a/c/c/d/g0;->f:Ln3/c0/c0;

    invoke-virtual {p2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 21
    throw p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/source/SmartSMSFeatureStatus;",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/source/SourceType;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v8, p0

    .line 1
    iget-object v9, v8, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    new-instance v10, Le/a/c/c/d/g0$i;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Le/a/c/c/d/g0$i;-><init>(Le/a/c/c/d/g0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V

    const/4 v0, 0x1

    move-object/from16 v1, p7

    invoke-static {v9, v0, v10, v1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/r/i/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n        SELECT * FROM sender_info WHERE sender = ? AND \n        (country_code = ? OR\n            (country_code IS NULL AND ? is NULL))\n    "

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    const/4 p1, 0x2

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, v1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 7
    :goto_1
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 8
    iget-object p2, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    const/4 v1, 0x0

    new-instance v2, Le/a/c/c/d/g0$j;

    invoke-direct {v2, p0, v0}, Le/a/c/c/d/g0$j;-><init>(Le/a/c/c/d/g0;Ln3/c0/y;)V

    invoke-static {p2, v1, p1, v2, p3}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/g0;->g:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p3}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    const/4 p3, 0x2

    .line 4
    invoke-interface {v0, p3, p1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 5
    iget-object p3, p0, Le/a/c/c/d/g0;->c:Le/a/c/c0/g;

    invoke-virtual {p3, p2}, Le/a/c/c0/g;->f(Lcom/truecaller/insights/source/SmartSMSFeatureStatus;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    invoke-interface {v0, p1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0, p1, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x4

    .line 8
    iget-object p2, p0, Le/a/c/c/d/g0;->c:Le/a/c/c0/g;

    invoke-virtual {p2, p4}, Le/a/c/c0/g;->g(Lcom/truecaller/insights/source/SourceType;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 9
    invoke-interface {v0, p1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {v0, p1, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x5

    if-nez p5, :cond_2

    .line 11
    invoke-interface {v0, p1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {v0, p1, p5}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_2
    const/4 p1, 0x6

    if-nez p5, :cond_3

    .line 13
    invoke-interface {v0, p1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 14
    :cond_3
    invoke-interface {v0, p1, p5}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 15
    :goto_3
    iget-object p1, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 16
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 17
    iget-object p1, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p1, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    .line 19
    iget-object p1, p0, Le/a/c/c/d/g0;->g:Ln3/c0/c0;

    invoke-virtual {p1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 20
    iget-object p2, p0, Le/a/c/c/d/g0;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 21
    iget-object p2, p0, Le/a/c/c/d/g0;->g:Ln3/c0/c0;

    invoke-virtual {p2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 22
    throw p1
.end method
