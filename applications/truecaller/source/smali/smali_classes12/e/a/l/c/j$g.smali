.class public final Le/a/l/c/j$g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/j;->onResume()V
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
    c = "com.truecaller.premium.premiumusertab.PremiumUserTabPresenter$onResume$1"
    f = "PremiumUserTabPresenter.kt"
    l = {
        0xcf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:I

.field public o:I

.field public final synthetic p:Le/a/l/c/j;


# direct methods
.method public constructor <init>(Le/a/l/c/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

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

    new-instance p1, Le/a/l/c/j$g;

    iget-object v0, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    invoke-direct {p1, v0, p2}, Le/a/l/c/j$g;-><init>(Le/a/l/c/j;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/c/j$g;

    iget-object v0, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    invoke-direct {p1, v0, p2}, Le/a/l/c/j$g;-><init>(Le/a/l/c/j;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/c/j$g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/c/j$g;->o:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v0, p0, Le/a/l/c/j$g;->n:I

    iget-object v1, p0, Le/a/l/c/j$g;->m:Ljava/lang/Object;

    check-cast v1, Le/a/l/v2/i/b/a;

    iget-object v6, p0, Le/a/l/c/j$g;->l:Ljava/lang/Object;

    check-cast v6, Le/a/l/c/a/q;

    iget-object v7, p0, Le/a/l/c/j$g;->k:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    iget-object v7, p0, Le/a/l/c/j$g;->j:Ljava/lang/Object;

    check-cast v7, Le/a/l/c/j$a;

    iget-object v8, p0, Le/a/l/c/j$g;->i:Ljava/lang/Object;

    check-cast v8, Le/a/l/c/j$a;

    iget-object v9, p0, Le/a/l/c/j$g;->h:Ljava/lang/Object;

    check-cast v9, Le/a/l/c/j$a;

    iget-object v10, p0, Le/a/l/c/j$g;->g:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, p0, Le/a/l/c/j$g;->f:Ljava/lang/Object;

    check-cast v11, Le/a/l/c/a/n0;

    iget-object v12, p0, Le/a/l/c/j$g;->e:Ljava/lang/Object;

    check-cast v12, Le/a/l/c/j;

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

    .line 4
    iget-object v12, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 5
    iget-object v11, v12, Le/a/l/c/j;->W:Le/a/l/c/a/n0;

    .line 6
    iget-boolean p1, v12, Le/a/l/e0;->m:Z

    if-nez p1, :cond_2a

    .line 7
    iget-boolean p1, v12, Le/a/l/e0;->n:Z

    if-nez p1, :cond_2a

    .line 8
    iget-object p1, v12, Le/a/l/c/j;->X:Ljava/util/List;

    .line 9
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_2

    .line 10
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_2
    new-instance v7, Le/a/l/c/j$a;

    invoke-direct {v7, p1}, Le/a/l/c/j$a;-><init>(Ljava/util/List;)V

    .line 13
    iget-object p1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v5

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 15
    check-cast v6, Le/a/l/c/a/p;

    .line 16
    iget-object v6, v6, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 17
    instance-of v6, v6, Le/a/l/c/a/t$k;

    .line 18
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 19
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v4

    .line 20
    :goto_1
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v5

    .line 22
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object p1, v3

    :goto_3
    if-eqz p1, :cond_7

    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 25
    iget-object v1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 26
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/c/a/p;

    .line 27
    iget-object v1, v1, Le/a/l/c/a/p;->a:Le/a/l/c/a/q;

    .line 28
    iget-object v6, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 29
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l/c/a/p;

    .line 30
    iget-object v6, v6, Le/a/l/c/a/p;->c:Le/a/l/v2/i/b/a;

    .line 31
    iget-object v8, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 32
    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/l/c/a/p;

    .line 33
    iget-object v8, v8, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    const-string v9, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.SpamProtection"

    .line 34
    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Le/a/l/c/a/t$k;

    .line 35
    iget-object v8, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 36
    iget-object v8, v8, Le/a/l/c/j;->s0:Le/a/l/c/a/t2;

    .line 37
    invoke-virtual {v8}, Le/a/l/c/a/t2;->a()Le/a/l/c/a/t$k;

    move-result-object v8

    .line 38
    new-instance v9, Le/a/l/c/a/p;

    invoke-direct {v9, v1, v8, v6}, Le/a/l/c/a/p;-><init>(Le/a/l/c/a/q;Le/a/l/c/a/t;Le/a/l/v2/i/b/a;)V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    iget-object v6, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 41
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    iput-object v1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 43
    :cond_7
    iget-object p1, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 44
    iget-object p1, p1, Le/a/l/c/j;->n0:Lo3/a;

    .line 45
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/a/f3;

    invoke-virtual {p1}, Le/a/l/c/a/f3;->a()Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_9

    .line 46
    :cond_8
    iget-object p1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v5

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 48
    check-cast v6, Le/a/l/c/a/p;

    .line 49
    iget-object v6, v6, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 50
    instance-of v6, v6, Le/a/l/c/a/t$o;

    .line 51
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 52
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    move v1, v4

    .line 53
    :goto_5
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 54
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_b

    move v1, v2

    goto :goto_6

    :cond_b
    move v1, v5

    .line 55
    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    move-object p1, v3

    :goto_7
    if-eqz p1, :cond_e

    .line 57
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 58
    iget-object v6, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 59
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l/c/a/p;

    .line 60
    iget-object v6, v6, Le/a/l/c/a/p;->a:Le/a/l/c/a/q;

    .line 61
    iget-object v8, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 62
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/l/c/a/p;

    .line 63
    iget-object v8, v8, Le/a/l/c/a/p;->c:Le/a/l/v2/i/b/a;

    .line 64
    iget-object v9, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 65
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/l/c/a/p;

    .line 66
    iget-object v9, v9, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    const-string v13, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.WhoViewedMe"

    .line 67
    invoke-static {v9, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Le/a/l/c/a/t$o;

    .line 68
    iget-object v9, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 69
    iget-object v9, v9, Le/a/l/c/j;->n0:Lo3/a;

    .line 70
    invoke-interface {v9}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/l/c/a/f3;

    iput-object v12, p0, Le/a/l/c/j$g;->e:Ljava/lang/Object;

    iput-object v11, p0, Le/a/l/c/j$g;->f:Ljava/lang/Object;

    iput-object v10, p0, Le/a/l/c/j$g;->g:Ljava/lang/Object;

    iput-object v7, p0, Le/a/l/c/j$g;->h:Ljava/lang/Object;

    iput-object v7, p0, Le/a/l/c/j$g;->i:Ljava/lang/Object;

    iput-object v7, p0, Le/a/l/c/j$g;->j:Ljava/lang/Object;

    iput-object p1, p0, Le/a/l/c/j$g;->k:Ljava/lang/Object;

    iput-object v6, p0, Le/a/l/c/j$g;->l:Ljava/lang/Object;

    iput-object v8, p0, Le/a/l/c/j$g;->m:Ljava/lang/Object;

    iput v1, p0, Le/a/l/c/j$g;->n:I

    iput v2, p0, Le/a/l/c/j$g;->o:I

    .line 71
    iget-object p1, v9, Le/a/l/c/a/f3;->d:Ls1/w/f;

    new-instance v13, Le/a/l/c/a/e3;

    invoke-direct {v13, v9, v3}, Le/a/l/c/a/e3;-><init>(Le/a/l/c/a/f3;Ls1/w/d;)V

    invoke-static {p1, v13, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    return-object v0

    :cond_d
    move v0, v1

    move-object v9, v7

    move-object v1, v8

    move-object v8, v9

    .line 72
    :goto_8
    check-cast p1, Le/a/l/c/a/t$o;

    .line 73
    new-instance v13, Le/a/l/c/a/p;

    invoke-direct {v13, v6, p1, v1}, Le/a/l/c/a/p;-><init>(Le/a/l/c/a/q;Le/a/l/c/a/t;Le/a/l/v2/i/b/a;)V

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    .line 75
    iget-object v1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 76
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 77
    iput-object p1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    move-object v7, v8

    goto :goto_a

    :cond_e
    :goto_9
    move-object v9, v7

    .line 78
    :goto_a
    iget-object p1, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 79
    iget-object p1, p1, Le/a/l/c/j;->p0:Lo3/a;

    .line 80
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/a/d3;

    .line 81
    iget-object p1, p1, Le/a/l/c/a/d3;->a:Le/a/q5/d;

    invoke-interface {p1}, Le/a/q5/d;->r()Z

    move-result p1

    .line 82
    iget-object v0, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 83
    iget-object v0, v0, Le/a/l/c/j;->A0:Le/a/l/c/n/d;

    .line 84
    sget-object v1, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->WHATS_APP_CALLER_ID:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {v0, v1}, Le/a/l/c/n/d;->i(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Le/a/l/v2/i/b/a;

    move-result-object v0

    if-nez p1, :cond_f

    goto/16 :goto_10

    .line 85
    :cond_f
    iget-object p1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v5

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 87
    check-cast v6, Le/a/l/c/a/p;

    .line 88
    iget-object v6, v6, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 89
    instance-of v6, v6, Le/a/l/c/a/t$n;

    .line 90
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 91
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_c

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_11
    move v1, v4

    .line 92
    :goto_c
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 93
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_12

    move v1, v2

    goto :goto_d

    :cond_12
    move v1, v5

    .line 94
    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_e

    :cond_13
    move-object p1, v3

    :goto_e
    if-eqz p1, :cond_15

    .line 96
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 97
    iget-object v1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 98
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/c/a/p;

    .line 99
    iget-object v1, v1, Le/a/l/c/a/p;->a:Le/a/l/c/a/q;

    if-eqz v0, :cond_14

    goto :goto_f

    .line 100
    :cond_14
    iget-object v0, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 101
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/p;

    .line 102
    iget-object v0, v0, Le/a/l/c/a/p;->c:Le/a/l/v2/i/b/a;

    .line 103
    :goto_f
    iget-object v6, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 104
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l/c/a/p;

    .line 105
    iget-object v6, v6, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    const-string v8, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.WhatsAppCallerId"

    .line 106
    invoke-static {v6, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Le/a/l/c/a/t$n;

    .line 107
    iget-object v6, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 108
    iget-object v6, v6, Le/a/l/c/j;->p0:Lo3/a;

    .line 109
    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l/c/a/d3;

    invoke-virtual {v6}, Le/a/l/c/a/d3;->a()Le/a/l/c/a/t$n;

    move-result-object v6

    .line 110
    new-instance v8, Le/a/l/c/a/p;

    invoke-direct {v8, v1, v6, v0}, Le/a/l/c/a/p;-><init>(Le/a/l/c/a/q;Le/a/l/c/a/t;Le/a/l/v2/i/b/a;)V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    .line 112
    iget-object v1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 113
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 114
    iput-object v0, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 115
    :cond_15
    :goto_10
    iget-object p1, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 116
    iget-object p1, p1, Le/a/l/c/j;->t0:Lo3/a;

    .line 117
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/a/g0;

    .line 118
    iget-object p1, p1, Le/a/l/c/a/g0;->a:Le/a/x/l;

    invoke-interface {p1}, Le/a/x/l;->b()Z

    move-result p1

    .line 119
    iget-object v0, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 120
    iget-object v0, v0, Le/a/l/c/j;->A0:Le/a/l/c/n/d;

    .line 121
    sget-object v1, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->GHOST_CALL:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {v0, v1}, Le/a/l/c/n/d;->i(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Le/a/l/v2/i/b/a;

    move-result-object v0

    if-nez p1, :cond_16

    goto/16 :goto_16

    .line 122
    :cond_16
    iget-object p1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v5

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 124
    check-cast v6, Le/a/l/c/a/p;

    .line 125
    iget-object v6, v6, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 126
    instance-of v6, v6, Le/a/l/c/a/t$d;

    .line 127
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 128
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_12

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_18
    move v1, v4

    .line 129
    :goto_12
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 130
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_19

    move v1, v2

    goto :goto_13

    :cond_19
    move v1, v5

    .line 131
    :goto_13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_14

    :cond_1a
    move-object p1, v3

    :goto_14
    if-eqz p1, :cond_1c

    .line 133
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 134
    iget-object v1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 135
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/c/a/p;

    .line 136
    iget-object v1, v1, Le/a/l/c/a/p;->a:Le/a/l/c/a/q;

    if-eqz v0, :cond_1b

    goto :goto_15

    .line 137
    :cond_1b
    iget-object v0, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 138
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/p;

    .line 139
    iget-object v0, v0, Le/a/l/c/a/p;->c:Le/a/l/v2/i/b/a;

    .line 140
    :goto_15
    iget-object v6, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 141
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l/c/a/p;

    .line 142
    iget-object v6, v6, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    const-string v8, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.GhostCall"

    .line 143
    invoke-static {v6, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Le/a/l/c/a/t$d;

    .line 144
    iget-object v6, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 145
    iget-object v6, v6, Le/a/l/c/j;->t0:Lo3/a;

    .line 146
    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l/c/a/g0;

    invoke-virtual {v6}, Le/a/l/c/a/g0;->a()Le/a/l/c/a/t$d;

    move-result-object v6

    .line 147
    new-instance v8, Le/a/l/c/a/p;

    invoke-direct {v8, v1, v6, v0}, Le/a/l/c/a/p;-><init>(Le/a/l/c/a/q;Le/a/l/c/a/t;Le/a/l/v2/i/b/a;)V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    .line 149
    iget-object v1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 150
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    iput-object v0, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 152
    :cond_1c
    :goto_16
    iget-object p1, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 153
    iget-object p1, p1, Le/a/l/c/j;->o0:Lo3/a;

    .line 154
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/a/e;

    .line 155
    iget-object p1, p1, Le/a/l/c/a/e;->a:Le/a/s2/c;

    invoke-interface {p1}, Le/a/s2/c;->b()Z

    move-result p1

    .line 156
    iget-object v0, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 157
    iget-object v0, v0, Le/a/l/c/j;->A0:Le/a/l/c/n/d;

    .line 158
    sget-object v1, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->ANNOUNCE_CALL:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {v0, v1}, Le/a/l/c/n/d;->i(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Le/a/l/v2/i/b/a;

    move-result-object v0

    if-nez p1, :cond_1d

    goto/16 :goto_1c

    .line 159
    :cond_1d
    iget-object p1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v5

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 161
    check-cast v6, Le/a/l/c/a/p;

    .line 162
    iget-object v6, v6, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 163
    instance-of v6, v6, Le/a/l/c/a/t$a;

    .line 164
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 165
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_18

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_1f
    move v1, v4

    .line 166
    :goto_18
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 167
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_20

    move v1, v2

    goto :goto_19

    :cond_20
    move v1, v5

    .line 168
    :goto_19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_1a

    :cond_21
    move-object p1, v3

    :goto_1a
    if-eqz p1, :cond_23

    .line 170
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 171
    iget-object v1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 172
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/c/a/p;

    .line 173
    iget-object v1, v1, Le/a/l/c/a/p;->a:Le/a/l/c/a/q;

    if-eqz v0, :cond_22

    goto :goto_1b

    .line 174
    :cond_22
    iget-object v0, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 175
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/p;

    .line 176
    iget-object v0, v0, Le/a/l/c/a/p;->c:Le/a/l/v2/i/b/a;

    .line 177
    :goto_1b
    iget-object v6, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 178
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l/c/a/p;

    .line 179
    iget-object v6, v6, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    const-string v8, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.AnnounceCallerId"

    .line 180
    invoke-static {v6, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Le/a/l/c/a/t$a;

    .line 181
    iget-object v6, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 182
    iget-object v6, v6, Le/a/l/c/j;->o0:Lo3/a;

    .line 183
    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l/c/a/e;

    invoke-virtual {v6}, Le/a/l/c/a/e;->a()Le/a/l/c/a/t$a;

    move-result-object v6

    .line 184
    new-instance v8, Le/a/l/c/a/p;

    invoke-direct {v8, v1, v6, v0}, Le/a/l/c/a/p;-><init>(Le/a/l/c/a/q;Le/a/l/c/a/t;Le/a/l/v2/i/b/a;)V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    .line 186
    iget-object v1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 187
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 188
    iput-object v0, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 189
    :cond_23
    :goto_1c
    iget-object p1, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 190
    iget-object p1, p1, Le/a/l/c/j;->w0:Le/a/l/g/t;

    .line 191
    invoke-virtual {p1}, Le/a/l/g/t;->b()Z

    move-result p1

    xor-int/2addr p1, v2

    if-nez p1, :cond_24

    goto :goto_20

    .line 192
    :cond_24
    iget-object p1, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v5

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 194
    check-cast v1, Le/a/l/c/a/p;

    .line 195
    iget-object v1, v1, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 196
    instance-of v1, v1, Le/a/l/c/a/t$f;

    .line 197
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_1e

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_26
    move v0, v4

    .line 199
    :goto_1e
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 200
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_27

    goto :goto_1f

    :cond_27
    move v2, v5

    .line 201
    :goto_1f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    move-object v3, p1

    :cond_28
    if-eqz v3, :cond_29

    .line 203
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 204
    iget-object v0, v7, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 205
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 206
    :cond_29
    :goto_20
    iget-object p1, v9, Le/a/l/c/j$a;->a:Ljava/util/List;

    .line 207
    invoke-static {v12, v11, p1}, Le/a/l/c/j;->dk(Le/a/l/c/j;Le/a/l/c/a/n0;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 208
    iput-object v11, v12, Le/a/l/c/j;->W:Le/a/l/c/a/n0;

    .line 209
    iput-object p1, v12, Le/a/l/c/j;->X:Ljava/util/List;

    .line 210
    iget-object p1, v12, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/i;

    if-eqz p1, :cond_2a

    .line 211
    invoke-interface {p1, v10, v0}, Le/a/l/c/i;->ok(Ljava/util/List;Ljava/util/List;)V

    .line 212
    :cond_2a
    iget-object p1, p0, Le/a/l/c/j$g;->p:Le/a/l/c/j;

    .line 213
    invoke-virtual {p1}, Le/a/l/c/j;->gk()V

    .line 214
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
