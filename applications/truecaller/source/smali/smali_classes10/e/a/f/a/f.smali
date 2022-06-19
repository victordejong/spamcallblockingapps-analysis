.class public abstract Le/a/f/a/f;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/f/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le/a/f/a/e;",
        ">",
        "Le/a/u2/a/a<",
        "TT;>;",
        "Le/a/f/a/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public d:Le/a/m5/c;

.field public final e:Ls1/w/f;

.field public final f:Le/a/e4/p;

.field public final g:Le/a/f/z/m;

.field public final h:Le/a/f/z/a0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/e4/p;Le/a/f/z/m;Le/a/f/z/a0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerLabelFactory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trueContextPresenterProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/f/a/f;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/f/a/f;->f:Le/a/e4/p;

    iput-object p3, p0, Le/a/f/a/f;->g:Le/a/f/z/m;

    iput-object p4, p0, Le/a/f/a/f;->h:Le/a/f/z/a0;

    return-void
.end method


# virtual methods
.method public final Ij(Le/a/f/a/g;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$this$loadProfilePicture"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 1
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/e;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/f/a/e;->Yn()V

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance v15, Le/a/f/z/k0;

    .line 3
    iget-object v3, v1, Le/a/f/a/g;->c:Ljava/lang/String;

    .line 4
    iget-object v4, v1, Le/a/f/a/g;->e:Ljava/lang/String;

    const/4 v5, 0x0

    .line 5
    iget-object v2, v1, Le/a/f/a/g;->a:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Le/a/m0/a1$k;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-boolean v2, v1, Le/a/f/a/g;->k:Z

    if-nez v2, :cond_3

    .line 8
    iget-object v2, v1, Le/a/f/a/g;->n:Lcom/truecaller/incallui/utils/BlockAction;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 9
    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->E0(Le/a/f/a/g;)Z

    move-result v10

    .line 10
    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result v11

    .line 11
    iget-boolean v12, v1, Le/a/f/a/g;->t:Z

    const/4 v13, 0x0

    .line 12
    iget-boolean v14, v1, Le/a/f/a/g;->u:Z

    .line 13
    iget-boolean v2, v1, Le/a/f/a/g;->r:Z

    .line 14
    iget-boolean v1, v1, Le/a/f/a/g;->y:Z

    const/16 v17, 0x464

    move/from16 v16, v2

    move-object v2, v15

    move-object/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v1

    .line 15
    invoke-direct/range {v2 .. v17}, Le/a/f/z/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;ZZZI)V

    .line 16
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/e;

    if-eqz v1, :cond_4

    move-object/from16 v2, v18

    invoke-interface {v1, v2}, Le/a/f/a/e;->C3(Le/a/f/z/k0;)V

    :cond_4
    return-void
.end method

