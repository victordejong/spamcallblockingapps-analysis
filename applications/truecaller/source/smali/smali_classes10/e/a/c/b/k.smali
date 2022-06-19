.class public final Le/a/c/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/b/j;


# instance fields
.field public final a:Z

.field public final b:Le/a/u3/g;

.field public final c:Le/a/p5/g;

.field public final d:Le/a/b0/e/l;

.field public final e:Le/a/c/c0/o;

.field public final f:Le/a/c/b/e;

.field public final g:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/p5/g;Le/a/b0/e/l;Le/a/c/c0/o;Le/a/c/b/e;Le/a/b0/o/a;)V
    .locals 1
    .param p1    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcCoreSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    iput-object p2, p0, Le/a/c/b/k;->c:Le/a/p5/g;

    iput-object p3, p0, Le/a/c/b/k;->d:Le/a/b0/e/l;

    iput-object p4, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    iput-object p5, p0, Le/a/c/b/k;->f:Le/a/c/b/e;

    iput-object p6, p0, Le/a/c/b/k;->g:Le/a/b0/o/a;

    .line 2
    invoke-interface {p5}, Le/a/c/b/e;->c()Z

    move-result p1

    iput-boolean p1, p0, Le/a/c/b/k;->a:Z

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->I3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xf4

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->R0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x5f

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->f:Le/a/c/b/e;

    invoke-interface {v0}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SE"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/b/k;->f:Le/a/c/b/e;

    invoke-interface {v0}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EG"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->K1:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x8c

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    const-string v1, "featureMessageTranslationForSwedish"

    invoke-interface {v0, v1}, Le/a/c/c0/o;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public D()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->J0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x56

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    const-string v1, "featureInsightsUpdates"

    .line 5
    invoke-interface {v0, v1}, Le/a/c/c0/o;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->a3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xd0

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->i0()Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->i0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->z0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x4c

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    const-string v1, "featureInsightsSmartCards"

    invoke-interface {v0, v1}, Le/a/c/c0/o;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->i0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->I1:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x8a

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    const-string v1, "featureInsightsBusinessTab"

    invoke-interface {v0, v1}, Le/a/c/c0/o;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->a0()Z

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->E0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x51

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public M()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->i0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/c/b/k;->g:Le/a/b0/o/a;

    const-string v3, "featureOTPNotificationEnabled"

    invoke-interface {v0, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3
    iget-object v3, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 4
    iget-object v4, v3, Le/a/u3/g;->w0:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x49

    aget-object v5, v5, v6

    invoke-virtual {v4, v3, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Le/a/c/b/k;->a:Z

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Le/a/c/b/k;->H()Z

    move-result v1

    :goto_1
    return v1
.end method

.method public N()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->Q0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x5e

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->O0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x5c

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public P(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    invoke-interface {v0, p1}, Le/a/c/c0/o;->t(Z)V

    return-void
.end method

.method public Q()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->i0()Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->x()Z

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->c()Z

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->D0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x50

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    const-string v1, "featureInsightsSemiCard"

    invoke-interface {v0, v1}, Le/a/c/c0/o;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public U()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->K0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x57

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    const-string v1, "featureInsightsUpdatesImportantTab"

    .line 5
    invoke-interface {v0, v1}, Le/a/c/c0/o;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->B0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x4e

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->i0()Z

    move-result v0

    return v0
.end method

.method public X()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->I0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x55

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public Y()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->s0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x45

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public Z()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->i0()Z

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/c/b/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->T:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    const-string v1, "featureInsightsWomenHelpline"

    invoke-interface {v0, v1}, Le/a/c/c0/o;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->R:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    const-string v1, "featureInsightsCustomSmartNotifications"

    invoke-interface {v0, v1}, Le/a/c/c0/o;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->I()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le/a/c/b/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->B0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->U0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x62

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->c3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xd2

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public d0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->Q:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x27

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->C0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x4f

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public e0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->t0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x46

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->h()V

    return-void
.end method

.method public f0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->I0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x55

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->i0()Z

    move-result v0

    return v0
.end method

.method public g0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->L0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x58

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->x0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x4a

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/c/b/k;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h0(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/b0/q/n;->e(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public i()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->M0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x59

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final i0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->H0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x54

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    const-string v1, "featureInsights"

    invoke-interface {v0, v1}, Le/a/c/c0/o;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Le/a/c/b/k;->d:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->i0()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->P0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x5d

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    const-string v1, "featureInsightsUpdatesClassifier"

    .line 5
    invoke-interface {v0, v1}, Le/a/c/c0/o;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public l()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->A0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x4d

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/c/b/k;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->O2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xc4

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->T0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x61

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->b3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xd1

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->N0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x5a

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->G0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x53

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->V0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x63

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->F0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x52

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->X()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->y0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x4b

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->c:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Le/a/b0/q/n;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CPH1609"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/c/b/k;->c:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->d3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xd3

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->v0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x48

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/b/k;->e:Le/a/c/c0/o;

    const-string v1, "featureInsightsFinancePage"

    invoke-interface {v0, v1}, Le/a/c/c0/o;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/b/k;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->S0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x60

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/c/b/k;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
