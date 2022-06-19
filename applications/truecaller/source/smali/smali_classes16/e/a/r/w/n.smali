.class public final Le/a/r/w/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/w/m;


# instance fields
.field public final a:Le/a/b0/e/f;

.field public final b:Le/a/b0/e/r/a;

.field public final c:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/b0/e/f;Le/a/b0/e/r/a;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "regionUtils"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/w/n;->a:Le/a/b0/e/f;

    iput-object p2, p0, Le/a/r/w/n;->b:Le/a/b0/e/r/a;

    iput-object p3, p0, Le/a/r/w/n;->c:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "selectedCountryIso"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "us"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, p1, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/r/w/n;->b:Le/a/b0/e/r/a;

    const-string v2, "featureRegionC_qa"

    invoke-interface {v0, v2}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Le/a/r/w/n;->a:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Le/a/r/w/n;->c:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->S()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 5

    const-string v0, "selectedCountryIso"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r/w/n;->a:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v0

    const-string v1, "us"

    const/4 v2, 0x1

    .line 2
    invoke-static {v1, p1, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    sget-object p1, Lcom/truecaller/common/account/Region;->REGION_C:Lcom/truecaller/common/account/Region;

    goto :goto_0

    :cond_0
    const-string p2, "za"

    .line 3
    invoke-static {p2, p1, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/truecaller/common/account/Region;->REGION_ZA:Lcom/truecaller/common/account/Region;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Le/a/r/w/n;->c:Le/a/u3/g;

    .line 5
    iget-object v1, p2, Le/a/u3/g;->J2:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0xbf

    aget-object v3, v3, v4

    invoke-virtual {v1, p2, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "br"

    invoke-static {p2, p1, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Lcom/truecaller/common/account/Region;->REGION_BR:Lcom/truecaller/common/account/Region;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Le/a/r/w/n;->a:Le/a/b0/e/f;

    invoke-interface {p2, p1}, Le/a/b0/e/f;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/truecaller/common/account/Region;->REGION_1:Lcom/truecaller/common/account/Region;

    goto :goto_0

    .line 8
    :cond_3
    sget-object p1, Lcom/truecaller/common/account/Region;->REGION_2:Lcom/truecaller/common/account/Region;

    :goto_0
    if-ne v0, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
