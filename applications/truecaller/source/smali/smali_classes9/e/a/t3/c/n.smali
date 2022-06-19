.class public final Le/a/t3/c/n;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/t3/c/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/t3/c/p;",
        ">;",
        "Le/a/t3/c/m;"
    }
.end annotation


# instance fields
.field public b:Le/a/t3/c/m$a;

.field public final c:Le/a/t3/c/g;

.field public final d:Le/a/u3/n;

.field public final e:Le/a/t3/c/x/e;


# direct methods
.method public constructor <init>(Le/a/t3/c/g;Le/a/u3/n;Le/a/t3/c/x/e;)V
    .locals 1

    const-string v0, "adapterPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toggleHooks"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/t3/c/n;->c:Le/a/t3/c/g;

    iput-object p2, p0, Le/a/t3/c/n;->d:Le/a/u3/n;

    iput-object p3, p0, Le/a/t3/c/n;->e:Le/a/t3/c/x/e;

    return-void
.end method


# virtual methods
.method public Gd(Lcom/truecaller/featuretoggles/FeatureKey;Z)V
    .locals 1

    const-string v0, "taskKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t3/c/n;->d:Le/a/u3/n;

    invoke-virtual {v0, p1}, Le/a/u3/g;->d(Lcom/truecaller/featuretoggles/FeatureKey;)Le/a/u3/b;

    move-result-object p1

    .line 2
    move-object v0, p1

    check-cast v0, Le/a/u3/k;

    invoke-interface {v0, p2}, Le/a/u3/k;->setEnabled(Z)V

    .line 3
    iget-object p2, p0, Le/a/t3/c/n;->e:Le/a/t3/c/x/e;

    invoke-interface {p2, p1}, Le/a/t3/c/x/e;->a(Le/a/u3/b;)V

    return-void
.end method

