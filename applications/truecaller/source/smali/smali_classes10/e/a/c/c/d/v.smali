.class public final Le/a/c/c/d/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/d/u;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/c/r/f/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/c0/g;

.field public final d:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/c/c0/g;

    invoke-direct {v0}, Le/a/c/c0/g;-><init>()V

    iput-object v0, p0, Le/a/c/c/d/v;->c:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/v;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/c/c/d/v$c;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/v$c;-><init>(Le/a/c/c/d/v;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/v;->b:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/c/c/d/v$d;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/v$d;-><init>(Le/a/c/c/d/v;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/v;->d:Ln3/c0/c0;

    .line 6
    new-instance v0, Le/a/c/c/d/v$e;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/v$e;-><init>(Le/a/c/c/d/v;Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public b(JLcom/truecaller/insights/models/feedback/FeedbackType;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/truecaller/insights/models/feedback/FeedbackType;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n        SELECT COUNT(*) \n        FROM feedback\n        WHERE entity_id = ?\n        AND feedback_type = ?\n        "

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 3
    iget-object p1, p0, Le/a/c/c/d/v;->c:Le/a/c/c0/g;

    invoke-virtual {p1, p3}, Le/a/c/c0/g;->b(Lcom/truecaller/insights/models/feedback/FeedbackType;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 6
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 7
    iget-object p2, p0, Le/a/c/c/d/v;->a:Ln3/c0/q;

    const/4 p3, 0x0

    new-instance v1, Le/a/c/c/d/v$b;

    invoke-direct {v1, p0, v0}, Le/a/c/c/d/v$b;-><init>(Le/a/c/c/d/v;Ln3/c0/y;)V

    invoke-static {p2, p3, p1, v1, p4}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(JLcom/truecaller/insights/models/feedback/FeedbackType;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/truecaller/insights/models/feedback/FeedbackType;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/r/f/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n        SELECT * \n        FROM feedback \n        WHERE parent_id = ?\n        AND feedback_type = ?\n    "

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 3
    iget-object p1, p0, Le/a/c/c/d/v;->c:Le/a/c/c0/g;

    invoke-virtual {p1, p3}, Le/a/c/c0/g;->b(Lcom/truecaller/insights/models/feedback/FeedbackType;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 6
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 7
    iget-object p2, p0, Le/a/c/c/d/v;->a:Ln3/c0/q;

    const/4 p3, 0x0

    new-instance v1, Le/a/c/c/d/v$a;

    invoke-direct {v1, p0, v0}, Le/a/c/c/d/v$a;-><init>(Le/a/c/c/d/v;Ln3/c0/y;)V

    invoke-static {p2, p3, p1, v1, p4}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(JLjava/lang/String;Lcom/truecaller/insights/models/feedback/FeedbackType;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/models/feedback/FeedbackType;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/v;->a:Ln3/c0/q;

    new-instance v7, Le/a/c/c/d/v$g;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Le/a/c/c/d/v$g;-><init>(Le/a/c/c/d/v;Ljava/lang/String;JLcom/truecaller/insights/models/feedback/FeedbackType;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v7, p5}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Le/a/c/r/f/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/r/f/a;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/v;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/v$f;

    invoke-direct {v1, p0, p1}, Le/a/c/c/d/v$f;-><init>(Le/a/c/c/d/v;Le/a/c/r/f/a;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/util/List;Ljava/util/List;)Lq3/a/x2/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/feedback/FeedbackType;",
            ">;)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/r/f/a;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "        SELECT * "

    const-string v2, "        FROM feedback "

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        WHERE entity_id IN ("

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 4
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "        AND feedback_type IN ("

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 9
    invoke-static {v1, v4}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    "

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v2, 0x0

    add-int/2addr v1, v4

    .line 14
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_0

    .line 16
    invoke-virtual {v0, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Ln3/c0/y;->l0(IJ)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v1

    .line 18
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/insights/models/feedback/FeedbackType;

    .line 19
    iget-object v1, p0, Le/a/c/c/d/v;->c:Le/a/c/c0/g;

    invoke-virtual {v1, p2}, Le/a/c/c0/g;->b(Lcom/truecaller/insights/models/feedback/FeedbackType;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 20
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_3

    .line 21
    :cond_2
    invoke-virtual {v0, v2, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    :cond_3
    iget-object p1, p0, Le/a/c/c/d/v;->a:Ln3/c0/q;

    const-string p2, "feedback"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v1, Le/a/c/c/d/v$i;

    invoke-direct {v1, p0, v0}, Le/a/c/c/d/v$i;-><init>(Le/a/c/c/d/v;Ln3/c0/y;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v1}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/feedback/FeedbackType;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/r/f/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "        SELECT * "

    const-string v2, "        FROM feedback "

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        WHERE entity_id IN ("

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 4
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "        AND feedback_type IN ("

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 9
    invoke-static {v1, v4}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    "

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v2, 0x0

    add-int/2addr v1, v4

    .line 14
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_0

    .line 16
    invoke-virtual {v0, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Ln3/c0/y;->l0(IJ)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v1

    .line 18
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/insights/models/feedback/FeedbackType;

    .line 19
    iget-object v1, p0, Le/a/c/c/d/v;->c:Le/a/c/c0/g;

    invoke-virtual {v1, p2}, Le/a/c/c0/g;->b(Lcom/truecaller/insights/models/feedback/FeedbackType;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 20
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_3

    .line 21
    :cond_2
    invoke-virtual {v0, v2, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    :cond_3
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 23
    iget-object p2, p0, Le/a/c/c/d/v;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/v$h;

    invoke-direct {v1, p0, v0}, Le/a/c/c/d/v$h;-><init>(Le/a/c/c/d/v;Ln3/c0/y;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
