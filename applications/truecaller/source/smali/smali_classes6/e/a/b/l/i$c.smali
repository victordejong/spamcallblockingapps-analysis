.class public final Le/a/b/l/i$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/l/i;->b(Lcom/truecaller/profile/data/dto/Profile;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.data.BusinessProfileRepositoryImpl$saveProfile$2"
    f = "BusinessProfileRepository.kt"
    l = {
        0xb9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/b/l/i;

.field public final synthetic g:Lcom/truecaller/profile/data/dto/Profile;


# direct methods
.method public constructor <init>(Le/a/b/l/i;Lcom/truecaller/profile/data/dto/Profile;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/l/i$c;->f:Le/a/b/l/i;

    iput-object p2, p0, Le/a/b/l/i$c;->g:Lcom/truecaller/profile/data/dto/Profile;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/l/i$c;

    iget-object v0, p0, Le/a/b/l/i$c;->f:Le/a/b/l/i;

    iget-object v1, p0, Le/a/b/l/i$c;->g:Lcom/truecaller/profile/data/dto/Profile;

    invoke-direct {p1, v0, v1, p2}, Le/a/b/l/i$c;-><init>(Le/a/b/l/i;Lcom/truecaller/profile/data/dto/Profile;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/l/i$c;

    iget-object v0, p0, Le/a/b/l/i$c;->f:Le/a/b/l/i;

    iget-object v1, p0, Le/a/b/l/i$c;->g:Lcom/truecaller/profile/data/dto/Profile;

    invoke-direct {p1, v0, v1, p2}, Le/a/b/l/i$c;-><init>(Le/a/b/l/i;Lcom/truecaller/profile/data/dto/Profile;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/l/i$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/b/l/i$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/b/l/i$c;->f:Le/a/b/l/i;

    .line 5
    iget-object v2, v2, Le/a/b/l/i;->b:Le/a/m4/c/c;

    .line 6
    iget-object v4, v0, Le/a/b/l/i$c;->g:Lcom/truecaller/profile/data/dto/Profile;

    invoke-interface {v2, v4}, Le/a/m4/c/c;->a(Lcom/truecaller/profile/data/dto/Profile;)Lq3/a/n0;

    move-result-object v2

    iput v3, v0, Le/a/b/l/i$c;->e:I

    invoke-interface {v2, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast v2, Le/a/b0/n/h;

    .line 8
    iget-boolean v1, v2, Le/a/b0/n/h;->a:Z

    if-eqz v1, :cond_b

    .line 9
    iget-object v1, v0, Le/a/b/l/i$c;->f:Le/a/b/l/i;

    iget-object v2, v0, Le/a/b/l/i$c;->g:Lcom/truecaller/profile/data/dto/Profile;

    .line 10
    iget-object v3, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Profile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Profile;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Le/a/l4/k;->c0(Le/a/b0/o/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 12
    iget-object v3, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    .line 13
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/profile/data/dto/Company;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/truecaller/profile/data/dto/Address;->getStreet()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v5

    .line 14
    :goto_1
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v6

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/Company;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/truecaller/profile/data/dto/Address;->getCity()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v5

    .line 15
    :goto_2
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/profile/data/dto/Company;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/truecaller/profile/data/dto/Address;->getZipCode()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_5
    move-object v7, v5

    .line 16
    :goto_3
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v8

    invoke-virtual {v8}, Lcom/truecaller/profile/data/dto/Company;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/truecaller/profile/data/dto/Address;->getLatitude()Ljava/lang/Double;

    move-result-object v8

    goto :goto_4

    :cond_6
    move-object v8, v5

    .line 17
    :goto_4
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v9

    invoke-virtual {v9}, Lcom/truecaller/profile/data/dto/Company;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/truecaller/profile/data/dto/Address;->getLongitude()Ljava/lang/Double;

    move-result-object v9

    goto :goto_5

    :cond_7
    move-object v9, v5

    .line 18
    :goto_5
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v10

    invoke-virtual {v10}, Lcom/truecaller/profile/data/dto/Company;->getName()Ljava/lang/String;

    move-result-object v10

    .line 19
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getOnlineIds()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object v11

    .line 20
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getAvatarUrl()Ljava/lang/String;

    move-result-object v12

    .line 21
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v13

    invoke-virtual {v13}, Lcom/truecaller/profile/data/dto/Company;->getBranding()Lcom/truecaller/profile/data/dto/Branding;

    move-result-object v13

    invoke-virtual {v13}, Lcom/truecaller/profile/data/dto/Branding;->getBackgroundColor()Ljava/lang/String;

    move-result-object v13

    .line 22
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getJobTitle()Ljava/lang/String;

    move-result-object v14

    .line 23
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getTags()Ljava/util/List;

    move-result-object v15

    invoke-static {v15}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 24
    :cond_8
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getAbout()Ljava/lang/String;

    move-result-object v15

    .line 25
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/truecaller/profile/data/dto/Company;->getSize()Ljava/lang/String;

    move-result-object v0

    move-object/from16 p1, v9

    .line 26
    iget-object v9, v1, Le/a/b/l/i;->e:Le/m/e/k;

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v16

    move-object/from16 v17, v8

    invoke-virtual/range {v16 .. v16}, Lcom/truecaller/profile/data/dto/Company;->getOpenHours()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v9, v8}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "gson.toJson(company.openHours)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v1, v1, Le/a/b/l/i;->e:Le/m/e/k;

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Company;->getBranding()Lcom/truecaller/profile/data/dto/Branding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Branding;->getImageUrls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gson.toJson(company.branding.imageUrls)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "$this$persistBusinessProfileData"

    .line 29
    invoke-static {v3, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "companyName"

    invoke-static {v10, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "onlineIds"

    invoke-static {v11, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "backgroundColor"

    invoke-static {v13, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "openingHours"

    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "imageUrls"

    invoke-static {v1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "profileGender"

    move-object/from16 v16, v2

    const-string v2, "N"

    .line 30
    invoke-interface {v3, v9, v2}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "profileStreet"

    .line 31
    invoke-interface {v3, v2, v4}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "profileCity"

    .line 32
    invoke-interface {v3, v2, v6}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "profileZip"

    .line 33
    invoke-interface {v3, v2, v7}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/OnlineIds;->getFacebookId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "profileFacebook"

    invoke-interface {v3, v4, v2}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/OnlineIds;->getTwitterId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "profileTwitter"

    invoke-interface {v3, v4, v2}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/OnlineIds;->getEmail()Ljava/lang/String;

    move-result-object v2

    const-string v4, "profileEmail"

    invoke-interface {v3, v4, v2}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/OnlineIds;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "profileWeb"

    invoke-interface {v3, v4, v2}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "profileAvatar"

    .line 38
    invoke-interface {v3, v2, v12}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "profileBackgroundColor"

    .line 39
    invoke-interface {v3, v2, v13}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "profileCompanyName"

    .line 40
    invoke-interface {v3, v2, v10}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "profileCompanyJob"

    .line 41
    invoke-interface {v3, v2, v14}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "profileTag"

    .line 42
    invoke-interface {v3, v2, v5}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "profileStatus"

    .line 43
    invoke-interface {v3, v2, v15}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "profileSize"

    .line 44
    invoke-interface {v3, v2, v0}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "profileOpeningHours"

    .line 45
    invoke-interface {v3, v0, v8}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "profileImageUrls"

    .line 46
    invoke-interface {v3, v0, v1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "profileAcceptAuto"

    const-string v1, "1"

    .line 47
    invoke-interface {v3, v0, v1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static/range {v16 .. v16}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    const-string v1, "profileBusiness"

    invoke-interface {v3, v1, v0}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v17, :cond_9

    .line 49
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-string v2, "profileLatitude"

    invoke-interface {v3, v2, v0, v1}, Le/a/b0/o/a;->p2(Ljava/lang/String;D)V

    :cond_9
    if-eqz p1, :cond_a

    .line 50
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-string v2, "profileLongitude"

    invoke-interface {v3, v2, v0, v1}, Le/a/b0/o/a;->p2(Ljava/lang/String;D)V

    .line 51
    :cond_a
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    .line 52
    :cond_b
    new-instance v0, Le/a/b/b/c/r$c;

    invoke-direct {v0, v2}, Le/a/b/b/c/r$c;-><init>(Le/a/b0/n/h;)V

    throw v0
.end method
