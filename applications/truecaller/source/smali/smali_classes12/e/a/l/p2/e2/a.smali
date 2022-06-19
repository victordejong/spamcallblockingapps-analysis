.class public final Le/a/l/p2/e2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/z0;


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/b0/o/a;

.field public final c:Le/a/h0/m;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/b0/o/a;Le/a/h0/m;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/e2/a;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/l/p2/e2/a;->b:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/p2/y0;)V
    .locals 5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "update"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v1, p1, Le/a/l/p2/y0;->a:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 2
    iget-object v1, p0, Le/a/l/p2/e2/a;->a:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->l()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {v1}, Le/a/h0/m;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {v1, v3}, Le/a/h0/m;->k(Z)V

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 4
    :goto_0
    iget-object v4, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {v4}, Le/a/h0/m;->h()Ljava/lang/Boolean;

    move-result-object v4

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iget-object v1, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Le/a/h0/m;->t(Ljava/lang/Boolean;)V

    move v1, v2

    .line 7
    :cond_1
    iget-object v4, p0, Le/a/l/p2/e2/a;->a:Le/a/u3/g;

    invoke-virtual {v4}, Le/a/u3/g;->k()Le/a/u3/b;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/b;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {v4}, Le/a/h0/m;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    iget-object v1, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {v1, v3}, Le/a/h0/m;->m(Z)V

    move v1, v2

    .line 9
    :cond_2
    iget-object v4, p0, Le/a/l/p2/e2/a;->a:Le/a/u3/g;

    invoke-virtual {v4}, Le/a/u3/g;->g()Le/a/u3/b;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/b;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {v4}, Le/a/h0/m;->x()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    iget-object v1, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {v1, v3}, Le/a/h0/m;->g(Z)V

    move v1, v2

    .line 11
    :cond_3
    iget-object v4, p0, Le/a/l/p2/e2/a;->a:Le/a/u3/g;

    invoke-virtual {v4}, Le/a/u3/g;->j()Le/a/u3/b;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/b;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {v4}, Le/a/h0/m;->f()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    iget-object v1, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {v1, v3}, Le/a/h0/m;->o(Z)V

    move v1, v2

    .line 13
    :cond_4
    iget-object v4, p0, Le/a/l/p2/e2/a;->a:Le/a/u3/g;

    invoke-virtual {v4}, Le/a/u3/g;->h()Le/a/u3/b;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/b;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {v4}, Le/a/h0/m;->r()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 14
    iget-object v1, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {v1, v3}, Le/a/h0/m;->j(Z)V

    move v1, v2

    .line 15
    :cond_5
    iget-object v4, p0, Le/a/l/p2/e2/a;->a:Le/a/u3/g;

    invoke-virtual {v4}, Le/a/u3/g;->i()Le/a/u3/b;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/b;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {v4}, Le/a/h0/m;->s()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 16
    iget-object v1, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {v1, v3}, Le/a/h0/m;->a(Z)V

    move v1, v2

    :cond_6
    if-eqz v1, :cond_7

    .line 17
    iget-object v1, p0, Le/a/l/p2/e2/a;->b:Le/a/b0/o/a;

    const-string v3, "premiumHadPremiumBlockingFeatures"

    invoke-interface {v1, v3, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    :cond_7
    iget-object p1, p1, Le/a/l/p2/y0;->e:Le/a/l/p2/x;

    .line 19
    iget-boolean p1, p1, Le/a/l/p2/x;->j:Z

    xor-int/2addr p1, v2

    if-eqz p1, :cond_8

    .line 20
    iget-object p1, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->h()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_8

    .line 21
    iget-object p1, p0, Le/a/l/p2/e2/a;->c:Le/a/h0/m;

    invoke-interface {p1, v0}, Le/a/h0/m;->t(Ljava/lang/Boolean;)V

    :cond_8
    return-void
.end method
