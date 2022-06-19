.class public final Le/a/b/q/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/q/c;


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/q/d;->b:Le/a/u3/g;

    iput-object p2, p0, Le/a/b/q/d;->c:Le/a/p5/c0;

    .line 2
    sget-object p1, Le/a/b/q/d$a;->b:Le/a/b/q/d$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b/q/d;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/b/q/d;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/e/k;

    .line 2
    iget-object v1, p0, Le/a/b/q/d;->b:Le/a/u3/g;

    .line 3
    iget-object v2, v1, Le/a/u3/g;->U4:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x138

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    check-cast v1, Le/a/u3/i;

    .line 4
    invoke-interface {v1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;

    invoke-virtual {v0, v1, v2}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gson.fromJson(featuresRe\u2026backQuestion::class.java)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 6
    new-instance v0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;

    .line 7
    iget-object v1, p0, Le/a/b/q/d;->c:Le/a/p5/c0;

    sget v2, Lcom/truecaller/bizmon/R$integer;->default_verified_feedback_question_id:I

    invoke-interface {v1, v2}, Le/a/p5/c0;->h(I)I

    move-result v1

    .line 8
    iget-object v2, p0, Le/a/b/q/d;->c:Le/a/p5/c0;

    sget v3, Lcom/truecaller/bizmon/R$string;->default_verified_feedback_question:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026rified_feedback_question)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public b(ILcom/truecaller/data/entity/Contact;)Z
    .locals 4

    const-string v0, "contact"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/q/d;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->Q4:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x134

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_5
    :goto_1
    return v1
.end method
