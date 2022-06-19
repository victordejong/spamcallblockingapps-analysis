.class public final Le/a/l/c/j$h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/j;->T2()V
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
    c = "com.truecaller.premium.premiumusertab.PremiumUserTabPresenter$onUpdateWhatsAppCallerIdAutoSearchMode$1"
    f = "PremiumUserTabPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/l/c/j;


# direct methods
.method public constructor <init>(Le/a/l/c/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/j$h;->e:Le/a/l/c/j;

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

    new-instance p1, Le/a/l/c/j$h;

    iget-object v0, p0, Le/a/l/c/j$h;->e:Le/a/l/c/j;

    invoke-direct {p1, v0, p2}, Le/a/l/c/j$h;-><init>(Le/a/l/c/j;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/c/j$h;

    iget-object v0, p0, Le/a/l/c/j$h;->e:Le/a/l/c/j;

    invoke-direct {p1, v0, p2}, Le/a/l/c/j$h;-><init>(Le/a/l/c/j;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/c/j$h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/l/c/j$h;->e:Le/a/l/c/j;

    .line 3
    iget-object v0, p1, Le/a/l/c/j;->W:Le/a/l/c/a/n0;

    .line 4
    iget-boolean v1, p1, Le/a/l/e0;->m:Z

    if-nez v1, :cond_8

    .line 5
    iget-boolean v1, p1, Le/a/l/e0;->n:Z

    if-nez v1, :cond_8

    .line 6
    iget-object v1, p1, Le/a/l/c/j;->X:Ljava/util/List;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string v3, "currentCards"

    .line 10
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v1}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 12
    iget-object v3, p0, Le/a/l/c/j$h;->e:Le/a/l/c/j;

    .line 13
    iget-object v3, v3, Le/a/l/c/j;->A0:Le/a/l/c/n/d;

    .line 14
    sget-object v4, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->WHATS_APP_CALLER_ID:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {v3, v4}, Le/a/l/c/n/d;->i(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Le/a/l/v2/i/b/a;

    move-result-object v3

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 16
    check-cast v7, Le/a/l/c/a/p;

    .line 17
    iget-object v7, v7, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 18
    instance-of v7, v7, Le/a/l/c/a/t$n;

    .line 19
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 20
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move v6, v8

    .line 21
    :goto_1
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 22
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-eq v6, v8, :cond_3

    const/4 v5, 0x1

    .line 23
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_6

    .line 25
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 26
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l/c/a/p;

    .line 27
    iget-object v5, v5, Le/a/l/c/a/p;->a:Le/a/l/c/a/q;

    if-eqz v3, :cond_5

    goto :goto_3

    .line 28
    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/l/c/a/p;

    .line 29
    iget-object v3, v3, Le/a/l/c/a/p;->c:Le/a/l/v2/i/b/a;

    .line 30
    :goto_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l/c/a/p;

    .line 31
    iget-object v6, v6, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    const-string v7, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.WhatsAppCallerId"

    .line 32
    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Le/a/l/c/a/t$n;

    .line 33
    iget-object v6, p0, Le/a/l/c/j$h;->e:Le/a/l/c/j;

    .line 34
    iget-object v6, v6, Le/a/l/c/j;->p0:Lo3/a;

    .line 35
    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l/c/a/d3;

    invoke-virtual {v6}, Le/a/l/c/a/d3;->a()Le/a/l/c/a/t$n;

    move-result-object v6

    .line 36
    new-instance v7, Le/a/l/c/a/p;

    invoke-direct {v7, v5, v6, v3}, Le/a/l/c/a/p;-><init>(Le/a/l/c/a/q;Le/a/l/c/a/t;Le/a/l/v2/i/b/a;)V

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    .line 38
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_7

    .line 39
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_7
    iput-object v0, p1, Le/a/l/c/j;->W:Le/a/l/c/a/n0;

    .line 42
    iput-object v1, p1, Le/a/l/c/j;->X:Ljava/util/List;

    .line 43
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/i;

    if-eqz p1, :cond_8

    .line 44
    invoke-interface {p1, v2, v3}, Le/a/l/c/i;->ok(Ljava/util/List;Ljava/util/List;)V

    .line 45
    :cond_8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