.method public final Jj(Le/a/f/a/g;)V
    .locals 4

    const-string v0, "callerInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->f0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-boolean v1, p1, Le/a/f/a/g;->p:Z

    if-nez v1, :cond_7

    .line 4
    iget-boolean v1, p1, Le/a/f/a/g;->s:Z

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 5
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    :goto_2
    if-nez v3, :cond_4

    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/e;

    if-eqz p1, :cond_7

    invoke-interface {p1, v0}, Le/a/f/a/e;->setAltName(Ljava/lang/String;)V

    goto :goto_3

    .line 6
    :cond_4
    iget-object v0, p1, Le/a/f/a/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 7
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    if-nez v1, :cond_7

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/e;

    if-eqz v0, :cond_7

    .line 8
    iget-object p1, p1, Le/a/f/a/g;->b:Ljava/lang/String;

    .line 9
    invoke-interface {v0, p1}, Le/a/f/a/e;->setAltName(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final Kj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/a/g;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/f/a/f$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/f/a/f$a;

    iget v1, v0, Le/a/f/a/f$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/a/f$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/a/f$a;

    invoke-direct {v0, p0, p2}, Le/a/f/a/f$a;-><init>(Le/a/f/a/f;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/f/a/f$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/f/a/f$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/f/a/f$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/f;

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
    iget-object p2, p0, Le/a/f/a/f;->g:Le/a/f/z/m;

    iput-object p0, v0, Le/a/f/a/f$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/f/a/f$a;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    check-cast p2, Le/a/f/z/n;

    invoke-virtual {p2, p1, v2, v3, v0}, Le/a/f/z/n;->b(Le/a/f/a/g;Ljava/lang/Integer;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 6
    :goto_1
    check-cast p2, Le/a/f/z/a;

    .line 7
    instance-of v0, p2, Le/a/f/z/a$e;

    if-eqz v0, :cond_7

    .line 8
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/e;

    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Le/a/f/a/e;->Jk(Le/a/f/z/a;)V

    .line 9
    :cond_4
    check-cast p2, Le/a/f/z/a$e;

    .line 10
    iget-object v0, p2, Le/a/f/z/a$e;->d:Ljava/lang/String;

    .line 11
    iget-object p2, p2, Le/a/f/z/a$e;->e:Ljava/lang/String;

    .line 12
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/e;

    if-eqz v1, :cond_5

    invoke-interface {v1, v0}, Le/a/f/a/e;->Lh(Ljava/lang/String;)V

    .line 13
    :cond_5
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/e;

    if-eqz v0, :cond_6

    invoke-interface {v0, p2}, Le/a/f/a/e;->Mc(Ljava/lang/String;)V

    .line 14
    :cond_6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/e;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Le/a/f/a/e;->Jw()V

    goto :goto_3

    .line 15
    :cond_7
    instance-of v0, p2, Le/a/f/z/a$c;

    if-eqz v0, :cond_8

    goto :goto_2

    .line 16
    :cond_8
    instance-of v0, p2, Le/a/f/z/a$b;

    if-eqz v0, :cond_9

    :goto_2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/e;

    if-eqz p1, :cond_e

    invoke-interface {p1, p2}, Le/a/f/a/e;->Jk(Le/a/f/z/a;)V

    goto :goto_3

    .line 17
    :cond_9
    instance-of v0, p2, Le/a/f/z/a$a;

    if-eqz v0, :cond_a

    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/e;

    if-eqz p1, :cond_e

    .line 18
    iget-object p2, p2, Le/a/f/z/a;->a:Ljava/lang/String;

    .line 19
    invoke-interface {p1, p2}, Le/a/f/a/e;->Lh(Ljava/lang/String;)V

    goto :goto_3

    .line 20
    :cond_a
    instance-of v0, p2, Le/a/f/z/a$d;

    if-eqz v0, :cond_c

    .line 21
    iget-object v0, p2, Le/a/f/z/a;->a:Ljava/lang/String;

    .line 22
    check-cast p2, Le/a/f/z/a$d;

    .line 23
    iget-object p2, p2, Le/a/f/z/a$d;->d:Ljava/lang/String;

    .line 24
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/e;

    if-eqz v1, :cond_b

    invoke-interface {v1, v0}, Le/a/f/a/e;->Lh(Ljava/lang/String;)V

    .line 25
    :cond_b
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/e;

    if-eqz p1, :cond_e

    invoke-interface {p1, p2}, Le/a/f/a/e;->Mc(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    if-nez p2, :cond_e

    .line 26
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/e;

    if-eqz p2, :cond_d

    invoke-interface {p2}, Le/a/f/a/e;->T1()V

    .line 27
    :cond_d
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/e;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Le/a/f/a/e;->re()V

    .line 28
    :cond_e
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final Lj(Le/a/f/a/g;)V
    .locals 1

    const-string v0, "callerInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/f/a/g;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p1, Le/a/f/a/g;->p:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Le/a/f/a/f;->Oj(Le/a/f/a/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/e;

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p1, Le/a/f/a/g;->i:Ljava/lang/String;

    .line 6
    invoke-interface {v0, p1}, Le/a/f/a/e;->vl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Mj(Le/a/f/a/g;ZZZLs1/w/d;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/a/g;",
            "ZZZ",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    sget-object v3, Ls1/s;->a:Ls1/s;

    instance-of v4, v2, Le/a/f/a/f$b;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/f/a/f$b;

    iget v5, v4, Le/a/f/a/f$b;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/f/a/f$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/f/a/f$b;

    invoke-direct {v4, p0, v2}, Le/a/f/a/f$b;-><init>(Le/a/f/a/f;Ls1/w/d;)V

    :goto_0
    move-object v14, v4

    iget-object v2, v14, Le/a/f/a/f$b;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v14, Le/a/f/a/f$b;->e:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v14, Le/a/f/a/f$b;->h:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/f;

    iget-object v4, v14, Le/a/f/a/f$b;->g:Ljava/lang/Object;

    check-cast v4, Le/a/f/a/f;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/f/a/f;->h:Le/a/f/z/a0;

    .line 5
    iget-object v7, v1, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 6
    iget-object v8, v1, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    .line 7
    iget-object v5, v1, Le/a/f/a/g;->n:Lcom/truecaller/incallui/utils/BlockAction;

    if-eqz v5, :cond_3

    move v9, v6

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    move v9, v5

    .line 8
    :goto_1
    iget-boolean v1, v1, Le/a/f/a/g;->k:Z

    .line 9
    sget-object v5, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->INCALLUI:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-virtual {v5}, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 10
    iput-object v0, v14, Le/a/f/a/f$b;->g:Ljava/lang/Object;

    iput-object v0, v14, Le/a/f/a/f$b;->h:Ljava/lang/Object;

    iput v6, v14, Le/a/f/a/f$b;->e:I

    .line 11
    move-object v5, v2

    check-cast v5, Le/a/f/z/b0;

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v13, p4

    invoke-virtual/range {v5 .. v14}, Le/a/f/z/b0;->a(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;ZZZZLjava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    return-object v4

    :cond_4
    move-object v1, v0

    move-object v4, v1

    .line 12
    :goto_2
    check-cast v2, Le/a/m5/c;

    iput-object v2, v1, Le/a/f/a/f;->d:Le/a/m5/c;

    .line 13
    iget-object v1, v4, Le/a/f/a/f;->d:Le/a/m5/c;

    if-eqz v1, :cond_7

    .line 14
    iget-object v2, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/e;

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, Le/a/f/a/e;->P(Le/a/m5/c;)V

    .line 15
    :cond_5
    iget-object v1, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/e;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Le/a/f/a/e;->C0()V

    move-object v1, v3

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    goto :goto_4

    .line 16
    :cond_7
    iget-object v1, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/e;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Le/a/f/a/e;->n()V

    :cond_8
    :goto_4
    return-object v3
.end method

.method public final Nj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/a/f;->f:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/a/e;->C5()V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/e;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/f/a/e;->f8()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 4
    iget-object v1, p0, Le/a/f/a/f;->f:Le/a/e4/p;

    invoke-interface {v1, v0}, Le/a/e4/p;->e(I)Lcom/truecaller/multisim/SimInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/truecaller/multisim/SimInfo;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/e;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/f/a/e;->C5()V

    goto :goto_1

    .line 6
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/e;

    if-eqz v0, :cond_5

    sget v2, Lcom/truecaller/incallui/R$drawable;->ic_sim_2_large_font_16dp:I

    invoke-interface {v0, v1, v2}, Le/a/f/a/e;->xh(Ljava/lang/String;I)V

    goto :goto_1

    .line 7
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/e;

    if-eqz v0, :cond_5

    sget v2, Lcom/truecaller/incallui/R$drawable;->ic_sim_1_large_font_16dp:I

    invoke-interface {v0, v1, v2}, Le/a/f/a/e;->xh(Ljava/lang/String;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final Oj(Le/a/f/a/g;)Z
    .locals 1

    const-string v0, "callerInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Le/a/f/a/g;->t:Z

    if-nez v0, :cond_1

    .line 2
    iget-boolean p1, p1, Le/a/f/a/g;->r:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
