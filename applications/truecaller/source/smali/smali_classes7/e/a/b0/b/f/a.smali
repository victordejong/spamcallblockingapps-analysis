.class public final Le/a/b0/b/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Le/a/c3/a;

.field public final e:Le/a/e4/p;

.field public final f:Le/a/d4/c;

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/q/z;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/b0/b/f/b;

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Le/a/c3/a;Le/a/e4/p;Le/a/d4/c;Lo3/a;Le/a/b0/b/f/b;Lo3/a;)V
    .locals 1
    .param p9    # Lo3/a;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le/a/c3/a;",
            "Le/a/e4/p;",
            "Le/a/d4/c;",
            "Lo3/a<",
            "Le/a/b0/q/z;",
            ">;",
            "Le/a/b0/b/f/b;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actualAppVersion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeAppVersion"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simInfoProvider"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/b/f/a;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/b0/b/f/a;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/b0/b/f/a;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/b0/b/f/a;->d:Le/a/c3/a;

    iput-object p5, p0, Le/a/b0/b/f/a;->e:Le/a/e4/p;

    iput-object p6, p0, Le/a/b0/b/f/a;->f:Le/a/d4/c;

    iput-object p7, p0, Le/a/b0/b/f/a;->g:Lo3/a;

    iput-object p8, p0, Le/a/b0/b/f/a;->h:Le/a/b0/b/f/b;

    iput-object p9, p0, Le/a/b0/b/f/a;->i:Lo3/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/account/network/InstallationDetailsDto;
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/b0/b/f/a;->e:Le/a/e4/p;

    invoke-interface {v1}, Le/a/e4/p;->d()Ljava/util/List;

    move-result-object v1

    const-string v2, "it"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    new-instance v2, Lcom/truecaller/account/network/InstallationDetailsDto;

    .line 3
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v5

    const-string v6, "ApplicationBase.getAppBase()"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Le/a/b0/g/a;->P()Ljava/lang/String;

    move-result-object v6

    .line 4
    iget-object v5, v0, Le/a/b0/b/f/a;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "android_id"

    invoke-static {v5, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "DeviceInfoUtils.getDeviceId(context)"

    .line 6
    invoke-static {v9, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 8
    invoke-static {}, Le/a/b0/q/n;->a()Ljava/lang/String;

    move-result-object v12

    .line 9
    invoke-static {}, Le/a/b0/q/n;->b()Ljava/lang/String;

    move-result-object v13

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v7, "Locale.getDefault()"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    if-eqz v1, :cond_3

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 13
    check-cast v8, Lcom/truecaller/multisim/SimInfo;

    .line 14
    iget-object v8, v8, Lcom/truecaller/multisim/SimInfo;->h:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 15
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_3

    move-object v15, v5

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    .line 17
    :goto_2
    iget-object v5, v0, Le/a/b0/b/f/a;->f:Le/a/d4/c;

    invoke-interface {v5}, Le/a/d4/c;->c()Ljava/util/SortedSet;

    move-result-object v5

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 20
    check-cast v8, Le/a/d4/e;

    .line 21
    sget-object v10, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-static {v8, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v8, "GMS"

    goto :goto_4

    .line 22
    :cond_4
    sget-object v10, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {v8, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "HMS"

    .line 23
    :goto_4
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 24
    :cond_5
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 25
    :cond_6
    new-instance v17, Lcom/truecaller/account/network/DeviceDto;

    const-string v10, "Android"

    move-object/from16 v8, v17

    move-object/from16 v16, v7

    invoke-direct/range {v8 .. v16}, Lcom/truecaller/account/network/DeviceDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 26
    iget-object v5, v0, Le/a/b0/b/f/a;->b:Ljava/lang/String;

    const-string v7, "versionName"

    .line 27
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v8, v3, [C

    const/4 v9, 0x0

    const/16 v10, 0x2e

    aput-char v10, v8, v9

    const/4 v11, 0x6

    .line 28
    invoke-static {v5, v8, v9, v9, v11}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v5

    .line 29
    invoke-static {v5, v9}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    .line 30
    :goto_5
    invoke-static {v5, v3}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_8

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    :goto_6
    const/4 v13, 0x2

    .line 31
    invoke-static {v5, v13}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    .line 32
    :goto_7
    new-instance v14, Lcom/truecaller/account/network/AppDto;

    const-string v15, "Major build version is missing"

    if-eqz v8, :cond_13

    .line 33
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v4, "Minor build version is missing"

    if-eqz v12, :cond_12

    .line 34
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 35
    iget-object v13, v0, Le/a/b0/b/f/a;->d:Le/a/c3/a;

    invoke-interface {v13}, Le/a/c3/a;->getName()Ljava/lang/String;

    move-result-object v13

    .line 36
    invoke-direct {v14, v8, v12, v5, v13}, Lcom/truecaller/account/network/AppDto;-><init>(IILjava/lang/Integer;Ljava/lang/String;)V

    .line 37
    iget-object v5, v0, Le/a/b0/b/f/a;->c:Ljava/lang/String;

    .line 38
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v3, [C

    aput-char v10, v7, v9

    .line 39
    invoke-static {v5, v7, v9, v9, v11}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v5

    .line 40
    invoke-static {v5, v9}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_a

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_8

    :cond_a
    const/4 v7, 0x0

    .line 41
    :goto_8
    invoke-static {v5, v3}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_b

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_9

    :cond_b
    const/4 v8, 0x0

    :goto_9
    const/4 v9, 0x2

    .line 42
    invoke-static {v5, v9}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_c

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_a

    :cond_c
    const/4 v5, 0x0

    .line 43
    :goto_a
    new-instance v9, Lcom/truecaller/account/network/VersionDto;

    if-eqz v7, :cond_11

    .line 44
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v8, :cond_10

    .line 45
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 46
    invoke-direct {v9, v7, v4, v5}, Lcom/truecaller/account/network/VersionDto;-><init>(IILjava/lang/Integer;)V

    if-eqz v1, :cond_f

    .line 47
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 49
    move-object/from16 v19, v5

    check-cast v19, Lcom/truecaller/multisim/SimInfo;

    .line 50
    sget-object v18, Lcom/truecaller/account/network/SimDto;->Companion:Lcom/truecaller/account/network/SimDto$a;

    .line 51
    iget-object v5, v0, Le/a/b0/b/f/a;->g:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    const-string v7, "phoneNumberHelper.get()"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v5

    check-cast v20, Le/a/b0/q/z;

    .line 52
    iget-object v5, v0, Le/a/b0/b/f/a;->h:Le/a/b0/b/f/b;

    .line 53
    iget-object v7, v0, Le/a/b0/b/f/a;->i:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/u3/g;

    invoke-virtual {v7}, Le/a/u3/g;->I()Le/a/u3/b;

    move-result-object v7

    invoke-interface {v7}, Le/a/u3/b;->isEnabled()Z

    move-result v22

    .line 54
    iget-object v7, v0, Le/a/b0/b/f/a;->i:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/u3/g;

    .line 55
    iget-object v8, v7, Le/a/u3/g;->w3:Le/a/u3/g$a;

    sget-object v10, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v11, 0xe8

    aget-object v10, v10, v11

    invoke-virtual {v8, v7, v10}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v7

    .line 56
    invoke-interface {v7}, Le/a/u3/b;->isEnabled()Z

    move-result v23

    move-object/from16 v21, v5

    .line 57
    invoke-static/range {v18 .. v23}, Le/a/n/g0;->z(Lcom/truecaller/account/network/SimDto$a;Lcom/truecaller/multisim/SimInfo;Le/a/b0/q/z;Le/a/b0/b/f/b;ZZ)Lcom/truecaller/account/network/SimDto;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 58
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 59
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_f

    move-object v10, v4

    goto :goto_c

    :cond_f
    const/4 v10, 0x0

    :goto_c
    move-object v5, v2

    move-object/from16 v7, v17

    move-object v8, v14

    .line 60
    invoke-direct/range {v5 .. v10}, Lcom/truecaller/account/network/InstallationDetailsDto;-><init>(Ljava/lang/String;Lcom/truecaller/account/network/DeviceDto;Lcom/truecaller/account/network/AppDto;Lcom/truecaller/account/network/VersionDto;Ljava/util/List;)V

    return-object v2

    .line 61
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
