.class public final Le/a/m4/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/b0/o/a;

.field public final c:Le/a/b0/e/r/a;

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/util/Map;Le/a/b0/o/a;Le/a/b0/e/r/a;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Le/a/b0/o/a;",
            "Le/a/b0/e/r/a;",
            "J)V"
        }
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m4/c/b;->a:Ljava/util/Map;

    iput-object p2, p0, Le/a/m4/c/b;->b:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/m4/c/b;->c:Le/a/b0/e/r/a;

    iput-wide p4, p0, Le/a/m4/c/b;->d:J

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/truecaller/profile/data/dto/Address;
    .locals 8

    const-string v0, "profileStreet"

    .line 1
    invoke-virtual {p0, v0}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "profileCity"

    .line 2
    invoke-virtual {p0, v0}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "profileZip"

    .line 3
    invoke-virtual {p0, v0}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v0, p0, Le/a/m4/c/b;->a:Ljava/util/Map;

    const/4 v1, 0x0

    const-string v5, "profileCountryIso"

    if-eqz v0, :cond_0

    .line 5
    sget-object v6, Le/a/b0/b/m/d;->b:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 7
    :goto_0
    iget-object v6, p0, Le/a/m4/c/b;->c:Le/a/b0/e/r/a;

    const-string v7, ""

    invoke-interface {v6, v5, v7}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    const-string v0, "StringUtils.defaultStrin\u2026String(key, \"\")\n        )"

    .line 8
    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v0, "profileLatitude"

    .line 9
    invoke-virtual {p0, v0}, Le/a/m4/c/b;->b(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v1

    :goto_2
    if-eqz p1, :cond_3

    const-string p1, "profileLongitude"

    .line 10
    invoke-virtual {p0, p1}, Le/a/m4/c/b;->b(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    move-object v7, p1

    goto :goto_3

    :cond_3
    move-object v7, v1

    .line 11
    :goto_3
    new-instance p1, Lcom/truecaller/profile/data/dto/Address;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/truecaller/profile/data/dto/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Double;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/m4/c/b;->b:Le/a/b0/o/a;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Le/a/b0/o/a;->E(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpg-double v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/util/List;Z)Lcom/truecaller/profile/data/dto/Profile;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/truecaller/profile/data/dto/Profile;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "avatarUrl"

    move-object/from16 v7, p1

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tags"

    move-object/from16 v8, p2

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "profileFirstName"

    .line 1
    invoke-virtual {v0, v1}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profileLastName"

    .line 2
    invoke-virtual {v0, v2}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "profileGender"

    .line 3
    invoke-virtual {v0, v2}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_1

    const-string v2, "N"

    :cond_1
    move-object v6, v2

    const-string v2, "profileCompanyName"

    .line 5
    invoke-virtual {v0, v2}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "profileCompanyJob"

    .line 6
    invoke-virtual {v0, v2}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "profileStatus"

    .line 7
    invoke-virtual {v0, v2}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "profileAcceptAuto"

    .line 8
    invoke-virtual {v0, v2}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    .line 9
    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "2"

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "Private"

    goto :goto_2

    :cond_3
    :goto_1
    const-string v2, "Public"

    :goto_2
    move-object v11, v2

    const-string v2, "profileBirthday"

    .line 10
    invoke-virtual {v0, v2}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :cond_4
    move-object v13, v2

    .line 12
    iget-object v2, v0, Le/a/m4/c/b;->b:Le/a/b0/o/a;

    const-string v3, "profileIsCredUser"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz p3, :cond_5

    .line 13
    new-instance v18, Lcom/truecaller/profile/data/dto/Company;

    .line 14
    sget-object v11, Ls1/u/s;->a:Ls1/u/s;

    .line 15
    invoke-virtual {v0, v4}, Le/a/m4/c/b;->a(Z)Lcom/truecaller/profile/data/dto/Address;

    move-result-object v12

    .line 16
    new-instance v13, Lcom/truecaller/profile/data/dto/Branding;

    const-string v2, "profileBackgroundColor"

    invoke-virtual {v0, v2}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2, v11}, Lcom/truecaller/profile/data/dto/Branding;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "profileSize"

    .line 17
    invoke-virtual {v0, v2}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v9, v18

    .line 18
    invoke-direct/range {v9 .. v14}, Lcom/truecaller/profile/data/dto/Company;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/Address;Lcom/truecaller/profile/data/dto/Branding;Ljava/lang/String;)V

    .line 19
    new-instance v10, Lcom/truecaller/profile/data/dto/BusinessData;

    .line 20
    iget-wide v2, v0, Le/a/m4/c/b;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 21
    invoke-virtual/range {p0 .. p0}, Le/a/m4/c/b;->e()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object v9

    move-object v2, v10

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, p2

    move-object v8, v9

    move-object/from16 v9, v18

    .line 22
    invoke-direct/range {v2 .. v9}, Lcom/truecaller/profile/data/dto/BusinessData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;)V

    .line 23
    new-instance v9, Lcom/truecaller/profile/data/dto/Profile;

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, v1

    move-object v4, v15

    move-object v6, v10

    invoke-direct/range {v2 .. v8}, Lcom/truecaller/profile/data/dto/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalData;Lcom/truecaller/profile/data/dto/BusinessData;ILs1/z/c/f;)V

    goto :goto_3

    .line 24
    :cond_5
    new-instance v18, Lcom/truecaller/profile/data/dto/PersonalData;

    .line 25
    iget-wide v3, v0, Le/a/m4/c/b;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 26
    invoke-virtual {v0, v5}, Le/a/m4/c/b;->a(Z)Lcom/truecaller/profile/data/dto/Address;

    move-result-object v5

    .line 27
    invoke-virtual/range {p0 .. p0}, Le/a/m4/c/b;->e()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object v9

    .line 28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v2, v18

    move-object v4, v6

    move-object v6, v9

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v9, v10

    move-object/from16 v10, v16

    move-object/from16 v12, v17

    .line 29
    invoke-direct/range {v2 .. v14}, Lcom/truecaller/profile/data/dto/PersonalData;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/truecaller/profile/data/dto/Address;Lcom/truecaller/profile/data/dto/OnlineIds;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 30
    new-instance v9, Lcom/truecaller/profile/data/dto/Profile;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, v1

    move-object v4, v15

    move-object/from16 v5, v18

    invoke-direct/range {v2 .. v8}, Lcom/truecaller/profile/data/dto/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalData;Lcom/truecaller/profile/data/dto/BusinessData;ILs1/z/c/f;)V

    :goto_3
    return-object v9
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/m4/c/b;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Le/a/b0/b/m/d;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Le/a/m4/c/b;->b:Le/a/b0/o/a;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_1

    move-object v0, p1

    :cond_1
    const-string p1, "StringUtils.defaultStrin\u2026String(key, \"\")\n        )"

    .line 5
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e()Lcom/truecaller/profile/data/dto/OnlineIds;
    .locals 7

    const-string v0, "profileFacebook"

    .line 1
    invoke-virtual {p0, v0}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "profileTwitter"

    .line 2
    invoke-virtual {p0, v0}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "profileEmail"

    .line 3
    invoke-virtual {p0, v0}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "profileWeb"

    .line 4
    invoke-virtual {p0, v0}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "profileGoogleIdToken"

    .line 5
    invoke-virtual {p0, v0}, Le/a/m4/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    new-instance v0, Lcom/truecaller/profile/data/dto/OnlineIds;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/profile/data/dto/OnlineIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
