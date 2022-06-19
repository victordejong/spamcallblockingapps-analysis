.class public final Le/a/m4/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/n/g;


# instance fields
.field public final a:Le/a/m4/c/c;

.field public final b:Le/a/b0/o/a;

.field public final c:Le/a/b0/e/r/a;

.field public final d:Le/a/b0/e/l;

.field public final e:Le/a/b0/n/e;

.field public final f:Le/a/b0/q/z;

.field public final g:Ls1/w/f;

.field public final h:Ls1/w/f;

.field public final i:Le/a/m4/c/i/a/b;

.field public final j:Le/a/m4/c/i/a/e;


# direct methods
.method public constructor <init>(Le/a/m4/c/c;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/b0/e/l;Le/a/b0/n/e;Le/a/b0/q/z;Ls1/w/f;Ls1/w/f;Le/a/m4/c/i/a/b;Le/a/m4/c/i/a/e;)V
    .locals 1
    .param p7    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p8    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "networkHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileRefreshNotifier"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ui"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "async"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizProfileLocalFileManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizProfileRefreshNotifier"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m4/c/e;->a:Le/a/m4/c/c;

    iput-object p2, p0, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/m4/c/e;->c:Le/a/b0/e/r/a;

    iput-object p4, p0, Le/a/m4/c/e;->d:Le/a/b0/e/l;

    iput-object p5, p0, Le/a/m4/c/e;->e:Le/a/b0/n/e;

    iput-object p6, p0, Le/a/m4/c/e;->f:Le/a/b0/q/z;

    iput-object p7, p0, Le/a/m4/c/e;->g:Ls1/w/f;

    iput-object p8, p0, Le/a/m4/c/e;->h:Ls1/w/f;

    iput-object p9, p0, Le/a/m4/c/e;->i:Le/a/m4/c/i/a/b;

    iput-object p10, p0, Le/a/m4/c/e;->j:Le/a/m4/c/i/a/e;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/b0/n/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Le/a/m4/c/e$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/m4/c/e$a;

    iget v3, v2, Le/a/m4/c/e$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/m4/c/e$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/m4/c/e$a;

    invoke-direct {v2, v0, v1}, Le/a/m4/c/e$a;-><init>(Le/a/m4/c/e;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/m4/c/e$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/m4/c/e$a;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Le/a/m4/c/e$a;->h:Ljava/lang/Object;

    check-cast v3, Le/a/m4/c/i/a/g;

    iget-object v2, v2, Le/a/m4/c/e$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/m4/c/e;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/m4/c/e$a;->h:Ljava/lang/Object;

    check-cast v4, Lq3/a/n0;

    iget-object v7, v2, Le/a/m4/c/e$a;->g:Ljava/lang/Object;

    check-cast v7, Le/a/m4/c/e;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/m4/c/e;->a:Le/a/m4/c/c;

    invoke-interface {v1}, Le/a/m4/c/c;->b()Lq3/a/n0;

    move-result-object v4

    .line 5
    iget-object v1, v0, Le/a/m4/c/e;->a:Le/a/m4/c/c;

    invoke-interface {v1}, Le/a/m4/c/c;->e()Lq3/a/n0;

    move-result-object v1

    .line 6
    iput-object v0, v2, Le/a/m4/c/e$a;->g:Ljava/lang/Object;

    iput-object v4, v2, Le/a/m4/c/e$a;->h:Ljava/lang/Object;

    iput v6, v2, Le/a/m4/c/e$a;->e:I

    invoke-interface {v1, v2}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v7, v0

    .line 7
    :goto_1
    check-cast v1, Le/a/m4/c/i/a/g;

    .line 8
    iput-object v7, v2, Le/a/m4/c/e$a;->g:Ljava/lang/Object;

    iput-object v1, v2, Le/a/m4/c/e$a;->h:Ljava/lang/Object;

    iput v5, v2, Le/a/m4/c/e$a;->e:I

    invoke-interface {v4, v2}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_5

    return-object v3

    :cond_5
    move-object v3, v1

    move-object v1, v2

    move-object v2, v7

    .line 9
    :goto_2
    check-cast v1, Le/a/m4/c/h;

    .line 10
    iget-boolean v4, v3, Le/a/m4/c/i/a/g;->a:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_6

    .line 11
    iget-object v4, v3, Le/a/m4/c/i/a/g;->c:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    .line 12
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 13
    iget-object v9, v2, Le/a/m4/c/e;->i:Le/a/m4/c/i/a/b;

    invoke-interface {v9, v4}, Le/a/m4/c/i/a/b;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    .line 14
    iget-object v9, v2, Le/a/m4/c/e;->j:Le/a/m4/c/i/a/e;

    invoke-virtual {v4}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v8, v5, v7}, Le/a/l4/k;->W(Le/a/m4/c/i/a/e;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_3

    .line 15
    :cond_6
    iget-object v4, v2, Le/a/m4/c/e;->i:Le/a/m4/c/i/a/b;

    invoke-interface {v4}, Le/a/m4/c/i/a/b;->c()Le/a/m4/c/i/a/h;

    .line 16
    :cond_7
    :goto_3
    iget-object v4, v2, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    .line 17
    iget-boolean v5, v3, Le/a/m4/c/i/a/g;->a:Z

    if-nez v5, :cond_9

    .line 18
    iget v3, v3, Le/a/m4/c/i/a/g;->b:I

    const/16 v5, 0x194

    if-ne v3, v5, :cond_8

    goto :goto_4

    :cond_8
    move v6, v8

    :cond_9
    :goto_4
    const-string v3, "bizV2GetProfileSuccess"

    .line 19
    invoke-interface {v4, v3, v6}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    iget-object v3, v1, Le/a/m4/c/h;->b:Lcom/truecaller/profile/data/dto/ProfileResponse;

    if-eqz v3, :cond_15

    .line 21
    iget-object v4, v2, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/ProfileResponse;->getUserId()J

    move-result-wide v5

    const-string v8, "$this$persistProfileUserId"

    .line 22
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "profileUserId"

    .line 23
    invoke-interface {v4, v8, v5, v6}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 24
    iget-object v4, v2, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/ProfileResponse;->getFirstName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    move-object v5, v6

    :goto_5
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/ProfileResponse;->getLastName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    move-object v6, v8

    :cond_b
    invoke-static {v4, v5, v6}, Le/a/l4/k;->c0(Le/a/b0/o/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v4, v2, Le/a/m4/c/e;->d:Le/a/b0/e/l;

    invoke-interface {v4}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 26
    iget-object v5, v2, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    .line 27
    iget-object v6, v2, Le/a/m4/c/e;->f:Le/a/b0/q/z;

    .line 28
    iget-object v8, v4, Le/a/b0/e/b;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v2, v8}, Le/a/m4/c/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 30
    iget-object v4, v4, Le/a/b0/e/b;->a:Ljava/lang/String;

    .line 31
    invoke-interface {v6, v8, v4}, Le/a/b0/q/z;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$this$persistNationalPhoneNumber"

    .line 32
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "profileNationalNumber"

    .line 33
    invoke-interface {v5, v6, v4}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_c
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/ProfileResponse;->getPersonalData()Lcom/truecaller/profile/data/dto/PersonalDataResponse;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/ProfileResponse;->getPersonalData()Lcom/truecaller/profile/data/dto/PersonalDataResponse;

    move-result-object v3

    .line 35
    iget-object v4, v2, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    invoke-static {v4}, Le/a/l4/k;->u(Le/a/b0/o/a;)V

    .line 36
    iget-object v8, v2, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    .line 37
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->getGender()Ljava/lang/String;

    move-result-object v9

    .line 38
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/profile/data/dto/Address;->getStreet()Ljava/lang/String;

    move-result-object v10

    .line 39
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/profile/data/dto/Address;->getCity()Ljava/lang/String;

    move-result-object v11

    .line 40
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/profile/data/dto/Address;->getZipCode()Ljava/lang/String;

    move-result-object v12

    .line 41
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->getCompanyName()Ljava/lang/String;

    move-result-object v13

    .line 42
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->getOnlineIds()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object v14

    .line 43
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->getAvatarUrl()Ljava/lang/String;

    move-result-object v15

    .line 44
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->getJobTitle()Ljava/lang/String;

    move-result-object v16

    .line 45
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    :cond_d
    move-object/from16 v17, v7

    .line 46
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->getAbout()Ljava/lang/String;

    move-result-object v18

    .line 47
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->getPrivacy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Private"

    .line 48
    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "0"

    goto :goto_6

    :cond_e
    const-string v4, "1"

    :goto_6
    move-object/from16 v19, v4

    .line 49
    sget-object v20, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->getBirthday()Ljava/lang/String;

    move-result-object v21

    .line 51
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->isCredUser()Ljava/lang/Boolean;

    move-result-object v22

    .line 52
    invoke-static/range {v8 .. v22}, Le/a/l4/k;->a0(Le/a/b0/o/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/OnlineIds;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_a

    .line 53
    :cond_f
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/ProfileResponse;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessDataResponse;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/ProfileResponse;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessDataResponse;

    move-result-object v3

    .line 54
    iget-object v8, v2, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    .line 55
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/profile/data/dto/Company;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/truecaller/profile/data/dto/Address;->getStreet()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_7

    :cond_10
    move-object v10, v7

    .line 56
    :goto_7
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/profile/data/dto/Company;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/truecaller/profile/data/dto/Address;->getCity()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_8

    :cond_11
    move-object v11, v7

    .line 57
    :goto_8
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/profile/data/dto/Company;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/truecaller/profile/data/dto/Address;->getZipCode()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_9

    :cond_12
    move-object v12, v7

    .line 58
    :goto_9
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/profile/data/dto/Company;->getName()Ljava/lang/String;

    move-result-object v13

    .line 59
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->getOnlineIds()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object v14

    .line 60
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->getAvatarUrl()Ljava/lang/String;

    move-result-object v15

    .line 61
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->getJobTitle()Ljava/lang/String;

    move-result-object v16

    .line 62
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    :cond_13
    move-object/from16 v17, v7

    .line 63
    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->getAbout()Ljava/lang/String;

    move-result-object v18

    .line 64
    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v21, 0x0

    .line 65
    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v23, 0x1000

    const-string v9, "N"

    const-string v19, "0"

    .line 66
    invoke-static/range {v8 .. v23}, Le/a/l4/k;->b0(Le/a/b0/o/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/OnlineIds;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;I)V

    goto :goto_a

    .line 67
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Either personal or business data should not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_15
    :goto_a
    iget-object v2, v2, Le/a/m4/c/e;->e:Le/a/b0/n/e;

    invoke-interface {v2}, Le/a/b0/n/e;->a()V

    .line 69
    new-instance v2, Le/a/b0/n/c;

    .line 70
    iget v1, v1, Le/a/m4/c/h;->a:I

    .line 71
    invoke-direct {v2, v1}, Le/a/b0/n/c;-><init>(I)V

    return-object v2
.end method

.method public b(Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLs1/w/d;)Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/n/d;",
            "Z",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ls1/w/d<",
            "-",
            "Le/a/b0/n/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    instance-of v7, v6, Le/a/m4/c/e$c;

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Le/a/m4/c/e$c;

    iget v8, v7, Le/a/m4/c/e$c;->e:I

    const/high16 v9, -0x80000000

    and-int v10, v8, v9

    if-eqz v10, :cond_0

    sub-int/2addr v8, v9

    iput v8, v7, Le/a/m4/c/e$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v7, Le/a/m4/c/e$c;

    invoke-direct {v7, v0, v6}, Le/a/m4/c/e$c;-><init>(Le/a/m4/c/e;Ls1/w/d;)V

    :goto_0
    iget-object v6, v7, Le/a/m4/c/e$c;->d:Ljava/lang/Object;

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v9, v7, Le/a/m4/c/e$c;->e:I

    const-string v10, ""

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v9, :cond_4

    if-eq v9, v14, :cond_3

    if-eq v9, v12, :cond_2

    if-ne v9, v11, :cond_1

    iget-object v1, v7, Le/a/m4/c/e$c;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/profile/data/dto/Profile;

    iget-object v2, v7, Le/a/m4/c/e$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/m4/c/e;

    invoke-static {v6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-boolean v1, v7, Le/a/m4/c/e$c;->k:Z

    iget-boolean v2, v7, Le/a/m4/c/e$c;->j:Z

    iget-object v3, v7, Le/a/m4/c/e$c;->i:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v4, v7, Le/a/m4/c/e$c;->h:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    iget-object v5, v7, Le/a/m4/c/e$c;->g:Ljava/lang/Object;

    check-cast v5, Le/a/m4/c/e;

    invoke-static {v6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v30, v4

    move-object v4, v3

    move-object/from16 v3, v30

    goto/16 :goto_2

    :cond_3
    iget-boolean v1, v7, Le/a/m4/c/e$c;->k:Z

    iget-boolean v2, v7, Le/a/m4/c/e$c;->j:Z

    iget-object v3, v7, Le/a/m4/c/e$c;->i:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v4, v7, Le/a/m4/c/e$c;->h:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    iget-object v5, v7, Le/a/m4/c/e$c;->g:Ljava/lang/Object;

    check-cast v5, Le/a/m4/c/e;

    invoke-static {v6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v30, v4

    move-object v4, v3

    move-object/from16 v3, v30

    goto :goto_1

    :cond_4
    invoke-static {v6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object v6, Le/a/b0/n/d$a;->a:Le/a/b0/n/d$a;

    invoke-static {v1, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v1, v0, Le/a/m4/c/e;->a:Le/a/m4/c/c;

    invoke-interface {v1}, Le/a/m4/c/c;->c()Lq3/a/n0;

    move-result-object v1

    iput-object v0, v7, Le/a/m4/c/e$c;->g:Ljava/lang/Object;

    iput-object v3, v7, Le/a/m4/c/e$c;->h:Ljava/lang/Object;

    iput-object v4, v7, Le/a/m4/c/e$c;->i:Ljava/lang/Object;

    iput-boolean v2, v7, Le/a/m4/c/e$c;->j:Z

    iput-boolean v5, v7, Le/a/m4/c/e$c;->k:Z

    iput v14, v7, Le/a/m4/c/e$c;->e:I

    invoke-interface {v1, v7}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v8, :cond_5

    return-object v8

    :cond_5
    move v1, v5

    move-object v5, v0

    :goto_1
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move-object v10, v13

    goto :goto_3

    .line 5
    :cond_7
    sget-object v6, Le/a/b0/n/d$c;->a:Le/a/b0/n/d$c;

    invoke-static {v1, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v1, v0, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    const-string v6, "profileAvatar"

    invoke-interface {v1, v6}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object v10, v1

    :cond_8
    move v1, v5

    move-object v5, v0

    goto :goto_3

    .line 6
    :cond_9
    instance-of v6, v1, Le/a/b0/n/d$b;

    if-eqz v6, :cond_1c

    iget-object v6, v0, Le/a/m4/c/e;->a:Le/a/m4/c/c;

    check-cast v1, Le/a/b0/n/d$b;

    .line 7
    iget-object v9, v1, Le/a/b0/n/d$b;->a:Lu3/j0;

    .line 8
    iget-object v1, v1, Le/a/b0/n/d$b;->b:Lcom/truecaller/common/profile/ImageSource;

    .line 9
    invoke-interface {v6, v9, v1}, Le/a/m4/c/c;->d(Lu3/j0;Lcom/truecaller/common/profile/ImageSource;)Lq3/a/n0;

    move-result-object v1

    iput-object v0, v7, Le/a/m4/c/e$c;->g:Ljava/lang/Object;

    iput-object v3, v7, Le/a/m4/c/e$c;->h:Ljava/lang/Object;

    iput-object v4, v7, Le/a/m4/c/e$c;->i:Ljava/lang/Object;

    iput-boolean v2, v7, Le/a/m4/c/e$c;->j:Z

    iput-boolean v5, v7, Le/a/m4/c/e$c;->k:Z

    iput v12, v7, Le/a/m4/c/e$c;->e:I

    invoke-interface {v1, v7}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v8, :cond_a

    return-object v8

    :cond_a
    move v1, v5

    move-object v5, v0

    :goto_2
    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    :goto_3
    const/4 v6, 0x0

    if-eqz v10, :cond_1b

    .line 10
    iget-object v9, v5, Le/a/m4/c/e;->d:Le/a/b0/e/l;

    invoke-interface {v9}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 11
    iget-object v9, v9, Le/a/b0/e/b;->b:Ljava/lang/String;

    goto :goto_4

    :cond_b
    move-object v9, v13

    :goto_4
    if-eqz v9, :cond_e

    .line 12
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_c

    move v12, v14

    goto :goto_5

    :cond_c
    move v12, v6

    :goto_5
    if-eqz v12, :cond_d

    goto :goto_6

    .line 13
    :cond_d
    invoke-virtual {v5, v9}, Le/a/m4/c/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    goto :goto_7

    :cond_e
    :goto_6
    move-object v9, v13

    :goto_7
    if-eqz v9, :cond_1a

    .line 14
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    if-eqz v1, :cond_f

    .line 15
    new-instance v1, Le/a/m4/c/b;

    iget-object v9, v5, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    iget-object v12, v5, Le/a/m4/c/e;->c:Le/a/b0/e/r/a;

    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-object/from16 p3, v9

    move-object/from16 p4, v12

    move-wide/from16 p5, v14

    invoke-direct/range {p1 .. p6}, Le/a/m4/c/b;-><init>(Ljava/util/Map;Le/a/b0/o/a;Le/a/b0/e/r/a;J)V

    .line 16
    invoke-virtual {v5, v3, v2}, Le/a/m4/c/e;->e(Ljava/lang/Long;Z)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 17
    invoke-virtual {v1, v10, v2, v6}, Le/a/m4/c/b;->c(Ljava/lang/String;Ljava/util/List;Z)Lcom/truecaller/profile/data/dto/Profile;

    move-result-object v1

    goto :goto_8

    .line 18
    :cond_f
    new-instance v1, Le/a/m4/c/b;

    iget-object v6, v5, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    iget-object v9, v5, Le/a/m4/c/e;->c:Le/a/b0/e/r/a;

    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-object/from16 p3, v6

    move-object/from16 p4, v9

    move-wide/from16 p5, v14

    invoke-direct/range {p1 .. p6}, Le/a/m4/c/b;-><init>(Ljava/util/Map;Le/a/b0/o/a;Le/a/b0/e/r/a;J)V

    .line 19
    invoke-virtual {v5, v3, v2}, Le/a/m4/c/e;->e(Ljava/lang/Long;Z)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 20
    iget-object v3, v1, Le/a/m4/c/b;->b:Le/a/b0/o/a;

    const-string v4, "profileBusiness"

    invoke-interface {v3, v4}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v10, v2, v3}, Le/a/m4/c/b;->c(Ljava/lang/String;Ljava/util/List;Z)Lcom/truecaller/profile/data/dto/Profile;

    move-result-object v1

    .line 21
    :goto_8
    iget-object v2, v5, Le/a/m4/c/e;->a:Le/a/m4/c/c;

    invoke-interface {v2, v1}, Le/a/m4/c/c;->a(Lcom/truecaller/profile/data/dto/Profile;)Lq3/a/n0;

    move-result-object v2

    iput-object v5, v7, Le/a/m4/c/e$c;->g:Ljava/lang/Object;

    iput-object v1, v7, Le/a/m4/c/e$c;->h:Ljava/lang/Object;

    iput-object v13, v7, Le/a/m4/c/e$c;->i:Ljava/lang/Object;

    iput v11, v7, Le/a/m4/c/e$c;->e:I

    invoke-interface {v2, v7}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v8, :cond_10

    return-object v8

    :cond_10
    move-object v2, v5

    .line 22
    :goto_9
    check-cast v6, Le/a/b0/n/h;

    .line 23
    iget-boolean v3, v6, Le/a/b0/n/h;->a:Z

    if-eqz v3, :cond_19

    .line 24
    iget-object v3, v2, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Profile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Profile;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Le/a/l4/k;->c0(Le/a/b0/o/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Profile;->getPersonalData()Lcom/truecaller/profile/data/dto/PersonalData;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Profile;->getPersonalData()Lcom/truecaller/profile/data/dto/PersonalData;

    move-result-object v1

    .line 26
    iget-object v3, v2, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    invoke-static {v3}, Le/a/l4/k;->u(Le/a/b0/o/a;)V

    .line 27
    iget-object v14, v2, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    .line 28
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalData;->getGender()Ljava/lang/String;

    move-result-object v15

    .line 29
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalData;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Address;->getStreet()Ljava/lang/String;

    move-result-object v16

    .line 30
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalData;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Address;->getCity()Ljava/lang/String;

    move-result-object v17

    .line 31
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalData;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Address;->getZipCode()Ljava/lang/String;

    move-result-object v18

    .line 32
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalData;->getCompanyName()Ljava/lang/String;

    move-result-object v19

    .line 33
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalData;->getOnlineIds()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object v20

    .line 34
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalData;->getAvatarUrl()Ljava/lang/String;

    move-result-object v21

    .line 35
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalData;->getJobTitle()Ljava/lang/String;

    move-result-object v22

    .line 36
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalData;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    :cond_11
    move-object/from16 v23, v13

    .line 37
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalData;->getAbout()Ljava/lang/String;

    move-result-object v24

    .line 38
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalData;->getPrivacy()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Private"

    .line 39
    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "0"

    goto :goto_a

    :cond_12
    const-string v2, "1"

    :goto_a
    move-object/from16 v25, v2

    .line 40
    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalData;->getBirthday()Ljava/lang/String;

    move-result-object v27

    .line 42
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalData;->isCredUser()Ljava/lang/Boolean;

    move-result-object v28

    .line 43
    invoke-static/range {v14 .. v28}, Le/a/l4/k;->a0(Le/a/b0/o/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/OnlineIds;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_e

    .line 44
    :cond_13
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v1

    .line 45
    iget-object v14, v2, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    .line 46
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Company;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Address;->getStreet()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_b

    :cond_14
    move-object/from16 v16, v13

    .line 47
    :goto_b
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Company;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Address;->getCity()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_c

    :cond_15
    move-object/from16 v17, v13

    .line 48
    :goto_c
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Company;->getAddress()Lcom/truecaller/profile/data/dto/Address;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Address;->getZipCode()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_d

    :cond_16
    move-object/from16 v18, v13

    .line 49
    :goto_d
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Company;->getName()Ljava/lang/String;

    move-result-object v19

    .line 50
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/BusinessData;->getOnlineIds()Lcom/truecaller/profile/data/dto/OnlineIds;

    move-result-object v20

    .line 51
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/BusinessData;->getAvatarUrl()Ljava/lang/String;

    move-result-object v21

    .line 52
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/BusinessData;->getJobTitle()Ljava/lang/String;

    move-result-object v22

    .line 53
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/BusinessData;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    :cond_17
    move-object/from16 v23, v13

    .line 54
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/BusinessData;->getAbout()Ljava/lang/String;

    move-result-object v24

    .line 55
    sget-object v26, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v27, 0x0

    .line 56
    sget-object v28, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v29, 0x1000

    const-string v15, "N"

    const-string v25, "0"

    .line 57
    invoke-static/range {v14 .. v29}, Le/a/l4/k;->b0(Le/a/b0/o/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/OnlineIds;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;I)V

    goto :goto_e

    .line 58
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Either personal or business data should not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    :goto_e
    return-object v6

    .line 59
    :cond_1a
    new-instance v1, Lcom/truecaller/log/UnmutedException$n;

    invoke-direct {v1}, Lcom/truecaller/log/UnmutedException$n;-><init>()V

    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 60
    new-instance v1, Le/a/b0/n/h$f;

    invoke-direct {v1, v6, v14}, Le/a/b0/n/h$f;-><init>(II)V

    return-object v1

    .line 61
    :cond_1b
    new-instance v1, Le/a/b0/n/h$f;

    invoke-direct {v1, v6, v14}, Le/a/b0/n/h$f;-><init>(II)V

    return-object v1

    .line 62
    :cond_1c
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1
.end method

.method public c(Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLe/a/b0/n/i;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/n/d;",
            "Z",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Le/a/b0/n/i;",
            ")V"
        }
    .end annotation

    const-string v0, "profileImageAction"

    move-object v3, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    move-object v10, p0

    iget-object v11, v10, Le/a/m4/c/e;->h:Ls1/w/f;

    new-instance v12, Le/a/m4/c/e$d;

    const/4 v9, 0x0

    move-object v1, v12

    move-object v2, p0

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Le/a/m4/c/e$d;-><init>(Le/a/m4/c/e;Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLe/a/b0/n/i;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object p1, v0

    move-object p2, v11

    move-object/from16 p3, v1

    move-object/from16 p4, v12

    move/from16 p5, v2

    move-object/from16 p6, v3

    invoke-static/range {p1 .. p6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public d(Le/a/b0/n/a;)V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/m4/c/e;->h:Ls1/w/f;

    new-instance v3, Le/a/m4/c/e$b;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Le/a/m4/c/e$b;-><init>(Le/a/m4/c/e;Le/a/b0/n/a;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final e(Ljava/lang/Long;Z)Ljava/lang/Long;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/m4/c/e;->b:Le/a/b0/o/a;

    const-string p2, "profileTag"

    invoke-interface {p1, p2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "+"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p1, v0, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
