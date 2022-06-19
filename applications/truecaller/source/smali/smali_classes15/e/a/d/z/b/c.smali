.class public final Le/a/d/z/b/c;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/z/b/b;",
        ">;",
        "Le/a/d/z/b/a;"
    }
.end annotation


# instance fields
.field public d:Lq3/a/p1;

.field public final e:Ls1/w/f;

.field public final f:Le/a/d/v/d;

.field public final g:Le/a/d/w/d;

.field public final h:Le/a/p5/c0;

.field public final i:Le/a/d/c0/f0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/v/d;Le/a/d/w/d;Le/a/p5/c0;Le/a/d/c0/f0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCallManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invitationManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/d/z/b/c;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/d/z/b/c;->f:Le/a/d/v/d;

    iput-object p3, p0, Le/a/d/z/b/c;->g:Le/a/d/w/d;

    iput-object p4, p0, Le/a/d/z/b/c;->h:Le/a/p5/c0;

    iput-object p5, p0, Le/a/d/z/b/c;->i:Le/a/d/c0/f0;

    return-void
.end method

.method public static final Ij(Le/a/d/z/b/c;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object p0, p0, Le/a/d/z/b/c;->h:Le/a/p5/c0;

    .line 2
    sget v0, Lcom/truecaller/voip/R$string;->voip_truecaller_audio_call:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    sget v2, Lcom/truecaller/voip/R$string;->voip_text:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p0, v2, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 4
    invoke-interface {p0, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "resourceProvider.getStri\u2026ring.voip_text)\n        )"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final Jj(Le/a/d/z/b/c;I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Le/a/d/z/b/c;->h:Le/a/p5/c0;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resourceProvider.getString(res)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final Kj()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/d/z/b/c;->d:Lq3/a/p1;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    new-instance v4, Le/a/d/z/b/c$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/d/z/b/c$a;-><init>(Le/a/d/z/b/c;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, p0, Le/a/d/z/b/c;->d:Lq3/a/p1;

    .line 3
    new-instance v1, Le/a/d/z/b/c$b;

    invoke-direct {v1, p0}, Le/a/d/z/b/c$b;-><init>(Le/a/d/z/b/c;)V

    check-cast v0, Lq3/a/u1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    return-void
.end method

.method public final Lj()Le/a/d/v/b;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/z/b/c;->f:Le/a/d/v/d;

    invoke-interface {v0}, Le/a/d/v/d;->getState()Lq3/a/x2/i1;

    move-result-object v0

    invoke-interface {v0}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/v/f;

    .line 2
    instance-of v1, v0, Le/a/d/v/f$a;

    if-eqz v1, :cond_0

    check-cast v0, Le/a/d/v/f$a;

    .line 3
    iget-object v0, v0, Le/a/d/v/f$a;->a:Le/a/d/v/b;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/z/b/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/d/z/b/b;->t()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final Mj(Ljava/util/Set;Lcom/truecaller/voip/VoipCallOptions;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/truecaller/voip/VoipCallOptions;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p3, Le/a/d/z/b/c$c;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/d/z/b/c$c;

    iget v2, v1, Le/a/d/z/b/c$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/z/b/c$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/z/b/c$c;

    invoke-direct {v1, p0, p3}, Le/a/d/z/b/c$c;-><init>(Le/a/d/z/b/c;Ls1/w/d;)V

    :goto_0
    iget-object p3, v1, Le/a/d/z/b/c$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/z/b/c$c;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Le/a/d/z/b/c$c;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iget-object p2, v1, Le/a/d/z/b/c$c;->g:Ljava/lang/Object;

    check-cast p2, Le/a/d/z/b/c;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/d/z/b/c;->g:Le/a/d/w/d;

    invoke-interface {p3}, Le/a/d/w/d;->getState()Lq3/a/x2/i1;

    move-result-object p3

    invoke-interface {p3}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Le/a/d/w/g$a;

    if-eqz p3, :cond_4

    .line 5
    invoke-virtual {p0}, Le/a/d/z/b/c;->Pj()V

    return-object v0

    .line 6
    :cond_4
    invoke-virtual {p0}, Le/a/d/z/b/c;->Nj()Lq3/a/p1;

    .line 7
    iget-object p3, p0, Le/a/d/z/b/c;->f:Le/a/d/v/d;

    invoke-interface {p3, p1, p2}, Le/a/d/v/d;->c(Ljava/util/Set;Lcom/truecaller/voip/VoipCallOptions;)Lq3/a/n0;

    move-result-object p2

    iput-object p0, v1, Le/a/d/z/b/c$c;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/d/z/b/c$c;->h:Ljava/lang/Object;

    iput v5, v1, Le/a/d/z/b/c$c;->e:I

    invoke-interface {p2, v1}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_5

    return-object v2

    :cond_5
    move-object p2, p0

    .line 8
    :goto_1
    check-cast p3, Le/a/d/v/j;

    .line 9
    instance-of v3, p3, Le/a/d/v/j$f;

    if-eqz v3, :cond_6

    check-cast p3, Le/a/d/v/j$f;

    .line 10
    iget-object p1, p3, Le/a/d/v/j$f;->a:Le/a/d/v/b;

    const/4 p3, 0x0

    .line 11
    iput-object p3, v1, Le/a/d/z/b/c$c;->g:Ljava/lang/Object;

    iput-object p3, v1, Le/a/d/z/b/c$c;->h:Ljava/lang/Object;

    iput v4, v1, Le/a/d/z/b/c$c;->e:I

    invoke-virtual {p2, p1, v1}, Le/a/d/z/b/c;->Qj(Le/a/d/v/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_c

    return-object v2

    .line 12
    :cond_6
    instance-of v1, p3, Le/a/d/v/j$e;

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Le/a/d/z/b/c;->Pj()V

    goto :goto_2

    .line 13
    :cond_7
    instance-of v1, p3, Le/a/d/v/j$a;

    if-eqz v1, :cond_8

    iget-object p1, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/z/b/b;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Le/a/d/z/b/b;->d()V

    goto :goto_2

    .line 14
    :cond_8
    instance-of v1, p3, Le/a/d/v/j$b;

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Le/a/d/z/b/c;->Oj()V

    goto :goto_2

    .line 15
    :cond_9
    instance-of v1, p3, Le/a/d/v/j$c;

    if-eqz v1, :cond_a

    .line 16
    iget-object p1, p2, Le/a/d/z/b/c;->h:Le/a/p5/c0;

    sget p3, Lcom/truecaller/voip/R$string;->voip_check_connection:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, p3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "resourceProvider.getStri\u2026ng.voip_check_connection)"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/z/b/b;

    if-eqz p2, :cond_c

    invoke-interface {p2, p1}, Le/a/d/z/b/b;->M(Ljava/lang/String;)V

    goto :goto_2

    .line 18
    :cond_a
    instance-of p3, p3, Le/a/d/v/j$d;

    if-eqz p3, :cond_c

    .line 19
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p3

    if-le p3, v5, :cond_b

    .line 20
    invoke-virtual {p2}, Le/a/d/z/b/c;->Oj()V

    goto :goto_2

    .line 21
    :cond_b
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/z/b/b;

    if-eqz p2, :cond_c

    invoke-static {p1}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Le/a/d/z/b/b;->l(Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-object v0
.end method

.method public final Nj()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/z/b/c$d;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/z/b/c$d;-><init>(Le/a/d/z/b/c;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public final Oj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/z/b/c;->h:Le/a/p5/c0;

    sget v1, Lcom/truecaller/voip/R$string;->voip_group_error_initiating_outgoing_call:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026initiating_outgoing_call)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/z/b/b;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/d/z/b/b;->M(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final Pj()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/d/z/b/c;->h:Le/a/p5/c0;

    sget v1, Lcom/truecaller/voip/R$string;->voip_error_already_in_another_call:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/truecaller/voip/R$string;->voip_text:I

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v0, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026ring(R.string.voip_text))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/z/b/b;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/d/z/b/b;->M(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final Qj(Le/a/d/v/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/v/b;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/z/b/c$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/z/b/c$e;

    iget v1, v0, Le/a/d/z/b/c$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/z/b/c$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/z/b/c$e;

    invoke-direct {v0, p0, p2}, Le/a/d/z/b/c$e;-><init>(Le/a/d/z/b/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/z/b/c$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/z/b/c$e;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/z/b/c$e;->h:Ljava/lang/Object;

    check-cast p1, Le/a/d/v/b;

    iget-object v0, v0, Le/a/d/z/b/c$e;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/z/b/c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Le/a/d/v/b;->getState()Lq3/a/x2/i1;

    move-result-object p2

    new-instance v2, Le/a/d/z/b/c$f;

    invoke-direct {v2, v4}, Le/a/d/z/b/c$f;-><init>(Ls1/w/d;)V

    iput-object p0, v0, Le/a/d/z/b/c$e;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/z/b/c$e;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/d/z/b/c$e;->e:I

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->N0(Lq3/a/x2/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v8, Le/a/d/z/b/m;

    invoke-direct {v8, v0, p1, v4}, Le/a/d/z/b/m;-><init>(Le/a/d/z/b/c;Le/a/d/v/b;Ls1/w/d;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 7
    new-instance v8, Le/a/d/z/b/l;

    invoke-direct {v8, v0, p1, v4}, Le/a/d/z/b/l;-><init>(Le/a/d/z/b/c;Le/a/d/v/b;Ls1/w/d;)V

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 8
    new-instance v8, Le/a/d/z/b/j;

    invoke-direct {v8, v0, p1, v4}, Le/a/d/z/b/j;-><init>(Le/a/d/z/b/c;Le/a/d/v/b;Ls1/w/d;)V

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 9
    new-instance v8, Le/a/d/z/b/i;

    invoke-direct {v8, v0, p1, v4}, Le/a/d/z/b/i;-><init>(Le/a/d/z/b/c;Le/a/d/v/b;Ls1/w/d;)V

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 10
    new-instance v8, Le/a/d/z/b/h;

    invoke-direct {v8, v0, p1, v4}, Le/a/d/z/b/h;-><init>(Le/a/d/z/b/c;Le/a/d/v/b;Ls1/w/d;)V

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 11
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/d/z/b/b;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/d/z/b/b;->f()V

    .line 5
    new-instance v4, Le/a/d/z/b/k;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/d/z/b/k;-><init>(Le/a/d/z/b/c;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
