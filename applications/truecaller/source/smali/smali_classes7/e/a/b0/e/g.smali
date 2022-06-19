.class public final Le/a/b0/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/e/f;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/r/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c3/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/b0/e/r/a;",
            ">;",
            "Lo3/a<",
            "Le/a/c3/a;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truecallerAccountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionCConsentRequired"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionBrConsentEnabled"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionZaConsentEnabled"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/e/g;->a:Lo3/a;

    iput-object p2, p0, Le/a/b0/e/g;->b:Lo3/a;

    iput-object p3, p0, Le/a/b0/e/g;->c:Lo3/a;

    iput-object p4, p0, Le/a/b0/e/g;->d:Ljavax/inject/Provider;

    iput-object p5, p0, Le/a/b0/e/g;->e:Ljavax/inject/Provider;

    iput-object p6, p0, Le/a/b0/e/g;->f:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/e/g;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/r/a;

    const-string v1, "featureRegionC_qa"

    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/b0/e/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b0/e/g;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/r/a;

    const-string v1, "region_c_accepted"

    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;)Z

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
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b0/e/g;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/r/a;

    const-string v1, "useUkLogo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/b0/e/g;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c3/a;

    invoke-interface {v0}, Le/a/c3/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0}, Le/a/b0/e/g;->h()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gb"

    invoke-static {v2, v0, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, v1}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object p1

    .line 3
    iget p1, p1, Le/m/f/a/o;->b:I

    .line 4
    invoke-virtual {v0, p1}, Le/m/f/a/j;->y(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Le/a/b0/e/g;->e(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :catch_0
    :cond_0
    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public d()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/b0/e/g;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/r/a;

    const-string v1, "featureRegion1_qa"

    .line 2
    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v1, "key_region_1_timestamp"

    const-wide/16 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2, v3}, Le/a/b0/e/r/a;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    const-string v1, "featureRegion1"

    .line 4
    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/a/b0/e/g;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Le/a/b0/e/g;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "countryIso"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/b0/e/e;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {v1, p1, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public f()Lcom/truecaller/common/account/Region;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/b0/e/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/truecaller/common/account/Region;->REGION_C:Lcom/truecaller/common/account/Region;

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/b0/e/g;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "regionZaConsentEnabled.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Le/a/b0/e/g;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/r/a;

    const-string v3, "featureRegionZa_qa"

    invoke-interface {v0, v3, v1}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Le/a/b0/e/g;->h()Ljava/lang/String;

    move-result-object v0

    const-string v3, "za"

    invoke-static {v3, v0, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Lcom/truecaller/common/account/Region;->REGION_ZA:Lcom/truecaller/common/account/Region;

    goto :goto_1

    .line 6
    :cond_3
    iget-object v0, p0, Le/a/b0/e/g;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "regionBrConsentEnabled.get()"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Le/a/b0/e/g;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/r/a;

    const-string v3, "featureRegionBr_qa"

    invoke-interface {v0, v3, v1}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p0}, Le/a/b0/e/g;->h()Ljava/lang/String;

    move-result-object v0

    const-string v3, "br"

    invoke-static {v3, v0, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    if-eqz v1, :cond_6

    .line 9
    sget-object v0, Lcom/truecaller/common/account/Region;->REGION_BR:Lcom/truecaller/common/account/Region;

    goto :goto_1

    .line 10
    :cond_6
    invoke-virtual {p0}, Le/a/b0/e/g;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/truecaller/common/account/Region;->REGION_1:Lcom/truecaller/common/account/Region;

    goto :goto_1

    .line 11
    :cond_7
    sget-object v0, Lcom/truecaller/common/account/Region;->REGION_2:Lcom/truecaller/common/account/Region;

    :goto_1
    return-object v0
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b0/e/g;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/r/a;

    const-string v1, "featureRegionC_qa"

    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/b0/e/g;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "regionCConsentRequired.get()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/b0/e/g;->h()Ljava/lang/String;

    move-result-object v0

    const-string v2, "us"

    invoke-static {v2, v0, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/e/g;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/b0/e/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/b0/e/g;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/r/a;

    const-string v1, "profileCountryIso"

    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
