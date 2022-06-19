.class public final Le/a/x4/l/b$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/x4/l/b;->Lj()Lq3/a/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.searchwarnings.ui.SearchWarningsPresenter$setupView$1"
    f = "SearchWarningsPresenter.kt"
    l = {
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/x4/l/b;


# direct methods
.method public constructor <init>(Le/a/x4/l/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/x4/l/b$b;

    iget-object v0, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    invoke-direct {p1, v0, p2}, Le/a/x4/l/b$b;-><init>(Le/a/x4/l/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/x4/l/b$b;

    iget-object v0, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    invoke-direct {p1, v0, p2}, Le/a/x4/l/b$b;-><init>(Le/a/x4/l/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/x4/l/b$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/x4/l/b$b;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

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
    iget-object p1, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    .line 5
    iget-object p1, p1, Le/a/x4/l/b;->d:Le/a/x4/l/a;

    if-eqz p1, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-eqz v2, :cond_19

    if-eqz p1, :cond_18

    .line 6
    iget-object p1, p1, Le/a/x4/l/a;->b:Lcom/truecaller/data/entity/Contact;

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->Y()Ljava/util/List;

    move-result-object p1

    const-string v2, "config.contact.searchWarnings"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/SearchWarning;

    if-eqz p1, :cond_4

    iget-object v2, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    .line 8
    iget-object v2, v2, Le/a/x4/l/b;->i:Le/a/x4/g;

    .line 9
    iput v5, p0, Le/a/x4/l/b$b;->e:I

    invoke-interface {v2, p1, p0}, Le/a/x4/g;->a(Lcom/truecaller/data/entity/SearchWarning;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v3, p1

    check-cast v3, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;

    :cond_4
    if-nez v3, :cond_6

    .line 10
    iget-object p1, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    .line 11
    sget-object v1, Le/a/x4/l/b;->l:[Ls1/a/l;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/m5/d;

    if-eqz p1, :cond_5

    .line 13
    invoke-interface {p1}, Le/a/m5/d;->R()V

    :cond_5
    return-object v0

    .line 14
    :cond_6
    iget-object p1, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    .line 15
    sget-object v1, Le/a/x4/l/b;->l:[Ls1/a/l;

    .line 16
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/m5/d;

    if-eqz p1, :cond_7

    .line 17
    invoke-virtual {v3}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/m5/d;->setLabel(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/m5/d;->setMessage(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    invoke-virtual {v3}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v5

    .line 20
    iput-boolean v2, v1, Le/a/x4/l/b;->f:Z

    .line 21
    iget-object v1, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    .line 22
    iget-boolean v1, v1, Le/a/x4/l/b;->f:Z

    .line 23
    invoke-interface {p1, v1}, Le/a/m5/d;->setIsExpandable(Z)V

    .line 24
    iget-object v1, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    .line 25
    iget-boolean v2, v1, Le/a/x4/l/b;->f:Z

    if-eqz v2, :cond_7

    .line 26
    iget-boolean v1, v1, Le/a/x4/l/b;->e:Z

    .line 27
    invoke-interface {p1, v1}, Le/a/m5/d;->setIsExpanded(Z)V

    .line 28
    :cond_7
    iget-object p1, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    .line 29
    iget-object v1, p1, Le/a/x4/l/b;->g:Ls1/b0/c;

    sget-object v2, Le/a/x4/l/b;->l:[Ls1/a/l;

    aget-object v2, v2, v4

    invoke-interface {v1, p1, v2, v3}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    invoke-static {p1}, Le/a/x4/l/b;->Ij(Le/a/x4/l/b;)Le/a/x4/l/a;

    move-result-object p1

    .line 31
    instance-of v1, p1, Le/a/x4/l/a$b;

    if-eqz v1, :cond_9

    iget-object v1, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    .line 32
    iget-object v2, p1, Le/a/x4/l/a;->b:Lcom/truecaller/data/entity/Contact;

    .line 33
    check-cast p1, Le/a/x4/l/a$b;

    .line 34
    iget-boolean p1, p1, Le/a/x4/l/a$b;->c:Z

    .line 35
    invoke-virtual {v1, v2}, Le/a/x4/l/b;->Mj(Lcom/truecaller/data/entity/Contact;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p1, v1, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-interface {p1}, Le/a/x4/l/c;->f()Le/a/m5/e;

    move-result-object p1

    goto :goto_2

    .line 36
    :cond_8
    iget-object v2, v1, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-interface {v2, p1}, Le/a/x4/l/c;->j(Z)Le/a/m5/e;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Le/a/x4/l/b;->Jj(Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;Le/a/m5/e;)Le/a/m5/e;

    move-result-object p1

    .line 37
    :goto_2
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/m5/d;

    if-eqz v1, :cond_17

    invoke-interface {v1, p1}, Le/a/m5/d;->P(Le/a/m5/e;)V

    goto/16 :goto_9

    .line 38
    :cond_9
    instance-of v1, p1, Le/a/x4/l/a$c;

    if-eqz v1, :cond_c

    iget-object v1, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    .line 39
    iget-object p1, p1, Le/a/x4/l/a;->b:Lcom/truecaller/data/entity/Contact;

    .line 40
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object p1, v1, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-interface {p1}, Le/a/x4/l/c;->h()Le/a/m5/e;

    move-result-object p1

    goto :goto_3

    .line 42
    :cond_a
    invoke-virtual {v1, p1}, Le/a/x4/l/b;->Mj(Lcom/truecaller/data/entity/Contact;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, v1, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-interface {p1}, Le/a/x4/l/c;->g()Le/a/m5/e;

    move-result-object p1

    goto :goto_3

    .line 43
    :cond_b
    iget-object p1, v1, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-interface {p1}, Le/a/x4/l/c;->m()Le/a/m5/e;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Le/a/x4/l/b;->Jj(Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;Le/a/m5/e;)Le/a/m5/e;

    move-result-object p1

    .line 44
    :goto_3
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/m5/d;

    if-eqz v1, :cond_17

    invoke-interface {v1, p1}, Le/a/m5/d;->P(Le/a/m5/e;)V

    goto/16 :goto_9

    .line 45
    :cond_c
    instance-of v1, p1, Le/a/x4/l/a$a;

    if-eqz v1, :cond_13

    iget-object v1, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    check-cast p1, Le/a/x4/l/a$a;

    .line 46
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v2, p1, Le/a/x4/l/a$a;->d:Le/a/m5/b;

    if-eqz v2, :cond_d

    .line 48
    iget-boolean v6, p1, Le/a/x4/l/a$a;->c:Z

    if-nez v6, :cond_d

    move v6, v5

    goto :goto_4

    :cond_d
    move v6, v4

    :goto_4
    if-eqz v2, :cond_e

    .line 49
    iget-boolean v7, v2, Le/a/m5/b;->a:Z

    goto :goto_5

    :cond_e
    move v7, v4

    :goto_5
    if-eqz v2, :cond_f

    .line 50
    iget-boolean v2, v2, Le/a/m5/b;->a:Z

    if-nez v2, :cond_f

    move v4, v5

    .line 51
    :cond_f
    iget-object p1, p1, Le/a/x4/l/a;->b:Lcom/truecaller/data/entity/Contact;

    .line 52
    invoke-virtual {v1, p1}, Le/a/x4/l/b;->Mj(Lcom/truecaller/data/entity/Contact;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 53
    iget-object p1, v1, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-interface {p1}, Le/a/x4/l/c;->f()Le/a/m5/e;

    move-result-object p1

    goto :goto_7

    :cond_10
    if-eqz v6, :cond_11

    if-eqz v7, :cond_11

    .line 54
    iget-object p1, v1, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-interface {p1}, Le/a/x4/l/c;->e()Le/a/m5/e;

    move-result-object p1

    goto :goto_6

    :cond_11
    if-eqz v6, :cond_12

    if-eqz v4, :cond_12

    .line 55
    iget-object p1, v1, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-interface {p1}, Le/a/x4/l/c;->c()Le/a/m5/e;

    move-result-object p1

    goto :goto_6

    .line 56
    :cond_12
    iget-object p1, v1, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-interface {p1}, Le/a/x4/l/c;->d()Le/a/m5/e;

    move-result-object p1

    .line 57
    :goto_6
    invoke-virtual {v1, v3, p1}, Le/a/x4/l/b;->Jj(Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;Le/a/m5/e;)Le/a/m5/e;

    move-result-object p1

    .line 58
    :goto_7
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/m5/d;

    if-eqz v1, :cond_17

    invoke-interface {v1, p1}, Le/a/m5/d;->P(Le/a/m5/e;)V

    goto :goto_9

    .line 59
    :cond_13
    instance-of v1, p1, Le/a/x4/l/a$d;

    if-eqz v1, :cond_17

    iget-object v1, p0, Le/a/x4/l/b$b;->f:Le/a/x4/l/b;

    check-cast p1, Le/a/x4/l/a$d;

    .line 60
    iget-boolean v2, p1, Le/a/x4/l/a$d;->c:Z

    .line 61
    iget-boolean p1, p1, Le/a/x4/l/a$d;->d:Z

    if-eqz v2, :cond_15

    if-eqz p1, :cond_14

    .line 62
    iget-object p1, v1, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-interface {p1}, Le/a/x4/l/c;->l()Le/a/m5/e;

    move-result-object p1

    goto :goto_8

    .line 63
    :cond_14
    iget-object p1, v1, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-interface {p1}, Le/a/x4/l/c;->b()Le/a/m5/e;

    move-result-object p1

    goto :goto_8

    :cond_15
    if-eqz p1, :cond_16

    .line 64
    iget-object p1, v1, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-interface {p1}, Le/a/x4/l/c;->i()Le/a/m5/e;

    move-result-object p1

    goto :goto_8

    .line 65
    :cond_16
    iget-object p1, v1, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-interface {p1}, Le/a/x4/l/c;->a()Le/a/m5/e;

    move-result-object p1

    .line 66
    :goto_8
    invoke-virtual {v1, v3, p1}, Le/a/x4/l/b;->Jj(Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;Le/a/m5/e;)Le/a/m5/e;

    move-result-object p1

    .line 67
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/m5/d;

    if-eqz v1, :cond_17

    invoke-interface {v1, p1}, Le/a/m5/d;->P(Le/a/m5/e;)V

    :cond_17
    :goto_9
    return-object v0

    :cond_18
    const-string p1, "config"

    .line 68
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Config must be set before attaching the presenter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
