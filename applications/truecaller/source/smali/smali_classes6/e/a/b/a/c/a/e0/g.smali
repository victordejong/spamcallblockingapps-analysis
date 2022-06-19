.class public final Le/a/b/a/c/a/e0/g;
.super Le/a/b/a/c/a/e0/a;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/c/a/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/b/a/c/a/e0/a<",
        "Le/a/b/a/c/a/k;",
        ">;",
        "Le/a/b/a/c/a/j;"
    }
.end annotation


# instance fields
.field public h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

.field public final i:Ls1/w/f;

.field public final j:Ls1/w/f;

.field public final k:Le/a/b/a/f/b;

.field public final l:Le/a/p5/c0;

.field public final m:Le/a/b/a/e/b;

.field public final n:Le/a/m4/c/i/a/b;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;Le/a/b/a/e/b;Le/a/m4/c/i/a/b;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessProfileV2Repository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessAnalyticsManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizProfileLocalFileManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/a/b/a/c/a/e0/a;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;)V

    iput-object p1, p0, Le/a/b/a/c/a/e0/g;->i:Ls1/w/f;

    iput-object p2, p0, Le/a/b/a/c/a/e0/g;->j:Ls1/w/f;

    iput-object p3, p0, Le/a/b/a/c/a/e0/g;->k:Le/a/b/a/f/b;

    iput-object p4, p0, Le/a/b/a/c/a/e0/g;->l:Le/a/p5/c0;

    iput-object p5, p0, Le/a/b/a/c/a/e0/g;->m:Le/a/b/a/e/b;

    iput-object p6, p0, Le/a/b/a/c/a/e0/g;->n:Le/a/m4/c/i/a/b;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/b/a/c/a/k;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/b/a/c/a/e0/g;->m:Le/a/b/a/e/b;

    new-instance v0, Le/a/b/a/e/a$h;

    const-string v1, "ManualFormShown"

    invoke-direct {v0, v1}, Le/a/b/a/e/a$h;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    return-void
.end method

.method public b4(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 1

    const-string v0, "businessProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b/a/c/a/e0/g;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    return-void
.end method

.method public o9(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 3

    const-string v0, "businessProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getLocationDetails()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/k;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getZipCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Le/a/b/a/c/a/k;->Ql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public q1()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/g;->n:Le/a/m4/c/i/a/b;

    iget-object v1, p0, Le/a/b/a/c/a/e0/g;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Le/a/m4/c/i/a/b;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    return-void

    :cond_0
    const-string v0, "businessProfile"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public rf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "pincode"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "street"

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "landmark"

    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "city"

    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "state"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static/range {p2 .. p2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 2
    iget-object v6, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v6, Le/a/b/a/c/a/k;

    if-eqz v6, :cond_0

    iget-object v8, v0, Le/a/b/a/c/a/e0/g;->l:Le/a/p5/c0;

    sget v9, Lcom/truecaller/bizmon/R$string;->BusinessProfileOnboarding_StreetInvalidGenericError:I

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "resourceProvider.getStri\u2026treetInvalidGenericError)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Le/a/b/a/c/a/k;->zu(Ljava/lang/String;)V

    :cond_0
    move v6, v7

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    .line 3
    :goto_0
    invoke-static/range {p4 .. p4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4
    iget-object v6, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v6, Le/a/b/a/c/a/k;

    if-eqz v6, :cond_2

    iget-object v8, v0, Le/a/b/a/c/a/e0/g;->l:Le/a/p5/c0;

    sget v9, Lcom/truecaller/bizmon/R$string;->BusinessProfileOnboarding_CityInvalidGenericError:I

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "resourceProvider.getStri\u2026_CityInvalidGenericError)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Le/a/b/a/c/a/k;->r7(Ljava/lang/String;)V

    :cond_2
    move v6, v7

    .line 5
    :cond_3
    invoke-static/range {p5 .. p5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 6
    iget-object v6, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v6, Le/a/b/a/c/a/k;

    if-eqz v6, :cond_4

    iget-object v8, v0, Le/a/b/a/c/a/e0/g;->l:Le/a/p5/c0;

    sget v9, Lcom/truecaller/bizmon/R$string;->BusinessProfileOnboarding_StateInvalidGenericError:I

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "resourceProvider.getStri\u2026StateInvalidGenericError)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Le/a/b/a/c/a/k;->Y8(Ljava/lang/String;)V

    :cond_4
    move v6, v7

    :cond_5
    if-eqz v6, :cond_9

    .line 7
    iget-object v6, v0, Le/a/b/a/c/a/e0/g;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    const-string v8, "businessProfile"

    const/4 v9, 0x0

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getLocationDetails()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    new-instance v6, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    move-object v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3fff

    const/16 v26, 0x0

    invoke-direct/range {v10 .. v26}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;ILs1/z/c/f;)V

    .line 8
    :goto_1
    invoke-virtual {v6, v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->setZipCode(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v6, v2}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->setStreet(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v6, v3}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->setLandmark(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v6, v4}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->setCity(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v6, v5}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->setState(Ljava/lang/String;)V

    .line 13
    iget-object v1, v0, Le/a/b/a/c/a/e0/g;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-eqz v1, :cond_7

    .line 14
    invoke-static {v6}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setLocationDetails(Ljava/util/List;)V

    .line 15
    iput-object v1, v0, Le/a/b/a/c/a/e0/g;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    .line 16
    invoke-virtual {v0, v1}, Le/a/b/a/c/a/e0/a;->A(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    .line 17
    iget-object v1, v0, Le/a/b/a/c/a/e0/g;->m:Le/a/b/a/e/b;

    sget-object v2, Le/a/b/a/e/a$i;->a:Le/a/b/a/e/a$i;

    invoke-interface {v1, v2}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    goto :goto_2

    .line 18
    :cond_7
    invoke-static {v8}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 19
    :cond_8
    invoke-static {v8}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_9
    :goto_2
    return-void
.end method
