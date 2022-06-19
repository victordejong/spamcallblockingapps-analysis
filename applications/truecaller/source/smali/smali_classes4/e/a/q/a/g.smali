.class public final Le/a/q/a/g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contactfeedback.presentation.ContactFeedbackPresenter$onSavePressed$1"
    f = "ContactFeedbackPresenter.kt"
    l = {
        0x24
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/q/a/h;

.field public final synthetic g:J

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:I


# direct methods
.method public constructor <init>(Le/a/q/a/h;JLjava/lang/String;Ljava/lang/String;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q/a/g;->f:Le/a/q/a/h;

    iput-wide p2, p0, Le/a/q/a/g;->g:J

    iput-object p4, p0, Le/a/q/a/g;->h:Ljava/lang/String;

    iput-object p5, p0, Le/a/q/a/g;->i:Ljava/lang/String;

    iput p6, p0, Le/a/q/a/g;->j:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q/a/g;

    iget-object v1, p0, Le/a/q/a/g;->f:Le/a/q/a/h;

    iget-wide v2, p0, Le/a/q/a/g;->g:J

    iget-object v4, p0, Le/a/q/a/g;->h:Ljava/lang/String;

    iget-object v5, p0, Le/a/q/a/g;->i:Ljava/lang/String;

    iget v6, p0, Le/a/q/a/g;->j:I

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Le/a/q/a/g;-><init>(Le/a/q/a/h;JLjava/lang/String;Ljava/lang/String;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/q/a/g;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/q/a/g;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q/a/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/q/a/g;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/q/a/g;->f:Le/a/q/a/h;

    .line 5
    iget-object p1, p1, Le/a/q/a/h;->f:Ls1/w/f;

    .line 6
    new-instance v2, Le/a/q/a/g$a;

    invoke-direct {v2, p0, v3}, Le/a/q/a/g$a;-><init>(Le/a/q/a/g;Ls1/w/d;)V

    iput v4, p0, Le/a/q/a/g;->e:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    if-nez p1, :cond_4

    .line 8
    iget-object p1, p0, Le/a/q/a/g;->f:Le/a/q/a/h;

    .line 9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/q/a/f;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1, v3}, Le/a/q/a/f;->Bt(Lcom/truecaller/data/entity/Contact;)V

    :cond_3
    return-object v0

    .line 11
    :cond_4
    iget-object v1, p0, Le/a/q/a/g;->f:Le/a/q/a/h;

    .line 12
    iget-object v1, v1, Le/a/q/a/h;->i:Le/a/q/e/a;

    .line 13
    iget-object v2, p0, Le/a/q/a/g;->h:Ljava/lang/String;

    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "contactFeedbackContext"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v3, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->SAVE_SUGGESTED_NAME:Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    invoke-virtual {v1, v2, v3}, Le/a/q/e/a;->a(Ljava/lang/String;Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;)V

    .line 16
    iget-object v1, p0, Le/a/q/a/g;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_a

    iget-object v1, p0, Le/a/q/a/g;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    iget-object v1, p0, Le/a/q/a/g;->f:Le/a/q/a/h;

    .line 18
    iput-boolean v4, v1, Le/a/q/a/h;->d:Z

    .line 19
    iget-object v1, v1, Le/a/q/a/h;->j:Le/a/q/c;

    .line 20
    iget-wide v7, p0, Le/a/q/a/g;->g:J

    const/4 v9, 0x0

    .line 21
    iget-object v10, p0, Le/a/q/a/g;->i:Ljava/lang/String;

    .line 22
    iget v11, p0, Le/a/q/a/g;->j:I

    .line 23
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v12

    .line 24
    move-object v5, v1

    check-cast v5, Le/a/q/d;

    move-object v6, p1

    invoke-virtual/range {v5 .. v12}, Le/a/q/d;->a(Lcom/truecaller/data/entity/Contact;JZLjava/lang/String;ILjava/lang/String;)V

    .line 25
    iget-object v1, p0, Le/a/q/a/g;->f:Le/a/q/a/h;

    .line 26
    iget-object v2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/q/a/f;

    if-eqz v2, :cond_9

    .line 27
    iget-object v3, p0, Le/a/q/a/g;->i:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Le/a/k3/j/b;->o(Lcom/truecaller/data/entity/Contact;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 29
    iget-object v4, v1, Le/a/q/a/h;->g:Le/a/k3/j/b;

    invoke-virtual {v4, p1}, Le/a/k3/j/b;->n(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object p1, v4

    .line 30
    :cond_7
    iget-object v1, v1, Le/a/q/a/h;->h:Le/a/k3/j/i;

    invoke-virtual {v1, p1, v3}, Le/a/k3/j/i;->d(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object p1, v1

    .line 31
    :cond_8
    invoke-interface {v2, p1}, Le/a/q/a/f;->Bt(Lcom/truecaller/data/entity/Contact;)V

    :cond_9
    return-object v0

    .line 32
    :cond_a
    :goto_2
    iget-object p1, p0, Le/a/q/a/g;->f:Le/a/q/a/h;

    .line 33
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/q/a/f;

    if-eqz p1, :cond_b

    .line 34
    invoke-interface {p1}, Le/a/q/a/f;->lu()V

    :cond_b
    return-object v0
.end method
