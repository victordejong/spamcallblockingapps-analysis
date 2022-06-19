.class public final Le/a/b/l/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/l/h;


# instance fields
.field public final a:Le/a/b/l/f;

.field public final b:Le/a/m4/c/c;

.field public final c:Le/a/b0/o/a;

.field public final d:Le/a/b0/e/r/a;

.field public final e:Le/m/e/k;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/b/l/f;Le/a/m4/c/c;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/m/e/k;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "pictureRestAdapter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileNetworkHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "async"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/l/i;->a:Le/a/b/l/f;

    iput-object p2, p0, Le/a/b/l/i;->b:Le/a/m4/c/c;

    iput-object p3, p0, Le/a/b/l/i;->c:Le/a/b0/o/a;

    iput-object p4, p0, Le/a/b/l/i;->d:Le/a/b0/e/r/a;

    iput-object p5, p0, Le/a/b/l/i;->e:Le/m/e/k;

    iput-object p6, p0, Le/a/b/l/i;->f:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/a/b/b/c/r$b;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b/l/i;->f:Ls1/w/f;

    new-instance v1, Le/a/b/l/i$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/b/l/i$b;-><init>(Le/a/b/l/i;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b(Lcom/truecaller/profile/data/dto/Profile;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/profile/data/dto/Profile;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/a/b/b/c/r$c;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b/l/i;->f:Ls1/w/f;

    new-instance v1, Le/a/b/l/i$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/b/l/i$c;-><init>(Le/a/b/l/i;Lcom/truecaller/profile/data/dto/Profile;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/a/b/b/c/r$e;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b/l/i;->f:Ls1/w/f;

    new-instance v1, Le/a/b/l/i$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/b/l/i$e;-><init>(Le/a/b/l/i;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/a/b/b/c/r$a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b/l/i;->f:Ls1/w/f;

    new-instance v1, Le/a/b/l/i$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/b/l/i$a;-><init>(Le/a/b/l/i;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/a/b/b/c/r$d;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b/l/i;->f:Ls1/w/f;

    new-instance v1, Le/a/b/l/i$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/b/l/i$d;-><init>(Le/a/b/l/i;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f()Lcom/truecaller/profile/data/dto/Profile;
    .locals 33

    move-object/from16 v1, p0

    .line 1
    sget-object v3, Ls1/u/s;->a:Ls1/u/s;

    new-instance v11, Lcom/truecaller/profile/data/dto/Profile;

    .line 2
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v2, "profileFirstName"

    invoke-interface {v0, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object v10, v2

    :goto_0
    const-string v0, "coreSettings.getString(C\u2026.PROFILE_FIRSTNAME) ?: \"\""

    invoke-static {v10, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v4, "profileLastName"

    invoke-interface {v0, v4}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v12, v0

    goto :goto_1

    :cond_1
    move-object v12, v2

    :goto_1
    const-string v0, "coreSettings.getString(C\u2026s.PROFILE_LASTNAME) ?: \"\""

    invoke-static {v12, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v14, Lcom/truecaller/profile/data/dto/BusinessData;

    .line 5
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v4, "profileAvatar"

    invoke-interface {v0, v4}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v5, "profileCompanyJob"

    invoke-interface {v0, v5}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v6, "profileStatus"

    invoke-interface {v0, v6}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v2

    .line 8
    :goto_2
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v7, "profileTag"

    invoke-interface {v0, v7}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 9
    new-instance v9, Lcom/truecaller/profile/data/dto/OnlineIds;

    .line 10
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v15, "profileFacebook"

    invoke-interface {v0, v15}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 11
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v15, "profileEmail"

    invoke-interface {v0, v15}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object/from16 v17, v0

    goto :goto_4

    :cond_4
    move-object/from16 v17, v2

    .line 12
    :goto_4
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v15, "profileWeb"

    invoke-interface {v0, v15}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 13
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v15, "profileTwitter"

    invoke-interface {v0, v15}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x10

    const/16 v22, 0x0

    move-object v15, v9

    .line 14
    invoke-direct/range {v15 .. v22}, Lcom/truecaller/profile/data/dto/OnlineIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILs1/z/c/f;)V

    .line 15
    new-instance v15, Lcom/truecaller/profile/data/dto/Company;

    .line 16
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v7, "profileCompanyName"

    invoke-interface {v0, v7}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v2, v0

    :cond_5
    const-string v0, "coreSettings.getString(C\u2026OFILE_COMPANY_NAME) ?: \"\""

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v7, "profileOpeningHours"

    invoke-interface {v0, v7}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 18
    :try_start_0
    iget-object v7, v1, Le/a/b/l/i;->e:Le/m/e/k;

    new-instance v17, Le/a/b/l/k;

    invoke-direct/range {v17 .. v17}, Le/a/b/l/k;-><init>()V

    invoke-virtual/range {v17 .. v17}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-virtual {v7, v0, v13}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Le/m/e/z; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 19
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_6

    move-object/from16 v25, v0

    goto :goto_6

    :cond_6
    move-object/from16 v25, v3

    .line 20
    :goto_6
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v7, "profileStreet"

    invoke-interface {v0, v7}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 21
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v7, "profileCity"

    invoke-interface {v0, v7}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 22
    iget-object v0, v1, Le/a/b/l/i;->d:Le/a/b0/e/r/a;

    const-string v7, "profileCountryIso"

    invoke-interface {v0, v7}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 23
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    move-object/from16 v17, v12

    const-wide/16 v12, 0x0

    const-string v7, "profileLatitude"

    invoke-interface {v0, v7, v12, v13}, Le/a/b0/o/a;->E(Ljava/lang/String;D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v19

    cmpg-double v7, v19, v12

    const/16 v19, 0x1

    const/16 v20, 0x0

    if-nez v7, :cond_7

    move/from16 v7, v19

    goto :goto_7

    :cond_7
    move/from16 v7, v20

    :goto_7
    if-nez v7, :cond_8

    move-object/from16 v31, v0

    goto :goto_8

    :cond_8
    const/16 v31, 0x0

    .line 24
    :goto_8
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v7, "profileLongitude"

    invoke-interface {v0, v7, v12, v13}, Le/a/b0/o/a;->E(Ljava/lang/String;D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v21

    cmpg-double v7, v21, v12

    if-nez v7, :cond_9

    move/from16 v7, v19

    goto :goto_9

    :cond_9
    move/from16 v7, v20

    :goto_9
    if-nez v7, :cond_a

    move-object/from16 v32, v0

    goto :goto_a

    :cond_a
    const/16 v32, 0x0

    :goto_a
    if-eqz v27, :cond_c

    .line 25
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v0, v20

    goto :goto_c

    :cond_c
    :goto_b
    move/from16 v0, v19

    :goto_c
    if-nez v0, :cond_11

    if-eqz v28, :cond_e

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_d

    :cond_d
    move/from16 v0, v20

    goto :goto_e

    :cond_e
    :goto_d
    move/from16 v0, v19

    :goto_e
    if-nez v0, :cond_11

    if-eqz v30, :cond_10

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_f

    :cond_f
    move/from16 v19, v20

    :cond_10
    :goto_f
    if-nez v19, :cond_11

    .line 26
    new-instance v0, Lcom/truecaller/profile/data/dto/Address;

    .line 27
    iget-object v7, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v12, "profileZip"

    invoke-interface {v7, v12}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v26, v0

    .line 28
    invoke-direct/range {v26 .. v32}, Lcom/truecaller/profile/data/dto/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    goto :goto_10

    :cond_11
    const/16 v26, 0x0

    .line 29
    :goto_10
    new-instance v7, Lcom/truecaller/profile/data/dto/Branding;

    .line 30
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v12, "profileBackgroundColor"

    invoke-interface {v0, v12}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    goto :goto_11

    :cond_12
    const-string v0, "#F2F5F7"

    :goto_11
    move-object v12, v0

    const-string v0, "coreSettings.getString(C\u2026BrandColors.DEFAULT_COLOR"

    .line 31
    invoke-static {v12, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v13, "profileImageUrls"

    invoke-interface {v0, v13}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 33
    :try_start_1
    iget-object v13, v1, Le/a/b/l/i;->e:Le/m/e/k;

    new-instance v19, Le/a/b/l/j;

    invoke-direct/range {v19 .. v19}, Le/a/b/l/j;-><init>()V
    :try_end_1
    .catch Le/m/e/z; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v20, v10

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-virtual {v13, v0, v10}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_2
    .catch Le/m/e/z; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v16, v0

    goto :goto_13

    :catch_1
    move-exception v0

    goto :goto_12

    :catch_2
    move-exception v0

    move-object/from16 v20, v10

    .line 34
    :goto_12
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/16 v16, 0x0

    :goto_13
    if-eqz v16, :cond_14

    goto :goto_14

    :cond_13
    move-object/from16 v20, v10

    :cond_14
    move-object/from16 v16, v3

    .line 35
    :goto_14
    invoke-static/range {v16 .. v16}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-direct {v7, v12, v0}, Lcom/truecaller/profile/data/dto/Branding;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 37
    iget-object v0, v1, Le/a/b/l/i;->c:Le/a/b0/o/a;

    const-string v10, "profileSize"

    invoke-interface {v0, v10}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v23, v15

    move-object/from16 v24, v2

    move-object/from16 v27, v7

    .line 38
    invoke-direct/range {v23 .. v28}, Lcom/truecaller/profile/data/dto/Company;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/Address;Lcom/truecaller/profile/data/dto/Branding;Ljava/lang/String;)V

    move-object v2, v14

    move-object v7, v8

    move-object v8, v9

    move-object v9, v15

    .line 39
    invoke-direct/range {v2 .. v9}, Lcom/truecaller/profile/data/dto/BusinessData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, v11

    move-object/from16 v5, v20

    move-object/from16 v6, v17

    const/4 v2, 0x0

    move-object v7, v2

    move-object v8, v14

    .line 40
    invoke-direct/range {v4 .. v10}, Lcom/truecaller/profile/data/dto/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalData;Lcom/truecaller/profile/data/dto/BusinessData;ILs1/z/c/f;)V

    return-object v11
.end method
