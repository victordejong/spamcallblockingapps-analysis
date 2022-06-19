.class public final Le/a/b/a/a/b/b$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/b/b;->d(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ln3/v/g0<",
        "Le/a/b/l/q<",
        "Ls1/s;",
        ">;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.newBusiness.profile.data.BizProfileRepositoryImpl$updateProfile$1"
    f = "BizProfileRepository.kt"
    l = {
        0x2c,
        0x2e,
        0x32,
        0x34
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/b/a/a/b/b;

.field public final synthetic h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;


# direct methods
.method public constructor <init>(Le/a/b/a/a/b/b;Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/b/b$e;->g:Le/a/b/a/a/b/b;

    iput-object p2, p0, Le/a/b/a/a/b/b$e;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/a/a/b/b$e;

    iget-object v1, p0, Le/a/b/a/a/b/b$e;->g:Le/a/b/a/a/b/b;

    iget-object v2, p0, Le/a/b/a/a/b/b$e;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;

    invoke-direct {v0, v1, v2, p2}, Le/a/b/a/a/b/b$e;-><init>(Le/a/b/a/a/b/b;Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/a/a/b/b$e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/a/a/b/b$e;

    iget-object v1, p0, Le/a/b/a/a/b/b$e;->g:Le/a/b/a/a/b/b;

    iget-object v2, p0, Le/a/b/a/a/b/b$e;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;

    invoke-direct {v0, v1, v2, p2}, Le/a/b/a/a/b/b$e;-><init>(Le/a/b/a/a/b/b;Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/a/a/b/b$e;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/b/a/a/b/b$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Le/a/b/a/a/b/b$e;->f:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    iget-object v3, v0, Le/a/b/a/a/b/b$e;->e:Ljava/lang/Object;

    check-cast v3, Ln3/v/g0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto :goto_2

    :cond_3
    iget-object v3, v0, Le/a/b/a/a/b/b$e;->e:Ljava/lang/Object;

    check-cast v3, Ln3/v/g0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v3, v0, Le/a/b/a/a/b/b$e;->e:Ljava/lang/Object;

    check-cast v3, Ln3/v/g0;

    .line 4
    new-instance v9, Le/a/b/l/q$b;

    invoke-direct {v9}, Le/a/b/l/q$b;-><init>()V

    iput-object v3, v0, Le/a/b/a/a/b/b$e;->e:Ljava/lang/Object;

    iput v7, v0, Le/a/b/a/a/b/b$e;->f:I

    invoke-interface {v3, v9, v0}, Ln3/v/g0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_5

    return-object v2

    .line 5
    :cond_5
    :goto_1
    iget-object v9, v0, Le/a/b/a/a/b/b$e;->g:Le/a/b/a/a/b/b;

    .line 6
    iget-object v9, v9, Le/a/b/a/a/b/b;->b:Le/a/b/a/a/b/d/b;

    .line 7
    iget-object v10, v0, Le/a/b/a/a/b/b$e;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;

    iput-object v3, v0, Le/a/b/a/a/b/b$e;->e:Ljava/lang/Object;

    iput v6, v0, Le/a/b/a/a/b/b$e;->f:I

    .line 8
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v6, Le/a/b/a/a/b/d/e;

    invoke-direct {v6, v9, v10, v8}, Le/a/b/a/a/b/d/e;-><init>(Le/a/b/a/a/b/d/b;Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;Ls1/w/d;)V

    invoke-static {v6, v0}, Le/a/n/g0;->P(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_6

    return-object v2

    .line 10
    :cond_6
    :goto_2
    check-cast v6, Le/a/b/a/a/b/d/a;

    .line 11
    instance-of v9, v6, Le/a/b/a/a/b/d/a$c;

    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    instance-of v9, v6, Le/a/b/a/a/b/d/a$a;

    if-eqz v9, :cond_13

    .line 12
    :goto_3
    iget-object v4, v0, Le/a/b/a/a/b/b$e;->g:Le/a/b/a/a/b/b;

    .line 13
    iget-object v4, v4, Le/a/b/a/a/b/b;->a:Le/a/b/a/a/b/c/a;

    .line 14
    iget-object v6, v0, Le/a/b/a/a/b/b$e;->h:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;

    const-string v7, "$this$toBusinessProfile"

    .line 15
    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v7, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1ff

    const/16 v20, 0x0

    move-object v9, v7

    invoke-direct/range {v9 .. v20}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;ILs1/z/c/f;)V

    .line 17
    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setName(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getAbout()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setAbout(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getTags()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setTags(Ljava/util/List;)V

    .line 20
    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getFacebookId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getEmail()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getTwitterId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 21
    :cond_8
    invoke-virtual {v7}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getOnlineIds()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    move-result-object v9

    if-eqz v9, :cond_9

    goto :goto_4

    :cond_9
    new-instance v9, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xf

    const/16 v16, 0x0

    move-object v10, v9

    invoke-direct/range {v10 .. v16}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILs1/z/c/f;)V

    :goto_4
    invoke-virtual {v7, v9}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setOnlineIds(Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;)V

    .line 22
    invoke-virtual {v7}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getOnlineIds()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getFacebookId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->setFacebookId(Ljava/lang/String;)V

    .line 23
    :cond_a
    invoke-virtual {v7}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getOnlineIds()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getEmail()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->setEmail(Ljava/lang/String;)V

    .line 24
    :cond_b
    invoke-virtual {v7}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getOnlineIds()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->setUrl(Ljava/lang/String;)V

    .line 25
    :cond_c
    invoke-virtual {v7}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getOnlineIds()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getTwitterId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->setTwitterId(Ljava/lang/String;)V

    .line 26
    :cond_d
    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getLocationDetails()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setLocationDetails(Ljava/util/List;)V

    .line 27
    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setSize(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getPaymentIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setPaymentIdentifier(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getLogo()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getBackgroundColor()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getImageUrls()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 30
    :cond_e
    invoke-virtual {v7}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getBranding()Lcom/truecaller/profile/data/dto/businessV2/Branding;

    move-result-object v9

    if-eqz v9, :cond_f

    goto :goto_5

    :cond_f
    new-instance v9, Lcom/truecaller/profile/data/dto/businessV2/Branding;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x7

    const/4 v15, 0x0

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Lcom/truecaller/profile/data/dto/businessV2/Branding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILs1/z/c/f;)V

    :goto_5
    invoke-virtual {v7, v9}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->setBranding(Lcom/truecaller/profile/data/dto/businessV2/Branding;)V

    .line 31
    invoke-virtual {v7}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getBranding()Lcom/truecaller/profile/data/dto/businessV2/Branding;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getLogo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->setLogo(Ljava/lang/String;)V

    .line 32
    :cond_10
    invoke-virtual {v7}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getBranding()Lcom/truecaller/profile/data/dto/businessV2/Branding;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getBackgroundColor()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->setBackgroundColor(Ljava/lang/String;)V

    .line 33
    :cond_11
    invoke-virtual {v7}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getBranding()Lcom/truecaller/profile/data/dto/businessV2/Branding;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;->getImageUrls()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->setImageUrls(Ljava/util/List;)V

    .line 34
    :cond_12
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "bizProfile"

    invoke-static {v7, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v4, v4, Le/a/b/a/a/b/c/a;->b:Le/a/m4/c/i/a/b;

    invoke-interface {v4, v7}, Le/a/m4/c/i/a/b;->f(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    .line 36
    new-instance v4, Le/a/b/l/q$c;

    invoke-direct {v4, v1}, Le/a/b/l/q$c;-><init>(Ljava/lang/Object;)V

    iput-object v8, v0, Le/a/b/a/a/b/b$e;->e:Ljava/lang/Object;

    iput v5, v0, Le/a/b/a/a/b/b$e;->f:I

    invoke-interface {v3, v4, v0}, Ln3/v/g0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_14

    return-object v2

    .line 37
    :cond_13
    instance-of v5, v6, Le/a/b/a/a/b/d/a$b;

    if-eqz v5, :cond_14

    new-instance v5, Le/a/b/l/q$a;

    check-cast v6, Le/a/b/a/a/b/d/a$b;

    invoke-static {v6}, Le/a/n/g0;->H(Le/a/b/a/a/b/d/a$b;)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9, v6, v7}, Le/a/b/l/q$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Le/a/b/a/a/b/d/a$b;I)V

    iput-object v8, v0, Le/a/b/a/a/b/b$e;->e:Ljava/lang/Object;

    iput v4, v0, Le/a/b/a/a/b/b$e;->f:I

    invoke-interface {v3, v5, v0}, Ln3/v/g0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_14

    return-object v2

    :cond_14
    :goto_6
    return-object v1
.end method
