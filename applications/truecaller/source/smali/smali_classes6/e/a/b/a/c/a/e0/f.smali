.class public final Le/a/b/a/c/a/e0/f;
.super Le/a/b/a/c/a/e0/a;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/c/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/b/a/c/a/e0/a<",
        "Le/a/b/a/c/a/i;",
        ">;",
        "Le/a/b/a/c/a/h;"
    }
.end annotation


# instance fields
.field public h:Lcom/truecaller/placepicker/data/GeocodedPlace;

.field public i:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

.field public final j:Ls1/w/f;

.field public final k:Ls1/w/f;

.field public final l:Le/a/b/a/f/b;

.field public final m:Le/a/k4/o/g;

.field public final n:Le/a/b/a/e/b;

.field public final o:Le/a/p5/c0;

.field public final p:Le/a/b/a/f/f;

.field public final q:Le/a/u3/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/k4/o/g;Le/a/b/a/e/b;Le/a/p5/c0;Le/a/b/a/f/f;Le/a/u3/g;)V
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
    .param p8    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncIoContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessProfileV2Repository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placesRepository"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessAnalyticsManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geolocationRepository"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p1, p3, p6}, Le/a/b/a/c/a/e0/a;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b/a/f/b;Le/a/p5/c0;)V

    iput-object p1, p0, Le/a/b/a/c/a/e0/f;->j:Ls1/w/f;

    iput-object p2, p0, Le/a/b/a/c/a/e0/f;->k:Ls1/w/f;

    iput-object p3, p0, Le/a/b/a/c/a/e0/f;->l:Le/a/b/a/f/b;

    iput-object p4, p0, Le/a/b/a/c/a/e0/f;->m:Le/a/k4/o/g;

    iput-object p5, p0, Le/a/b/a/c/a/e0/f;->n:Le/a/b/a/e/b;

    iput-object p6, p0, Le/a/b/a/c/a/e0/f;->o:Le/a/p5/c0;

    iput-object p7, p0, Le/a/b/a/c/a/e0/f;->p:Le/a/b/a/f/f;

    iput-object p8, p0, Le/a/b/a/c/a/e0/f;->q:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public final Ij(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const v2, 0x186a0

    .line 2
    new-instance v3, Ls1/d0/i;

    const v4, 0xf423f

    invoke-direct {v3, v2, v4}, Ls1/d0/i;-><init>(II)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ls1/d0/i;->d(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    if-nez v1, :cond_3

    .line 3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/a/c/a/i;

    if-eqz v1, :cond_4

    iget-object v2, p0, Le/a/b/a/c/a/e0/f;->o:Le/a/p5/c0;

    sget v3, Lcom/truecaller/bizmon/R$string;->BusinessProfileOnboarding_PincodeNotEntered:I

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026arding_PincodeNotEntered)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/b/a/c/a/i;->dt(Ljava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/a/c/a/i;

    if-eqz v1, :cond_4

    iget-object v2, p0, Le/a/b/a/c/a/e0/f;->o:Le/a/p5/c0;

    sget v3, Lcom/truecaller/bizmon/R$string;->BusinessProfileOnboarding_PincodeInvalidLength:I

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026ing_PincodeInvalidLength)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/b/a/c/a/i;->dt(Ljava/lang/String;)V

    :cond_4
    :goto_2
    move v2, v4

    :goto_3
    if-nez v2, :cond_5

    return-void

    .line 5
    :cond_5
    iget-object v4, p0, Le/a/b/a/c/a/e0/f;->j:Ls1/w/f;

    const/4 v5, 0x0

    new-instance v6, Le/a/b/a/c/a/e0/f$a;

    invoke-direct {v6, p0, p1, v0}, Le/a/b/a/c/a/e0/f$a;-><init>(Le/a/b/a/c/a/e0/f;Ljava/lang/String;Ls1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public K5(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/b/a/c/a/e0/f;->h:Lcom/truecaller/placepicker/data/GeocodedPlace;

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/a/c/a/i;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/b/a/c/a/i;->ql()V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 4
    new-instance v2, Ls1/d0/i;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Ls1/d0/i;-><init>(II)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ls1/d0/i;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-virtual {p0, p1}, Le/a/b/a/c/a/e0/f;->Ij(Ljava/lang/String;)V

    return-void
.end method

.method public Lf()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/f;->n:Le/a/b/a/e/b;

    new-instance v1, Le/a/b/a/e/a$h;

    const-string v2, "PermissionReqShown"

    invoke-direct {v1, v2}, Le/a/b/a/e/a$h;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/b/a/c/a/i;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/b/a/c/a/e0/f;->n:Le/a/b/a/e/b;

    new-instance v0, Le/a/b/a/e/a$h;

    const-string v1, "PincodeShown"

    invoke-direct {v0, v1}, Le/a/b/a/e/a$h;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    return-void
.end method

.method public Y5(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "pincode"

    move-object/from16 v8, p1

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Le/a/b/a/c/a/e0/f;->h:Lcom/truecaller/placepicker/data/GeocodedPlace;

    if-eqz v1, :cond_2

    .line 2
    iget-object v7, v1, Lcom/truecaller/placepicker/data/GeocodedPlace;->g:Ljava/lang/String;

    .line 3
    iget-object v9, v1, Lcom/truecaller/placepicker/data/GeocodedPlace;->f:Ljava/lang/String;

    .line 4
    iget-object v15, v0, Le/a/b/a/c/a/e0/f;->i:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    const-string v14, "businessProfile"

    if-eqz v15, :cond_1

    .line 5
    new-instance v19, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    move-object/from16 v2, v19

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6
    iget-object v11, v1, Lcom/truecaller/placepicker/data/GeocodedPlace;->d:Ljava/lang/Double;

    .line 7
    iget-object v12, v1, Lcom/truecaller/placepicker/data/GeocodedPlace;->e:Ljava/lang/Double;

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    move-object/from16 v20, v14

    move-object v14, v1

    move-object/from16 v21, v15

    move-object v15, v1

    const/16 v16, 0x0

    const/16 v17, 0x3c8f

    const/16 v18, 0x0

    move-object/from16 v8, p1

    .line 8
    invoke-direct/range {v2 .. v18}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;ILs1/z/c/f;)V

    .line 9
    invoke-static/range {v19 .. v19}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-virtual {v2, v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setLocationDetails(Ljava/util/List;)V

    move-object/from16 v1, v20

    .line 10
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v1, v0, Le/a/b/a/c/a/e0/a;->f:Le/a/b/a/f/b;

    invoke-interface {v1, v2}, Le/a/b/a/f/b;->b(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    .line 12
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/a/c/a/i;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/b/a/c/a/i;->Lj()V

    .line 13
    :cond_0
    iget-object v1, v0, Le/a/b/a/c/a/e0/f;->n:Le/a/b/a/e/b;

    sget-object v2, Le/a/b/a/e/a$g;->a:Le/a/b/a/e/a$g;

    invoke-interface {v1, v2}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    goto :goto_0

    :cond_1
    move-object v1, v14

    .line 14
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 15
    :cond_2
    invoke-virtual/range {p0 .. p1}, Le/a/b/a/c/a/e0/f;->Ij(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public Z4()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/f;->n:Le/a/b/a/e/b;

    new-instance v1, Le/a/b/a/e/a$f;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Le/a/b/a/e/a$f;-><init>(Z)V

    invoke-interface {v0, v1}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/b/a/c/a/e0/f;->h:Lcom/truecaller/placepicker/data/GeocodedPlace;

    iget-object v2, p0, Le/a/b/a/c/a/e0/f;->q:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->d0()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Le/a/b/a/c/a/i;->ny(Lcom/truecaller/placepicker/data/GeocodedPlace;Z)V

    :cond_0
    return-void
.end method

.method public b3()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/f;->n:Le/a/b/a/e/b;

    new-instance v1, Le/a/b/a/e/a$f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/b/a/e/a$f;-><init>(Z)V

    invoke-interface {v0, v1}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/b/a/c/a/e0/f;->h:Lcom/truecaller/placepicker/data/GeocodedPlace;

    invoke-interface {v0, v1}, Le/a/b/a/c/a/i;->yq(Lcom/truecaller/placepicker/data/GeocodedPlace;)V

    :cond_0
    return-void
.end method

.method public b4(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 1

    const-string v0, "businessProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b/a/c/a/e0/f;->i:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    return-void
.end method
