.class public final Le/a/b/b/c/q;
.super Le/a/u2/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/b/b/c/p;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public d:Lcom/truecaller/profile/data/dto/Profile;

.field public e:Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;

.field public f:Z

.field public g:Ljava/lang/Integer;

.field public h:Z

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public final k:Le/a/b/l/h;

.field public final l:Le/a/b/l/a;

.field public final m:Le/a/b/b/c/d;

.field public final n:Le/a/b0/e/f;

.field public final o:Ls1/w/f;

.field public final p:Le/a/u3/g;

.field public final q:Le/a/g5/p;

.field public final r:Le/a/d3/h;

.field public final s:Le/a/b0/n/b;


# direct methods
.method public constructor <init>(Le/a/b/l/h;Le/a/b/l/a;Le/a/b/b/c/d;Le/a/b0/e/f;Ls1/w/f;Le/a/u3/g;Le/a/g5/p;Le/a/d3/h;Le/a/b0/n/b;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p6    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessProfileAnalyticsManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ui"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDisplayUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessCardRepository"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileErrorMessageHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p5}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/b/b/c/q;->k:Le/a/b/l/h;

    iput-object p2, p0, Le/a/b/b/c/q;->l:Le/a/b/l/a;

    iput-object p3, p0, Le/a/b/b/c/q;->m:Le/a/b/b/c/d;

    iput-object p4, p0, Le/a/b/b/c/q;->n:Le/a/b0/e/f;

    iput-object p5, p0, Le/a/b/b/c/q;->o:Ls1/w/f;

    iput-object p6, p0, Le/a/b/b/c/q;->p:Le/a/u3/g;

    iput-object p7, p0, Le/a/b/b/c/q;->q:Le/a/g5/p;

    iput-object p8, p0, Le/a/b/b/c/q;->r:Le/a/d3/h;

    iput-object p9, p0, Le/a/b/b/c/q;->s:Le/a/b0/n/b;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/b/b/c/q;->i:Ljava/util/List;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Le/a/b/b/c/q;->j:I

    return-void
.end method


# virtual methods
.method public Ij()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/b/b/c/p;->a0()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/b/b/c/q;->d:Lcom/truecaller/profile/data/dto/Profile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/Company;->getBranding()Lcom/truecaller/profile/data/dto/Branding;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    iget-object v2, p0, Le/a/b/b/c/q;->d:Lcom/truecaller/profile/data/dto/Profile;

    if-eqz v2, :cond_1

    iput-object v2, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    new-instance v6, Le/a/b/b/c/q$a;

    invoke-direct {v6, p0, v0, v1}, Le/a/b/b/c/q$a;-><init>(Le/a/b/b/c/q;Ls1/z/c/c0;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_3

    sget v2, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorCreatingProfile:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Le/a/n/g0;->E0(Le/a/b/b/c/p;IZILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public Jj(Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;)V
    .locals 5

    const-string v0, "address"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b/b/c/q;->e:Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;

    .line 2
    iget-object v0, p0, Le/a/b/b/c/q;->l:Le/a/b/l/a;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/b/l/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/b/c/p;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getStreet()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getZipCode()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getCity()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-interface {v1, v2, v3, v4, v0}, Le/a/b/b/c/p;->t8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;->getLongitude()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Le/a/b/b/c/p;->t5(DD)V

    .line 10
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/c/p;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/b/b/c/p;->I5()V

    .line 11
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/c/p;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/b/b/c/p;->w1()V

    :cond_3
    return-void
.end method
