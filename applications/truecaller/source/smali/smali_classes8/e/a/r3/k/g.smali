.class public final Le/a/r3/k/g;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/r3/k/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/r3/k/e;",
        ">;",
        "Le/a/r3/k/d;"
    }
.end annotation


# instance fields
.field public final d:Le/m/a/h/a/g/b;

.field public final e:Ls1/w/f;

.field public final f:Le/a/r3/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Le/a/r3/g;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicFeatureManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/r3/k/g;->e:Ls1/w/f;

    iput-object p3, p0, Le/a/r3/k/g;->f:Le/a/r3/g;

    .line 2
    invoke-static {p1}, Ln3/g0/y;->G(Landroid/content/Context;)Le/m/a/h/a/g/b;

    move-result-object p1

    const-string p2, "SplitInstallManagerFactory.create(context)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/r3/k/g;->d:Le/m/a/h/a/g/b;

    return-void
.end method


# virtual methods
.method public final Ij()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->values()[Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    move-result-object v0

    invoke-static {v0}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/r3/k/g;->d:Le/m/a/h/a/g/b;

    invoke-interface {v1}, Le/m/a/h/a/g/b;->g()Ljava/util/Set;

    move-result-object v1

    const-string v2, "splitInstallManager.installedModules"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/String;

    const-string v4, "it"

    .line 6
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$toDynamicFeature"

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->values()[Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    aget-object v6, v4, v5

    invoke-virtual {v6}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->getModuleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    .line 9
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, " module is not registered!"

    invoke-static {v3, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    invoke-static {v2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/u/i;->Z(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 12
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/r3/k/e;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Le/a/r3/k/e;->x3(Ljava/util/List;)V

    .line 13
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r3/k/e;

    if-eqz v0, :cond_5

    invoke-interface {v0, v2}, Le/a/r3/k/e;->F7(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/r3/k/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/a/r3/k/g;->Ij()V

    return-void
.end method

.method public v8(Landroid/app/Activity;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;Z)V
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicFeature"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r3/k/e;

    if-eqz p1, :cond_0

    const-string p3, "Uninstalling "

    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->getModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", it may takes time..."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Le/a/r3/k/e;->m(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/r3/k/g;->f:Le/a/r3/g;

    invoke-interface {p1, p2}, Le/a/r3/g;->c(Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)V

    goto :goto_0

    .line 3
    :cond_1
    new-instance v3, Le/a/r3/k/f;

    const/4 p3, 0x0

    invoke-direct {v3, p0, p1, p2, p3}, Le/a/r3/k/f;-><init>(Le/a/r3/k/g;Landroid/app/Activity;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_0
    return-void
.end method
