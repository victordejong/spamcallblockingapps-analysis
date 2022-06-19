.class public final Le/a/l/p2/d2/d;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.data.feature.PremiumFeatureManagerImpl$isFeatureAvailable$2"
    f = "PremiumFeatureManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/l/p2/d2/e;

.field public final synthetic f:Lcom/truecaller/premium/data/feature/PremiumFeature;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Le/a/l/p2/d2/e;Lcom/truecaller/premium/data/feature/PremiumFeature;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/d2/d;->e:Le/a/l/p2/d2/e;

    iput-object p2, p0, Le/a/l/p2/d2/d;->f:Lcom/truecaller/premium/data/feature/PremiumFeature;

    iput-boolean p3, p0, Le/a/l/p2/d2/d;->g:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/l/p2/d2/d;

    iget-object v0, p0, Le/a/l/p2/d2/d;->e:Le/a/l/p2/d2/e;

    iget-object v1, p0, Le/a/l/p2/d2/d;->f:Lcom/truecaller/premium/data/feature/PremiumFeature;

    iget-boolean v2, p0, Le/a/l/p2/d2/d;->g:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/l/p2/d2/d;-><init>(Le/a/l/p2/d2/e;Lcom/truecaller/premium/data/feature/PremiumFeature;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/p2/d2/d;

    iget-object v0, p0, Le/a/l/p2/d2/d;->e:Le/a/l/p2/d2/e;

    iget-object v1, p0, Le/a/l/p2/d2/d;->f:Lcom/truecaller/premium/data/feature/PremiumFeature;

    iget-boolean v2, p0, Le/a/l/p2/d2/d;->g:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/l/p2/d2/d;-><init>(Le/a/l/p2/d2/e;Lcom/truecaller/premium/data/feature/PremiumFeature;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/p2/d2/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/l/p2/d2/d;->e:Le/a/l/p2/d2/e;

    .line 3
    iget-object p1, p1, Le/a/l/p2/d2/e;->b:Ljava/util/List;

    if-nez p1, :cond_3

    .line 4
    iget-object p1, p0, Le/a/l/p2/d2/d;->e:Le/a/l/p2/d2/e;

    .line 5
    iget-object v0, p1, Le/a/l/p2/d2/e;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->getAvailableFeatures()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p1, Le/a/l/p2/d2/e;->a:Le/m/e/k;

    .line 7
    new-instance v2, Le/a/l/p2/d2/c;

    invoke-direct {v2}, Le/a/l/p2/d2/c;-><init>()V

    invoke-virtual {v2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "object : TypeToken<T>() {}.type"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0, v2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.fromJson(json, typeToken<T>())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Le/a/l/p2/d2/e;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Le/a/l/p2/d2/e;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "regular"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Le/a/l/p2/d2/e;->d()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p1, Le/a/l/p2/d2/e;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Le/a/l/p2/d2/e;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gold"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Le/a/l/p2/d2/e;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Le/a/l/p2/d2/e;->b()Ljava/util/List;

    move-result-object v0

    .line 12
    :goto_0
    iput-object v0, p1, Le/a/l/p2/d2/e;->b:Ljava/util/List;

    .line 13
    :cond_3
    iget-object p1, p0, Le/a/l/p2/d2/d;->e:Le/a/l/p2/d2/e;

    .line 14
    iget-object p1, p1, Le/a/l/p2/d2/e;->d:Le/a/l/p2/d2/g;

    .line 15
    iget-object p1, p1, Le/a/l/p2/d2/g;->a:Le/a/p4/b;

    invoke-interface {p1}, Le/a/p4/b;->n0()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string v1, ","

    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p1, v1, v0, v0, v2}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/String;

    .line 20
    sget-object v3, Lcom/truecaller/premium/data/feature/PremiumFeature;->Companion:Lcom/truecaller/premium/data/feature/PremiumFeature$a;

    invoke-virtual {v3, v2}, Lcom/truecaller/premium/data/feature/PremiumFeature$a;->a(Ljava/lang/String;)Lcom/truecaller/premium/data/feature/PremiumFeature;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_4
    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 22
    :cond_5
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    .line 23
    :goto_2
    iget-object v1, p0, Le/a/l/p2/d2/d;->f:Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 25
    :cond_6
    iget-boolean p1, p0, Le/a/l/p2/d2/d;->g:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Le/a/l/p2/d2/d;->e:Le/a/l/p2/d2/e;

    .line 26
    iget-object p1, p1, Le/a/l/p2/d2/e;->e:Le/a/u3/a;

    .line 27
    invoke-interface {p1}, Le/a/u3/a;->a()Z

    move-result p1

    goto :goto_3

    :cond_7
    move p1, v0

    .line 28
    :goto_3
    iget-object v1, p0, Le/a/l/p2/d2/d;->e:Le/a/l/p2/d2/e;

    .line 29
    iget-object v1, v1, Le/a/l/p2/d2/e;->b:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 30
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/l/p2/d2/a;

    .line 31
    invoke-virtual {v4}, Le/a/l/p2/d2/a;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Le/a/l/p2/d2/d;->f:Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-virtual {v5}, Lcom/truecaller/premium/data/feature/PremiumFeature;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 32
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v2, v3

    .line 34
    :cond_9
    check-cast v2, Le/a/l/p2/d2/a;

    :cond_a
    if-nez v2, :cond_b

    if-eqz p1, :cond_c

    :cond_b
    const/4 v0, 0x1

    .line 35
    :cond_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
