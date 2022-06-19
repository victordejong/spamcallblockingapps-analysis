.class public final Le/a/b/a/c/a/e0/e;
.super Le/a/b/a/c/a/e0/a;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/c/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/b/a/c/a/e0/a<",
        "Le/a/b/a/c/a/g;",
        ">;",
        "Le/a/b/a/c/a/f;"
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

.field public final o:Le/a/u3/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;Le/a/b/a/e/b;Le/a/m4/c/i/a/b;Le/a/u3/g;)V
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
    .param p7    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
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

    const-string v0, "featuresRegistry"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/a/b/a/c/a/e0/a;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;)V

    iput-object p1, p0, Le/a/b/a/c/a/e0/e;->i:Ls1/w/f;

    iput-object p2, p0, Le/a/b/a/c/a/e0/e;->j:Ls1/w/f;

    iput-object p3, p0, Le/a/b/a/c/a/e0/e;->k:Le/a/b/a/f/b;

    iput-object p4, p0, Le/a/b/a/c/a/e0/e;->l:Le/a/p5/c0;

    iput-object p5, p0, Le/a/b/a/c/a/e0/e;->m:Le/a/b/a/e/b;

    iput-object p6, p0, Le/a/b/a/c/a/e0/e;->n:Le/a/m4/c/i/a/b;

    iput-object p7, p0, Le/a/b/a/c/a/e0/e;->o:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public O0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/b/a/c/a/e0/e;->o:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->d0()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/b/a/c/a/g;->gf(Z)V

    :cond_0
    return-void
.end method

.method public Va(Lcom/truecaller/placepicker/data/GeocodedPlace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "bldgName"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "landmark"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 1
    iget-object v5, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/b/a/c/a/g;

    if-eqz v5, :cond_0

    sget v6, Lcom/truecaller/bizmon/R$string;->BusinessProfileOnboarding_AddressUnavailable:I

    invoke-interface {v5, v6}, Le/a/b/a/c/a/g;->Rk(I)V

    :cond_0
    move v5, v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    .line 2
    :goto_0
    invoke-static/range {p2 .. p2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3
    iget-object v5, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/b/a/c/a/g;

    if-eqz v5, :cond_2

    sget v6, Lcom/truecaller/bizmon/R$string;->BusinessProfileOnboarding_BldgNameEmpty:I

    invoke-interface {v5, v6}, Le/a/b/a/c/a/g;->qq(I)V

    :cond_2
    move v5, v4

    goto :goto_1

    .line 4
    :cond_3
    iget-object v6, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v6, Le/a/b/a/c/a/g;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Le/a/b/a/c/a/g;->Zb()V

    :cond_4
    :goto_1
    if-eqz v5, :cond_b

    .line 5
    iget-object v5, v0, Le/a/b/a/c/a/e0/e;->m:Le/a/b/a/e/b;

    sget-object v6, Le/a/b/a/e/a$d;->a:Le/a/b/a/e/a$d;

    invoke-interface {v5, v6}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    .line 6
    iget-object v5, v0, Le/a/b/a/c/a/e0/e;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    const-string v6, "businessProfile"

    const/4 v7, 0x0

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getLocationDetails()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance v4, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    move-object v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

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

    const/16 v23, 0x3fff

    const/16 v24, 0x0

    invoke-direct/range {v8 .. v24}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;ILs1/z/c/f;)V

    .line 7
    :goto_2
    invoke-virtual {v4, v2}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->setAddressLine1(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 8
    iget-object v2, v1, Lcom/truecaller/placepicker/data/GeocodedPlace;->a:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v2, v7

    .line 9
    :goto_3
    invoke-virtual {v4, v2}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->setAddressLine2(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    .line 10
    iget-object v2, v1, Lcom/truecaller/placepicker/data/GeocodedPlace;->d:Ljava/lang/Double;

    goto :goto_4

    :cond_7
    move-object v2, v7

    .line 11
    :goto_4
    invoke-virtual {v4, v2}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->setLatitude(Ljava/lang/Double;)V

    if-eqz v1, :cond_8

    .line 12
    iget-object v1, v1, Lcom/truecaller/placepicker/data/GeocodedPlace;->e:Ljava/lang/Double;

    goto :goto_5

    :cond_8
    move-object v1, v7

    .line 13
    :goto_5
    invoke-virtual {v4, v1}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->setLongitude(Ljava/lang/Double;)V

    .line 14
    invoke-virtual {v4, v3}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->setLandmark(Ljava/lang/String;)V

    .line 15
    iget-object v1, v0, Le/a/b/a/c/a/e0/e;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-eqz v1, :cond_9

    .line 16
    invoke-static {v4}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setLocationDetails(Ljava/util/List;)V

    .line 17
    iput-object v1, v0, Le/a/b/a/c/a/e0/e;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    .line 18
    invoke-virtual {v0, v1}, Le/a/b/a/c/a/e0/a;->A(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    goto :goto_6

    .line 19
    :cond_9
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    .line 20
    :cond_a
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    :cond_b
    :goto_6
    return-void
.end method

.method public b4(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 1

    const-string v0, "businessProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b/a/c/a/e0/e;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    return-void
.end method

.method public i2()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/e;->m:Le/a/b/a/e/b;

    sget-object v1, Le/a/b/a/e/a$e;->a:Le/a/b/a/e/a$e;

    invoke-interface {v0, v1}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    return-void
.end method

.method public q1()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/e;->n:Le/a/m4/c/i/a/b;

    iget-object v1, p0, Le/a/b/a/c/a/e0/e;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Le/a/m4/c/i/a/b;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    return-void

    :cond_0
    const-string v0, "businessProfile"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
