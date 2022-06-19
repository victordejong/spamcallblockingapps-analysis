.class public final Lcom/truecaller/insights/ui/filters/states/SmsFilterState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;
    }
.end annotation


# instance fields
.field public a:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/util/Set<",
            "Le/a/c/w/o0/k/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Ljava/util/Set<",
            "Le/a/c/w/o0/k/e;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->a:Lq3/a/x2/a1;

    .line 3
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->E(Lq3/a/x2/a1;)Lq3/a/x2/i1;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->b:Lq3/a/x2/i1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->a:Lq3/a/x2/a1;

    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ls1/u/u;->a:Ls1/u/u;

    invoke-interface {v0, v1, v2}, Lq3/a/x2/a1;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/truecaller/insights/insightsui/CategoryModel;Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;)V
    .locals 9

    const-string v0, "categoryModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->a:Lq3/a/x2/a1;

    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    move-object v4, v3

    check-cast v4, Le/a/c/w/o0/k/e;

    .line 6
    instance-of v4, v4, Le/a/c/w/o0/k/e$c;

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 12
    move-object v5, v4

    check-cast v5, Le/a/c/w/o0/k/e;

    .line 13
    instance-of v5, v5, Le/a/c/w/o0/k/e$d;

    if-eqz v5, :cond_2

    .line 14
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 19
    move-object v6, v5

    check-cast v6, Le/a/c/w/o0/k/e;

    .line 20
    instance-of v6, v6, Le/a/c/w/o0/k/e$a;

    if-eqz v6, :cond_4

    .line 21
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_5
    invoke-virtual {p1}, Lcom/truecaller/insights/insightsui/CategoryModel;->getUpdateCategories()Ljava/util/Set;

    move-result-object v3

    .line 24
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 26
    check-cast v6, Lcom/truecaller/insights/models/updates/UpdateCategory;

    .line 27
    new-instance v7, Le/a/c/w/o0/k/e$d;

    invoke-direct {v7, v6}, Le/a/c/w/o0/k/e$d;-><init>(Lcom/truecaller/insights/models/updates/UpdateCategory;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 28
    :cond_6
    invoke-virtual {p1}, Lcom/truecaller/insights/insightsui/CategoryModel;->getTagCategory()Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v3

    invoke-virtual {p1}, Lcom/truecaller/insights/insightsui/CategoryModel;->getUseTagCategory()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v7

    :goto_4
    if-eqz v3, :cond_8

    new-instance v6, Le/a/c/w/o0/k/e$a;

    invoke-direct {v6, v3}, Le/a/c/w/o0/k/e$a;-><init>(Lcom/truecaller/insights/smartcards/SmartCardCategory;)V

    goto :goto_5

    :cond_8
    move-object v6, v7

    .line 29
    :goto_5
    invoke-virtual {p1}, Lcom/truecaller/insights/insightsui/CategoryModel;->getGrammarCategory()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Skip"

    const-string v8, "Updates"

    filled-new-array {v3, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    move-object p1, v7

    :goto_6
    if-eqz p1, :cond_a

    new-instance v7, Le/a/c/w/o0/k/e$b;

    invoke-direct {v7, p1}, Le/a/c/w/o0/k/e$b;-><init>(Ljava/lang/String;)V

    .line 30
    :cond_a
    invoke-static {v0}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 31
    sget-object v0, Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;->ADD:Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;

    if-ne p2, v0, :cond_b

    invoke-interface {p1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 32
    :cond_b
    invoke-interface {p1, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 33
    :goto_7
    invoke-static {v2}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    if-eqz v6, :cond_d

    if-ne p2, v0, :cond_c

    .line 34
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 35
    :cond_c
    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 36
    :cond_d
    :goto_8
    invoke-static {v4}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    if-eqz v7, :cond_f

    if-ne p2, v0, :cond_e

    .line 37
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 38
    :cond_e
    invoke-interface {v3, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 39
    :cond_f
    :goto_9
    new-instance p2, Ls1/z/c/f0;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Ls1/z/c/f0;-><init>(I)V

    const/4 v0, 0x0

    new-array v4, v0, [Le/a/c/w/o0/k/e;

    .line 40
    invoke-interface {p1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    new-array p1, v0, [Le/a/c/w/o0/k/e;

    .line 41
    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    new-array p1, v0, [Le/a/c/w/o0/k/e;

    .line 42
    invoke-interface {v3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    new-array p1, v0, [Le/a/c/w/o0/k/e;

    .line 43
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ls1/z/c/f0;->b()I

    move-result p1

    new-array p1, p1, [Le/a/c/w/o0/k/e;

    .line 44
    iget-object p2, p2, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 45
    check-cast p1, [Le/a/c/w/o0/k/e;

    .line 46
    invoke-static {p1}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->a:Lq3/a/x2/a1;

    invoke-interface {p2}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lq3/a/x2/a1;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/util/Set;Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Le/a/c/w/o0/k/e$c;",
            ">;",
            "Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;",
            ")V"
        }
    .end annotation

    const-string v0, "senders"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->a:Lq3/a/x2/a1;

    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    move-object v4, v3

    check-cast v4, Le/a/c/w/o0/k/e;

    .line 6
    instance-of v4, v4, Le/a/c/w/o0/k/e$c;

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v1}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;->ADD:Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;

    if-ne p2, v1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 12
    :goto_1
    new-instance p1, Ls1/z/c/f0;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ls1/z/c/f0;-><init>(I)V

    const/4 p2, 0x0

    new-array v1, p2, [Le/a/c/w/o0/k/e;

    .line 13
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    new-array p2, p2, [Le/a/c/w/o0/k/e;

    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ls1/z/c/f0;->b()I

    move-result p2

    new-array p2, p2, [Le/a/c/w/o0/k/e;

    .line 14
    iget-object p1, p1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, [Le/a/c/w/o0/k/e;

    .line 16
    invoke-static {p1}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->a:Lq3/a/x2/a1;

    invoke-interface {p2}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lq3/a/x2/a1;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Le/a/c/w/o0/k/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->b:Lq3/a/x2/i1;

    invoke-interface {v0}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
