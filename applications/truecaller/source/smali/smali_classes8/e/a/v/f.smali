.class public final Le/a/v/f;
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
    c = "com.truecaller.details_view.DetailsViewHostPresenter$onStart$1"
    f = "DetailsViewHostPresenter.kt"
    l = {
        0x34,
        0x36,
        0x5c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/v/b;

.field public final synthetic i:Lcom/truecaller/data/entity/Contact;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/v/b;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    iput-object p2, p0, Le/a/v/f;->i:Lcom/truecaller/data/entity/Contact;

    iput-object p3, p0, Le/a/v/f;->j:Ljava/lang/String;

    iput-object p4, p0, Le/a/v/f;->k:Ljava/lang/String;

    iput-object p5, p0, Le/a/v/f;->l:Ljava/lang/String;

    iput-object p6, p0, Le/a/v/f;->m:Ljava/lang/String;

    iput-object p7, p0, Le/a/v/f;->n:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 9
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

    new-instance p1, Le/a/v/f;

    iget-object v1, p0, Le/a/v/f;->h:Le/a/v/b;

    iget-object v2, p0, Le/a/v/f;->i:Lcom/truecaller/data/entity/Contact;

    iget-object v3, p0, Le/a/v/f;->j:Ljava/lang/String;

    iget-object v4, p0, Le/a/v/f;->k:Ljava/lang/String;

    iget-object v5, p0, Le/a/v/f;->l:Ljava/lang/String;

    iget-object v6, p0, Le/a/v/f;->m:Ljava/lang/String;

    iget-object v7, p0, Le/a/v/f;->n:Ljava/lang/String;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Le/a/v/f;-><init>(Le/a/v/b;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/v/f;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/v/f;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/v/f;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v1, p0, Le/a/v/f;->f:Ljava/lang/Object;

    check-cast v1, Le/a/u3/b;

    iget-object v2, p0, Le/a/v/f;->e:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/data/entity/Contact;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/v/f;->i:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_6

    iget-object v2, p0, Le/a/v/f;->h:Le/a/v/b;

    iput v6, p0, Le/a/v/f;->g:I

    .line 5
    iget-object v5, v2, Le/a/v/b;->g:Ls1/w/f;

    new-instance v6, Le/a/v/e;

    invoke-direct {v6, v2, p1, v3}, Le/a/v/e;-><init>(Le/a/v/b;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    invoke-static {v5, v6, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 6
    :cond_4
    :goto_0
    move-object v3, p1

    check-cast v3, Lcom/truecaller/data/entity/Contact;

    if-eqz v3, :cond_5

    goto :goto_7

    :cond_5
    iget-object v3, p0, Le/a/v/f;->i:Lcom/truecaller/data/entity/Contact;

    goto :goto_7

    .line 7
    :cond_6
    iget-object p1, p0, Le/a/v/f;->j:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move p1, v2

    goto :goto_2

    :cond_8
    :goto_1
    move p1, v6

    :goto_2
    if-eqz p1, :cond_d

    iget-object p1, p0, Le/a/v/f;->k:Ljava/lang/String;

    if-eqz p1, :cond_a

    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move p1, v2

    goto :goto_4

    :cond_a
    :goto_3
    move p1, v6

    :goto_4
    if-eqz p1, :cond_d

    iget-object p1, p0, Le/a/v/f;->l:Ljava/lang/String;

    if-eqz p1, :cond_c

    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    move v6, v2

    :cond_c
    :goto_5
    if-nez v6, :cond_f

    .line 8
    :cond_d
    iget-object v7, p0, Le/a/v/f;->h:Le/a/v/b;

    iget-object v8, p0, Le/a/v/f;->j:Ljava/lang/String;

    iget-object v9, p0, Le/a/v/f;->k:Ljava/lang/String;

    iget-object v10, p0, Le/a/v/f;->m:Ljava/lang/String;

    iget-object v11, p0, Le/a/v/f;->l:Ljava/lang/String;

    iget-object v12, p0, Le/a/v/f;->n:Ljava/lang/String;

    iput v5, p0, Le/a/v/f;->g:I

    move-object v13, p0

    invoke-virtual/range {v7 .. v13}, Le/a/v/b;->Ij(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e

    return-object v1

    :cond_e
    :goto_6
    move-object v3, p1

    check-cast v3, Lcom/truecaller/data/entity/Contact;

    :cond_f
    :goto_7
    if-nez v3, :cond_12

    const-string p1, "Contact is null in new details view"

    .line 9
    invoke-static {p1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/h;

    if-eqz p1, :cond_10

    const v1, 0x7f1202d1

    .line 12
    invoke-interface {p1, v1}, Le/a/v/h;->h(I)V

    .line 13
    :cond_10
    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 14
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/h;

    if-eqz p1, :cond_11

    .line 15
    invoke-interface {p1}, Le/a/v/h;->t()V

    :cond_11
    return-object v0

    .line 16
    :cond_12
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 17
    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 18
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/h;

    if-eqz p1, :cond_13

    .line 19
    invoke-interface {p1}, Le/a/v/h;->z2()V

    :cond_13
    return-object v0

    .line 20
    :cond_14
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 21
    iget-object p1, p1, Le/a/v/b;->j:Le/a/u3/g;

    .line 22
    iget-object v2, p1, Le/a/u3/g;->d4:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x10b

    aget-object v5, v5, v6

    invoke-virtual {v2, p1, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_16

    .line 24
    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 25
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/h;

    if-eqz p1, :cond_15

    .line 26
    invoke-interface {p1}, Le/a/v/h;->z2()V

    :cond_15
    return-object v0

    .line 27
    :cond_16
    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 28
    iget-object p1, p1, Le/a/v/b;->j:Le/a/u3/g;

    .line 29
    invoke-virtual {p1}, Le/a/u3/g;->P()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 30
    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 31
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/h;

    if-eqz p1, :cond_17

    .line 32
    invoke-interface {p1, v3}, Le/a/v/h;->A4(Lcom/truecaller/data/entity/Contact;)V

    :cond_17
    return-object v0

    .line 33
    :cond_18
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 34
    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 35
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/h;

    if-eqz p1, :cond_19

    .line 36
    invoke-interface {p1}, Le/a/v/h;->z2()V

    :cond_19
    return-object v0

    .line 37
    :cond_1a
    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 38
    invoke-virtual {p1, v3}, Le/a/v/b;->Jj(Lcom/truecaller/data/entity/Contact;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 39
    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 40
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/h;

    if-eqz p1, :cond_1b

    .line 41
    invoke-interface {p1, v3}, Le/a/v/h;->A4(Lcom/truecaller/data/entity/Contact;)V

    :cond_1b
    return-object v0

    .line 42
    :cond_1c
    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 43
    iget-object p1, p1, Le/a/v/b;->j:Le/a/u3/g;

    .line 44
    iget-object v2, p1, Le/a/u3/g;->c4:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x10a

    aget-object v5, v5, v6

    invoke-virtual {v2, p1, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 45
    iget-object v2, p0, Le/a/v/f;->h:Le/a/v/b;

    iput-object v3, p0, Le/a/v/f;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/v/f;->f:Ljava/lang/Object;

    iput v4, p0, Le/a/v/f;->g:I

    .line 46
    iget-object v5, v2, Le/a/v/b;->i:Le/a/a3/a;

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v9, p0

    invoke-static/range {v5 .. v11}, Le/a/n/g0;->x(Le/a/a3/a;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1d

    return-object v1

    :cond_1d
    move-object v1, p1

    move-object p1, v2

    move-object v2, v3

    .line 47
    :goto_8
    check-cast p1, Lcom/truecaller/blocking/FilterMatch;

    .line 48
    invoke-virtual {p1}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 49
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/h;

    if-eqz p1, :cond_22

    .line 50
    invoke-interface {p1, v2}, Le/a/v/h;->A4(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_9

    .line 51
    :cond_1e
    invoke-virtual {p1}, Lcom/truecaller/blocking/FilterMatch;->c()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 52
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/h;

    if-eqz p1, :cond_22

    .line 53
    invoke-interface {p1}, Le/a/v/h;->z2()V

    goto :goto_9

    .line 54
    :cond_1f
    invoke-virtual {p1}, Lcom/truecaller/blocking/FilterMatch;->b()Z

    move-result p1

    if-nez p1, :cond_20

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result p1

    if-eqz p1, :cond_21

    :cond_20
    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 55
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/h;

    if-eqz p1, :cond_22

    .line 56
    invoke-interface {p1, v2}, Le/a/v/h;->A4(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_9

    .line 57
    :cond_21
    iget-object p1, p0, Le/a/v/f;->h:Le/a/v/b;

    .line 58
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/h;

    if-eqz p1, :cond_22

    .line 59
    invoke-interface {p1}, Le/a/v/h;->z2()V

    :cond_22
    :goto_9
    return-object v0
.end method