.method public Hb(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/t3/c/n;->Hj(Ljava/lang/String;)V

    return-void
.end method

.method public final Hj(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Le/a/t3/c/n;->c:Le/a/t3/c/g;

    .line 2
    iget-object v3, v0, Le/a/t3/c/n;->d:Le/a/u3/n;

    invoke-virtual {v3}, Le/a/u3/g;->Y()Ljava/util/List;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Le/a/u3/b;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v7}, Le/a/u3/b;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1, v6}, Ls1/f0/v;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_0

    .line 6
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    new-instance v1, Le/a/t3/c/n$a;

    invoke-direct {v1}, Le/a/t3/c/n$a;-><init>()V

    invoke-static {v4, v1}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 8
    new-instance v3, Le/a/u3/c;

    invoke-direct {v3}, Le/a/u3/c;-><init>()V

    invoke-static {v1, v3}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    if-ltz v5, :cond_9

    .line 11
    check-cast v7, Le/a/u3/b;

    .line 12
    instance-of v9, v7, Le/a/u3/q;

    if-eqz v9, :cond_5

    new-instance v9, Le/a/t3/c/e$d;

    int-to-long v11, v5

    .line 13
    invoke-interface {v7}, Le/a/u3/b;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v13

    .line 14
    invoke-interface {v7}, Le/a/u3/b;->getDescription()Ljava/lang/String;

    move-result-object v14

    .line 15
    check-cast v7, Le/a/u3/q;

    invoke-interface {v7}, Le/a/u3/r;->e()Z

    move-result v16

    .line 16
    invoke-interface {v7}, Le/a/u3/r;->f()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v7}, Le/a/u3/r;->l()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v17, v4

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v17, v6

    .line 17
    :goto_3
    invoke-interface {v7}, Le/a/u3/r;->c()Ljava/lang/String;

    move-result-object v15

    .line 18
    invoke-interface {v7}, Le/a/u3/r;->l()Z

    move-result v5

    xor-int/lit8 v18, v5, 0x1

    move-object v10, v9

    .line 19
    invoke-direct/range {v10 .. v18}, Le/a/t3/c/e$d;-><init>(JLcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_5

    .line 20
    :cond_5
    instance-of v9, v7, Le/a/u3/i;

    if-eqz v9, :cond_8

    .line 21
    move-object v9, v7

    check-cast v9, Le/a/u3/i;

    invoke-interface {v9}, Le/a/u3/i;->j()Lcom/truecaller/featuretoggles/FirebaseFlavor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_7

    .line 22
    new-instance v9, Le/a/t3/c/e$c;

    int-to-long v11, v5

    .line 23
    invoke-interface {v7}, Le/a/u3/b;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v13

    .line 24
    invoke-interface {v7}, Le/a/u3/b;->getDescription()Ljava/lang/String;

    move-result-object v14

    .line 25
    check-cast v7, Le/a/u3/i;

    invoke-interface {v7}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v5

    const-string v10, ""

    invoke-static {v5, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "(Empty)"

    goto :goto_4

    .line 26
    :cond_6
    invoke-interface {v7}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v5

    :goto_4
    move-object v15, v5

    .line 27
    invoke-interface {v7}, Le/a/u3/i;->j()Lcom/truecaller/featuretoggles/FirebaseFlavor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v10, "Locale.ROOT"

    invoke-static {v7, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v5, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v9

    move-object/from16 v16, v5

    .line 28
    invoke-direct/range {v10 .. v16}, Le/a/t3/c/e$c;-><init>(JLcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 29
    :cond_7
    new-instance v9, Le/a/t3/c/e$b;

    int-to-long v10, v5

    .line 30
    invoke-interface {v7}, Le/a/u3/b;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v19

    .line 31
    invoke-interface {v7}, Le/a/u3/b;->getDescription()Ljava/lang/String;

    move-result-object v20

    .line 32
    invoke-interface {v7}, Le/a/u3/b;->isEnabled()Z

    move-result v21

    move-object/from16 v16, v9

    move-wide/from16 v17, v10

    .line 33
    invoke-direct/range {v16 .. v21}, Le/a/t3/c/e$b;-><init>(JLcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;Z)V

    goto :goto_5

    .line 34
    :cond_8
    new-instance v9, Le/a/t3/c/e$a;

    int-to-long v13, v5

    .line 35
    invoke-interface {v7}, Le/a/u3/b;->getKey()Lcom/truecaller/featuretoggles/FeatureKey;

    move-result-object v15

    .line 36
    invoke-interface {v7}, Le/a/u3/b;->getDescription()Ljava/lang/String;

    move-result-object v16

    .line 37
    invoke-interface {v7}, Le/a/u3/b;->isEnabled()Z

    move-result v17

    move-object v12, v9

    .line 38
    invoke-direct/range {v12 .. v17}, Le/a/t3/c/e$a;-><init>(JLcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;Z)V

    .line 39
    :goto_5
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto/16 :goto_1

    .line 40
    :cond_9
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 v1, 0x0

    throw v1

    .line 41
    :cond_a
    invoke-interface {v2, v3}, Le/a/t3/c/g;->d9(Ljava/util/List;)V

    .line 42
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/t3/c/p;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Le/a/t3/c/p;->onDataChanged()V

    :cond_b
    return-void
.end method

.method public U0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t3/c/n;->b:Le/a/t3/c/m$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/t3/c/m$a;->d0()V

    :cond_0
    return-void
.end method

.method public U1()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t3/c/n;->b:Le/a/t3/c/m$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/t3/c/m$a;->F0()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/t3/c/p;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Le/a/t3/c/n;->Hj(Ljava/lang/String;)V

    return-void
.end method

.method public a5(Lcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;)V
    .locals 1

    const-string v0, "featureKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newFirebaseString"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t3/c/n;->d:Le/a/u3/n;

    invoke-virtual {v0, p1}, Le/a/u3/g;->d(Lcom/truecaller/featuretoggles/FeatureKey;)Le/a/u3/b;

    move-result-object p1

    .line 2
    check-cast p1, Le/a/u3/p;

    invoke-interface {p1, p2}, Le/a/u3/p;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Le/a/t3/c/n;->Hj(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Le/a/t3/c/n;->b:Le/a/t3/c/m$a;

    return-void
.end method

.method public he(Le/a/t3/c/m$a;)V
    .locals 1

    const-string v0, "router"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/t3/c/n;->b:Le/a/t3/c/m$a;

    return-void
.end method

.method public i7()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/t3/c/n;->d:Le/a/u3/n;

    .line 2
    invoke-virtual {v0}, Le/a/u3/g;->Y()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Le/a/u3/k;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/u3/k;

    .line 6
    invoke-interface {v1}, Le/a/u3/k;->k()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Le/a/t3/c/n;->Hj(Ljava/lang/String;)V

    return-void
.end method

.method public l2(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "taskKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t3/c/n;->d:Le/a/u3/n;

    invoke-virtual {v0, p1, p2}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    return-void
.end method

.method public zi(Lcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;)V
    .locals 1

    const-string v0, "featureKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseString"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t3/c/n;->b:Le/a/t3/c/m$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Le/a/t3/c/m$a;->G9(Lcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
