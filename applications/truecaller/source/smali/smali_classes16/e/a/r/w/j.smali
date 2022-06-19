.class public final Le/a/r/w/j;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/r/w/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/r/w/h;",
        ">;",
        "Le/a/r/w/g;"
    }
.end annotation


# instance fields
.field public d:Lcom/truecaller/common/network/country/CountryListDto$a;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final g:Ls1/w/f;

.field public final h:Ls1/w/f;

.field public final i:Le/a/r/c/a0/a;

.field public final j:Le/a/r/c/z;

.field public final k:Le/a/b0/e/r/a;

.field public final l:Le/a/p5/u;

.field public final m:Le/a/r/q/h;

.field public final n:Le/a/r/c/w;

.field public final o:Lcom/truecaller/wizard/WizardVerificationMode;

.field public final p:Le/a/r/w/m;

.field public final q:Le/a/r/z/b0;

.field public final r:Le/a/r/z/d0/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/r/c/a0/a;Le/a/r/c/z;Le/a/b0/e/r/a;Le/a/p5/u;Le/a/r/q/h;Le/a/r/c/w;Lcom/truecaller/wizard/WizardVerificationMode;Le/a/r/w/m;Le/a/r/z/b0;Le/a/r/z/d0/d;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countriesHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardSettingsHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardTracker"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardNumberUtils"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardRegionHelper"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardContextSupportHelper"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/r/w/j;->g:Ls1/w/f;

    iput-object p2, p0, Le/a/r/w/j;->h:Ls1/w/f;

    iput-object p3, p0, Le/a/r/w/j;->i:Le/a/r/c/a0/a;

    iput-object p4, p0, Le/a/r/w/j;->j:Le/a/r/c/z;

    iput-object p5, p0, Le/a/r/w/j;->k:Le/a/b0/e/r/a;

    iput-object p6, p0, Le/a/r/w/j;->l:Le/a/p5/u;

    iput-object p7, p0, Le/a/r/w/j;->m:Le/a/r/q/h;

    iput-object p8, p0, Le/a/r/w/j;->n:Le/a/r/c/w;

    iput-object p9, p0, Le/a/r/w/j;->o:Lcom/truecaller/wizard/WizardVerificationMode;

    iput-object p10, p0, Le/a/r/w/j;->p:Le/a/r/w/m;

    iput-object p11, p0, Le/a/r/w/j;->q:Le/a/r/z/b0;

    iput-object p12, p0, Le/a/r/w/j;->r:Le/a/r/z/d0/d;

    return-void
.end method


# virtual methods
.method public final Ij(Lcom/truecaller/common/network/country/CountryListDto$a;)Ls1/s;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Le/a/r/w/j;->d:Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/r/w/h;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Le/a/r/w/h;->V4(Ljava/lang/String;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method public final Jj(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/r/w/j;->d:Lcom/truecaller/common/network/country/CountryListDto$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_9

    const-string v3, "country"

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    iget-object v5, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/w/h;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Le/a/r/w/h;->Nh()V

    goto :goto_4

    .line 4
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/w/h;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Le/a/r/w/h;->Mb()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/w/h;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Le/a/r/w/h;->Lp()V

    goto :goto_4

    .line 6
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/w/h;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/r/w/h;->e0()V

    .line 7
    :cond_5
    iget-object v0, p0, Le/a/r/w/j;->d:Lcom/truecaller/common/network/country/CountryListDto$a;

    if-eqz v0, :cond_7

    .line 8
    iget-object v3, p0, Le/a/r/w/j;->n:Le/a/r/c/w;

    check-cast v3, Le/a/r/c/x;

    invoke-virtual {v3, p1, v0, v2}, Le/a/r/c/x;->a(Ljava/lang/String;Lcom/truecaller/common/network/country/CountryListDto$a;Z)Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v3, p0, Le/a/r/w/j;->n:Le/a/r/c/w;

    check-cast v3, Le/a/r/c/x;

    invoke-virtual {v3, v0}, Le/a/r/c/x;->b(Lcom/truecaller/common/network/country/CountryListDto$a;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10
    iget-object v3, p0, Le/a/r/w/j;->n:Le/a/r/c/w;

    check-cast v3, Le/a/r/c/x;

    invoke-virtual {v3, p1, v0, v1}, Le/a/r/c/x;->a(Ljava/lang/String;Lcom/truecaller/common/network/country/CountryListDto$a;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, v2

    .line 11
    :goto_2
    iput-object p1, p0, Le/a/r/w/j;->e:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/w/h;

    if-eqz p1, :cond_a

    const/16 v1, 0x2b

    invoke-static {v1}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Le/a/r/w/h;->C6(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 13
    :cond_7
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 14
    :cond_8
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 15
    :cond_9
    :goto_3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/w/h;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Le/a/r/w/h;->zk()V

    :cond_a
    :goto_4
    return-void
.end method

.method public final Kj(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/r/w/j;->d:Lcom/truecaller/common/network/country/CountryListDto$a;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v1, "country.iso ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/r/w/j;->p:Le/a/r/w/m;

    invoke-interface {v1, v0, p1}, Le/a/r/w/m;->b(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/w/h;

    if-eqz p1, :cond_0

    iget-object v1, p0, Le/a/r/w/j;->q:Le/a/r/z/b0;

    sget-object v2, Le/a/r/z/o$c;->e:Le/a/r/z/o$c;

    check-cast v1, Le/a/r/z/c0;

    invoke-virtual {v1, v2, v0}, Le/a/r/z/c0;->b(Le/a/r/z/o;Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/r/w/h;->s8(Z)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/r/w/j;->o:Lcom/truecaller/wizard/WizardVerificationMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/w/h;

    if-eqz p1, :cond_8

    .line 6
    iget-object v0, p0, Le/a/r/w/j;->j:Le/a/r/c/z;

    invoke-interface {v0}, Le/a/r/c/z;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 7
    :goto_0
    iget-object v2, p0, Le/a/r/w/j;->j:Le/a/r/c/z;

    invoke-interface {v2}, Le/a/r/c/z;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v1

    .line 8
    :goto_1
    iget-object v3, p0, Le/a/r/w/j;->j:Le/a/r/c/z;

    invoke-interface {v3}, Le/a/r/c/z;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v1

    .line 9
    :goto_2
    iget-object v4, p0, Le/a/r/w/j;->j:Le/a/r/c/z;

    invoke-interface {v4}, Le/a/r/c/z;->e()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object v1, v4

    .line 10
    :cond_6
    invoke-interface {p1, v0, v2, v3, v1}, Le/a/r/w/h;->Zv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 11
    :cond_7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/w/h;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/r/w/h;->c4()V

    :cond_8
    :goto_3
    return-void

    :cond_9
    const-string p1, "country"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/r/w/h;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    new-instance v4, Le/a/r/w/i;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/r/w/i;-><init>(Le/a/r/w/j;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 5
    iget-object v0, p0, Le/a/r/w/j;->j:Le/a/r/c/z;

    invoke-interface {v0}, Le/a/r/c/z;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 7
    invoke-interface {p1, v0}, Le/a/r/w/h;->setPhoneNumber(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/r/w/j;->j:Le/a/r/c/z;

    invoke-interface {p1}, Le/a/r/c/z;->e()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SIM"

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v0, p0, Le/a/r/w/j;->f:Ljava/lang/String;

    :cond_2
    return-void
.end method
