.class public final Le/a/r/z/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/z/n;


# instance fields
.field public final a:Le/a/b0/o/a;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/r/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/b0/e/f;

.field public final d:Le/a/r/h;

.field public final e:Le/a/r/c/t;

.field public final f:Le/a/p5/a0;

.field public final g:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/b0/o/a;Lo3/a;Le/a/b0/e/f;Le/a/r/h;Le/a/r/c/t;Le/a/p5/a0;Le/a/p5/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/o/a;",
            "Lo3/a<",
            "Le/a/b0/e/r/a;",
            ">;",
            "Le/a/b0/e/f;",
            "Le/a/r/h;",
            "Le/a/r/c/t;",
            "Le/a/p5/a0;",
            "Le/a/p5/c;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUtilsHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/z/b;->a:Le/a/b0/o/a;

    iput-object p2, p0, Le/a/r/z/b;->b:Lo3/a;

    iput-object p3, p0, Le/a/r/z/b;->c:Le/a/b0/e/f;

    iput-object p4, p0, Le/a/r/z/b;->d:Le/a/r/h;

    iput-object p5, p0, Le/a/r/z/b;->e:Le/a/r/c/t;

    iput-object p6, p0, Le/a/r/z/b;->f:Le/a/p5/a0;

    iput-object p7, p0, Le/a/r/z/b;->g:Le/a/p5/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/account/network/TokenResponseDto;Ljava/lang/Long;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/account/network/TokenResponseDto;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    instance-of v4, v2, Le/a/r/z/b$a;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/r/z/b$a;

    iget v5, v4, Le/a/r/z/b$a;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/r/z/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/r/z/b$a;

    invoke-direct {v4, v0, v2}, Le/a/r/z/b$a;-><init>(Le/a/r/z/b;Ls1/w/d;)V

    :goto_0
    move-object v13, v4

    iget-object v2, v13, Le/a/r/z/b$a;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v13, Le/a/r/z/b$a;->e:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/account/network/TokenResponseDto;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/account/network/TokenResponseDto;->getUserId()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/account/network/TokenResponseDto;->getTtl()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_1

    :cond_3
    const-wide/16 v11, 0x0

    :goto_1
    const-string v5, "$this$getPrimaryPhoneNumberAndCountryCode"

    .line 7
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/account/network/TokenResponseDto;->getPhones()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x0

    goto :goto_2

    .line 11
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    move-object/from16 v16, v15

    check-cast v16, Lcom/truecaller/account/network/VerificationPhoneNumber;

    .line 14
    invoke-virtual/range {v16 .. v16}, Lcom/truecaller/account/network/VerificationPhoneNumber;->getPriority()I

    move-result v16

    move/from16 v9, v16

    .line 15
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 16
    move-object/from16 v17, v10

    check-cast v17, Lcom/truecaller/account/network/VerificationPhoneNumber;

    .line 17
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/account/network/VerificationPhoneNumber;->getPriority()I

    move-result v14

    if-le v9, v14, :cond_7

    move-object v15, v10

    move v9, v14

    .line 18
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    .line 19
    :goto_2
    check-cast v15, Lcom/truecaller/account/network/VerificationPhoneNumber;

    if-eqz v15, :cond_8

    .line 20
    new-instance v5, Ls1/k;

    invoke-virtual {v15}, Lcom/truecaller/account/network/VerificationPhoneNumber;->getPhoneNumber()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v15}, Lcom/truecaller/account/network/VerificationPhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 21
    :cond_8
    new-instance v5, Ls1/k;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/account/network/TokenResponseDto;->getParsedPhoneNumber()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/account/network/TokenResponseDto;->getParsedCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    :goto_3
    iget-object v9, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 23
    check-cast v9, Ljava/lang/Long;

    .line 24
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 25
    check-cast v5, Ljava/lang/String;

    if-eqz v9, :cond_9

    goto :goto_4

    :cond_9
    move-object/from16 v9, p2

    :goto_4
    if-eqz v9, :cond_11

    .line 26
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Le/a/p5/s0/g;->e(J)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    if-eqz v5, :cond_a

    move-object v10, v5

    goto :goto_5

    :cond_a
    move-object/from16 v10, p3

    :goto_5
    if-eqz v10, :cond_10

    const-string v5, "$this$getSecondaryPhoneNumberAndCountryCode"

    .line 27
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/account/network/TokenResponseDto;->getPhones()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 29
    new-instance v14, Le/a/r/r/b;

    invoke-direct {v14}, Le/a/r/r/b;-><init>()V

    invoke-static {v5, v14}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v5

    .line 30
    invoke-static {v5, v6}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/account/network/VerificationPhoneNumber;

    if-eqz v5, :cond_b

    .line 31
    new-instance v14, Ls1/k;

    invoke-virtual {v5}, Lcom/truecaller/account/network/VerificationPhoneNumber;->getPhoneNumber()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5}, Lcom/truecaller/account/network/VerificationPhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v15, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto :goto_6

    .line 32
    :cond_b
    new-instance v14, Ls1/k;

    const/4 v5, 0x0

    invoke-direct {v14, v5, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    :goto_6
    iget-object v15, v14, Ls1/k;->a:Ljava/lang/Object;

    .line 34
    check-cast v15, Ljava/lang/Long;

    .line 35
    iget-object v14, v14, Ls1/k;->b:Ljava/lang/Object;

    .line 36
    check-cast v14, Ljava/lang/String;

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/account/network/TokenResponseDto;->getSuspended()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 38
    iget-object v1, v0, Le/a/r/z/b;->d:Le/a/r/h;

    const-wide/16 v5, 0x0

    invoke-interface {v1, v2, v5, v6}, Le/a/r/h;->f(Ljava/lang/String;J)V

    .line 39
    iget-object v1, v0, Le/a/r/z/b;->d:Le/a/r/h;

    .line 40
    new-instance v13, Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;

    if-eqz v15, :cond_c

    .line 41
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Le/a/p5/s0/g;->e(J)Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    goto :goto_7

    :cond_c
    const/4 v15, 0x0

    :goto_7
    move-object v4, v13

    move-wide v5, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, v2

    move-wide v10, v11

    move-object v12, v15

    move-object v2, v13

    move-object v13, v14

    .line 42
    invoke-direct/range {v4 .. v13}, Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-interface {v1, v2}, Le/a/r/h;->h(Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;)V

    goto :goto_9

    .line 44
    :cond_d
    new-instance v1, Le/a/b0/e/b;

    invoke-direct {v1, v10, v9}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_e

    if-eqz v15, :cond_e

    .line 45
    new-instance v5, Le/a/b0/e/b;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Le/a/p5/s0/g;->e(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v14, v9}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v5

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    .line 46
    :goto_8
    iget-object v5, v0, Le/a/r/z/b;->d:Le/a/r/h;

    iput v6, v13, Le/a/r/z/b$a;->e:I

    move-wide v6, v7

    move-object v8, v1

    move-object v10, v2

    invoke-interface/range {v5 .. v13}, Le/a/r/h;->e(JLe/a/b0/e/b;Le/a/b0/e/b;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_f

    return-object v4

    :cond_f
    :goto_9
    return-object v3

    .line 47
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 48
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 49
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 50
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r/z/b;->a:Le/a/b0/o/a;

    iget-object v1, p0, Le/a/r/z/b;->g:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    const-string v3, "profileVerificationDate"

    invoke-interface {v0, v3, v1, v2}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Le/a/r/z/b;->a:Le/a/b0/o/a;

    .line 3
    iget-object v1, p0, Le/a/r/z/b;->f:Le/a/p5/a0;

    invoke-interface {v1}, Le/a/p5/a0;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/a/r/z/b;->e:Le/a/r/c/t;

    .line 4
    iget-object v1, v1, Le/a/r/c/t;->a:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 5
    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string v1, "profileSimNumber"

    .line 6
    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/a/r/z/b;->c:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/r/z/b;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/r/a;

    const-string v2, "region_br_policy_accepted"

    invoke-interface {v0, v2, v1}, Le/a/b0/e/r/a;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Le/a/r/z/b;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/r/a;

    const-string v2, "region_za_policy_accepted"

    invoke-interface {v0, v2, v1}, Le/a/b0/e/r/a;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Le/a/r/z/b;->a:Le/a/b0/o/a;

    const-string v2, "region_c_reported"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
