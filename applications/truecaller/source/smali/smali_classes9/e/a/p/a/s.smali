.class public final Le/a/p/a/s;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/p/a/m$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/p/a/m;


# direct methods
.method public constructor <init>(Le/a/p/a/m;)V
    .locals 0

    iput-object p1, p0, Le/a/p/a/s;->b:Le/a/p/a/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v15, Le/a/p/a/m$a;

    .line 2
    iget-object v1, v0, Le/a/p/a/s;->b:Le/a/p/a/m;

    .line 3
    iget-object v2, v1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v3, ""

    const-string v4, "profileFirstName"

    .line 4
    invoke-interface {v2, v4, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "coreSettings.getString(C\u2026gs.PROFILE_FIRSTNAME, \"\")"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v2}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v1, v0, Le/a/p/a/s;->b:Le/a/p/a/m;

    .line 7
    iget-object v4, v1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v5, "profileLastName"

    .line 8
    invoke-interface {v4, v5, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "coreSettings.getString(C\u2026ngs.PROFILE_LASTNAME, \"\")"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v4}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    iget-object v1, v0, Le/a/p/a/s;->b:Le/a/p/a/m;

    .line 11
    iget-object v5, v1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v6, "profileEmail"

    .line 12
    invoke-interface {v5, v6, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "coreSettings.getString(C\u2026ttings.PROFILE_EMAIL, \"\")"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v5}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    iget-object v1, v0, Le/a/p/a/s;->b:Le/a/p/a/m;

    .line 15
    iget-object v6, v1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v7, "profileStreet"

    .line 16
    invoke-interface {v6, v7, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "coreSettings.getString(C\u2026tings.PROFILE_STREET, \"\")"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v6}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    iget-object v1, v0, Le/a/p/a/s;->b:Le/a/p/a/m;

    .line 19
    iget-object v7, v1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v8, "profileCity"

    .line 20
    invoke-interface {v7, v8, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "coreSettings.getString(C\u2026ettings.PROFILE_CITY, \"\")"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v7}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 22
    iget-object v1, v0, Le/a/p/a/s;->b:Le/a/p/a/m;

    .line 23
    iget-object v8, v1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v9, "profileCompanyName"

    .line 24
    invoke-interface {v8, v9, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "coreSettings.getString(C\u2026PROFILE_COMPANY_NAME, \"\")"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v8}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 26
    iget-object v1, v0, Le/a/p/a/s;->b:Le/a/p/a/m;

    .line 27
    iget-object v9, v1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v10, "profileCompanyJob"

    .line 28
    invoke-interface {v9, v10, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "coreSettings.getString(C\u2026.PROFILE_COMPANY_JOB, \"\")"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v9}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 30
    iget-object v1, v0, Le/a/p/a/s;->b:Le/a/p/a/m;

    .line 31
    iget-object v10, v1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v11, "profileZip"

    .line 32
    invoke-interface {v10, v11, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "coreSettings.getString(C\u2026Settings.PROFILE_ZIP, \"\")"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v10}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 34
    iget-object v1, v0, Le/a/p/a/s;->b:Le/a/p/a/m;

    .line 35
    iget-object v11, v1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v12, "profileWeb"

    .line 36
    invoke-interface {v11, v12, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "coreSettings.getString(C\u2026Settings.PROFILE_WEB, \"\")"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v11}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 38
    iget-object v1, v0, Le/a/p/a/s;->b:Le/a/p/a/m;

    .line 39
    iget-object v12, v1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v13, "profileStatus"

    .line 40
    invoke-interface {v12, v13, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "coreSettings.getString(C\u2026tings.PROFILE_STATUS, \"\")"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v12}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 42
    iget-object v1, v0, Le/a/p/a/s;->b:Le/a/p/a/m;

    .line 43
    iget-object v13, v1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v14, "profileBirthday"

    .line 44
    invoke-interface {v13, v14, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "coreSettings.getString(C\u2026ngs.PROFILE_BIRTHDAY, \"\")"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v13}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 46
    iget-object v1, v0, Le/a/p/a/s;->b:Le/a/p/a/m;

    .line 47
    iget-object v1, v1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    .line 48
    sget-object v14, Lcom/truecaller/editprofile/ui/Gender;->N:Lcom/truecaller/editprofile/ui/Gender;

    move-object/from16 v16, v13

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v12

    const-string v12, "profileGender"

    invoke-interface {v1, v12, v13}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v12, "coreSettings.getString(C\u2026LE_GENDER, Gender.N.name)"

    invoke-static {v1, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v12, Lcom/truecaller/editprofile/ui/Gender;->M:Lcom/truecaller/editprofile/ui/Gender;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    sget-object v12, Lcom/truecaller/editprofile/ui/Gender;->F:Lcom/truecaller/editprofile/ui/Gender;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :goto_0
    move-object v13, v1

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 52
    :goto_1
    iget-object v1, v0, Le/a/p/a/s;->b:Le/a/p/a/m;

    .line 53
    iget-object v1, v1, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v12, "profileTag"

    .line 54
    invoke-interface {v1, v12, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "coreSettings.getString(C\u2026Settings.PROFILE_TAG, \"\")"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    move-object v1, v15

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v10

    move-object v10, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    .line 55
    invoke-direct/range {v1 .. v14}, Le/a/p/a/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v15
.end method
