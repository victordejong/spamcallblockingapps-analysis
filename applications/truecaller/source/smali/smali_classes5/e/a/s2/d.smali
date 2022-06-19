.class public final Le/a/s2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/s2/c;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/s2/h/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/l/p2/d2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/s2/i/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Lo3/a<",
            "Le/a/s2/h/e;",
            ">;",
            "Lo3/a<",
            "Le/a/l/p2/d2/b;",
            ">;",
            "Lo3/a<",
            "Le/a/s2/i/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announceCallerIdSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumFeatureManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceStateUtils"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/s2/d;->a:Lo3/a;

    iput-object p2, p0, Le/a/s2/d;->b:Lo3/a;

    iput-object p3, p0, Le/a/s2/d;->c:Lo3/a;

    iput-object p4, p0, Le/a/s2/d;->d:Lo3/a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s2/d;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/i/a;

    invoke-interface {v0}, Le/a/s2/i/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/s2/d;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/h/e;

    invoke-interface {v0}, Le/a/s2/h/e;->g3()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/s2/d;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->w:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/s2/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/p2/d2/b;

    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->ANNOUNCE_CALL:Lcom/truecaller/premium/data/feature/PremiumFeature;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/l/p2/d2/b;->a(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Z

    move-result v0

    return v0
.end method

.method public final d(Le/a/s2/f;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s2/d;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/h/e;

    invoke-interface {v0}, Le/a/s2/h/e;->d1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p1, p1, Le/a/s2/f;->d:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public k(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s2/d;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/h/e;

    invoke-interface {v0}, Le/a/s2/h/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/s2/d;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/h/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/s2/h/e;->r2(Z)V

    .line 3
    iget-object v0, p0, Le/a/s2/d;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/h/e;

    invoke-interface {v0, v1}, Le/a/s2/h/e;->b(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/s2/d;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/h/e;

    invoke-interface {v0, p1}, Le/a/s2/h/e;->k(Z)V

    return-void
.end method

.method public l(Le/a/s2/f;)Z
    .locals 3

    const-string v0, "callerAnnouncementInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/s2/d;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Le/a/s2/d;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Le/a/s2/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, p1, Le/a/s2/f;->c:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/a/s2/d;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/h/e;

    invoke-interface {v0}, Le/a/s2/h/e;->o2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Le/a/s2/d;->d(Le/a/s2/f;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Le/a/s2/d;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Le/a/s2/d;->d(Le/a/s2/f;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Le/a/s2/d;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s2/d;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/h/e;

    invoke-interface {v0}, Le/a/s2/h/e;->W2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/s2/d;->c()Z

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
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s2/d;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/i/a;

    invoke-interface {v0}, Le/a/s2/i/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/s2/d;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/h/e;

    invoke-interface {v0}, Le/a/s2/h/e;->g3()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
