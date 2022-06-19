.class public Le/h/a/c/w0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/w0/b;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/h/a/c/w0/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/h/a/c/w0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/h/a/c/w0/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/h/a/c/f;

.field public final e:Le/h/a/c/l0/a;

.field public final f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final g:Landroid/content/Context;

.field public h:Le/h/a/c/w0/e;

.field public final i:Le/h/a/c/a1/b;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/l0/a;Le/h/a/c/a1/b;Le/h/a/c/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/h/a/c/w0/i;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/h/a/c/w0/i;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/h/a/c/w0/i;->c:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Le/h/a/c/w0/c;

    invoke-direct {v0}, Le/h/a/c/w0/c;-><init>()V

    iput-object v0, p0, Le/h/a/c/w0/i;->h:Le/h/a/c/w0/e;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/h/a/c/w0/i;->j:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Le/h/a/c/w0/i;->g:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 9
    iput-object p3, p0, Le/h/a/c/w0/i;->e:Le/h/a/c/l0/a;

    .line 10
    iput-object p4, p0, Le/h/a/c/w0/i;->i:Le/h/a/c/a1/b;

    .line 11
    iput-object p5, p0, Le/h/a/c/w0/i;->d:Le/h/a/c/f;

    .line 12
    iget-boolean p1, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->f:Z

    if-eqz p1, :cond_0

    .line 13
    iget-boolean p1, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-nez p1, :cond_0

    .line 14
    invoke-static {p2}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object p1

    invoke-virtual {p1}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object p1

    .line 15
    new-instance p2, Le/h/a/c/w0/k;

    invoke-direct {p2, p0}, Le/h/a/c/w0/k;-><init>(Le/h/a/c/w0/i;)V

    .line 16
    iget-object p3, p1, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 17
    new-instance p4, Le/h/a/c/y0/j;

    const-string p5, "createOrResetJobScheduler"

    invoke-direct {p4, p1, p5, p2}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 18
    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static c(Le/h/a/c/w0/i;Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v1, p3

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "notification"

    .line 2
    invoke-virtual {v7, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/app/NotificationManager;

    if-nez v9, :cond_0

    const-string v1, "Unable to render notification, Notification Manager is null."

    .line 3
    iget-object v2, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    iget-object v0, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v0, v1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_0
    const-string v2, "wzrk_cid"

    const-string v3, ""

    .line 6
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const/4 v10, 0x0

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v10

    :goto_0
    const/16 v11, 0x200

    if-lt v3, v4, :cond_4

    const-string v3, ""

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v12, -0x1

    if-eqz v4, :cond_2

    const/16 v3, 0x8

    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v9, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    if-nez v4, :cond_3

    const/16 v3, 0x9

    move-object v4, v2

    goto :goto_1

    :cond_3
    move-object v4, v3

    move v3, v12

    :goto_1
    if-eq v3, v12, :cond_4

    new-array v1, v5, [Ljava/lang/String;

    aput-object v4, v1, v10

    .line 11
    invoke-static {v11, v3, v1}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v1

    .line 12
    iget-object v2, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    iget-object v3, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 13
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 14
    iget-object v4, v1, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v3, v4}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, v0, Le/h/a/c/w0/i;->i:Le/h/a/c/a1/b;

    invoke-virtual {v0, v1}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    goto/16 :goto_b

    .line 17
    :cond_4
    :try_start_0
    invoke-static/range {p1 .. p1}, Le/h/a/c/h0;->b(Landroid/content/Context;)Le/h/a/c/h0;

    move-result-object v3

    .line 18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v3, Le/h/a/c/h0;->g:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v3, v5, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 21
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 22
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :catchall_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 24
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 25
    :goto_2
    iget-object v4, v0, Le/h/a/c/w0/i;->h:Le/h/a/c/w0/e;

    invoke-interface {v4, v3, v7}, Le/h/a/c/w0/e;->f(ILandroid/content/Context;)V

    const-string v3, "pr"

    .line 26
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_7

    const-string v5, "high"

    .line 27
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v11, "max"

    .line 28
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v5, v4

    goto :goto_3

    :cond_7
    move v5, v10

    :cond_8
    :goto_3
    const/16 v3, -0x3e8

    if-ne v1, v3, :cond_b

    .line 29
    :try_start_1
    iget-object v11, v0, Le/h/a/c/w0/i;->h:Le/h/a/c/w0/e;

    .line 30
    invoke-interface {v11, v8}, Le/h/a/c/w0/e;->d(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 31
    instance-of v12, v11, Ljava/lang/Number;

    if-eqz v12, :cond_9

    .line 32
    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_4

    .line 33
    :cond_9
    instance-of v12, v11, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v12, :cond_a

    .line 34
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 35
    iget-object v12, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v12}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v12

    iget-object v13, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 36
    iget-object v13, v13, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 37
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Converting collapse_key: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " to notificationId int: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 38
    :catch_0
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 39
    iget-object v12, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v12}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v12

    iget-object v13, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 40
    iget-object v13, v13, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 41
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Converting collapse_key: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " to notificationId int: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_a
    :goto_4
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 43
    iget-object v12, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v12}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v12

    iget-object v13, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 44
    iget-object v13, v13, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 45
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Creating the notification id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " from collapse_key: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v13, v11}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 46
    :cond_b
    iget-object v11, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v11}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v11

    iget-object v12, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 47
    iget-object v12, v12, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 48
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Have user provided notificationId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " won\'t use collapse_key (if any) as basis for notificationId"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :catch_1
    :cond_c
    :goto_5
    if-ne v1, v3, :cond_d

    .line 49
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v11, v13

    double-to-int v1, v11

    .line 50
    iget-object v3, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v3

    iget-object v11, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 51
    iget-object v11, v11, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 52
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting random notificationId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move v11, v1

    const/4 v12, 0x0

    if-eqz v6, :cond_f

    .line 53
    new-instance v1, Ln3/k/a/q;

    invoke-direct {v1, v7, v2}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "wzrk_bi"

    .line 54
    invoke-virtual {v8, v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 55
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_e

    .line 56
    iput v2, v1, Ln3/k/a/q;->K:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_e
    const-string v2, "wzrk_bc"

    .line 57
    invoke-virtual {v8, v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 58
    :try_start_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_10

    .line 59
    iput v2, v1, Ln3/k/a/q;->k:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 60
    :cond_f
    new-instance v1, Ln3/k/a/q;

    .line 61
    invoke-direct {v1, v7, v12}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :catchall_2
    :cond_10
    :goto_6
    move-object v6, v1

    .line 62
    iput v5, v6, Ln3/k/a/q;->l:I

    :try_start_6
    const-string v1, "wzrk_sound"

    .line 63
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "wzrk_sound"

    .line 64
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 66
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_7

    .line 67
    :cond_11
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 68
    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 70
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_7

    .line 71
    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, ".mp3"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 73
    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 74
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_7

    :cond_15
    move-object v1, v12

    :goto_7
    if-eqz v1, :cond_16

    .line 76
    invoke-virtual {v6, v1}, Ln3/k/a/q;->w(Landroid/net/Uri;)Ln3/k/a/q;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_8

    .line 77
    :catchall_3
    iget-object v1, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 78
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 79
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_16
    :goto_8
    iget-object v1, v0, Le/h/a/c/w0/i;->h:Le/h/a/c/w0/e;

    iget-object v5, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v6

    move v6, v11

    invoke-interface/range {v1 .. v6}, Le/h/a/c/w0/e;->e(Landroid/os/Bundle;Landroid/content/Context;Ln3/k/a/q;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;I)Ln3/k/a/q;

    move-result-object v1

    if-nez v1, :cond_17

    goto/16 :goto_b

    .line 81
    :cond_17
    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    .line 82
    invoke-virtual {v9, v11, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 83
    iget-object v2, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    iget-object v3, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 84
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v4, "Rendered notification: "

    .line 85
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extras_from"

    .line 86
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    const-string v2, "PTReceiver"

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_18
    const-string v1, "wzrk_ttl"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x14997000

    add-long/2addr v3, v5

    const-wide/16 v13, 0x3e8

    div-long/2addr v3, v13

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "wzrk_pid"

    .line 92
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    iget-object v4, v0, Le/h/a/c/w0/i;->e:Le/h/a/c/l0/a;

    invoke-virtual {v4, v7}, Le/h/a/c/l0/a;->b(Landroid/content/Context;)Le/h/a/c/l0/b;

    move-result-object v4

    .line 94
    iget-object v7, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v7}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v7

    .line 95
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-enter v4

    if-nez v3, :cond_19

    .line 97
    monitor-exit v4

    goto :goto_a

    .line 98
    :cond_19
    :try_start_7
    invoke-virtual {v4}, Le/h/a/c/l0/b;->a()Z

    move-result v7

    if-nez v7, :cond_1a

    .line 99
    invoke-virtual {v4}, Le/h/a/c/l0/b;->h()Le/h/a/c/g0;

    move-result-object v1

    .line 100
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 101
    monitor-exit v4

    goto :goto_a

    :cond_1a
    :try_start_8
    const-string v7, "pushNotifications"

    const-wide/16 v13, 0x0

    cmp-long v9, v1, v13

    if-gtz v9, :cond_1b

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    add-long/2addr v1, v5

    .line 103
    :cond_1b
    :try_start_9
    iget-object v5, v4, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 104
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "data"

    .line 105
    invoke-virtual {v6, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "created_at"

    .line 106
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "isRead"

    .line 107
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    invoke-virtual {v5, v7, v12, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v1, 0x1

    .line 109
    iput-boolean v1, v4, Le/h/a/c/l0/b;->c:Z
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_c

    .line 110
    :catch_2
    :try_start_a
    invoke-virtual {v4}, Le/h/a/c/l0/b;->h()Le/h/a/c/g0;

    move-result-object v1

    .line 111
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, v4, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v1}, Le/h/a/c/l0/b$a;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 113
    :goto_9
    :try_start_b
    iget-object v1, v4, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 114
    monitor-exit v4

    :goto_a
    const-string v1, "true"

    const-string v2, "wzrk_rnv"

    const-string v3, ""

    .line 115
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const/16 v1, 0xa

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const/16 v3, 0x200

    invoke-static {v3, v1, v2}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v1

    .line 117
    iget-object v2, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    .line 118
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, v0, Le/h/a/c/w0/i;->i:Le/h/a/c/a1/b;

    invoke-virtual {v0, v1}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    goto :goto_b

    .line 120
    :cond_1c
    iget-object v0, v0, Le/h/a/c/w0/i;->d:Le/h/a/c/f;

    invoke-virtual {v0, v8}, Le/h/a/c/f;->n(Landroid/os/Bundle;)V

    :cond_1d
    :goto_b
    return-void

    .line 121
    :goto_c
    :try_start_c
    iget-object v1, v4, Le/h/a/c/l0/b;->b:Le/h/a/c/l0/b$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 122
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static d(Le/h/a/c/w0/i;Landroid/content/Context;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pfjobid"

    const/4 v3, -0x1

    .line 2
    invoke-static {v1, v2, v3}, Ln3/g0/y;->m0(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "jobscheduler"

    .line 3
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobScheduler;

    .line 4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-ge v6, v7, :cond_1

    if-ltz v4, :cond_0

    .line 5
    invoke-virtual {v5, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 6
    invoke-static {v1, v2, v3}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    .line 7
    :cond_0
    iget-object v1, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v0, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 8
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Push Amplification feature is not supported below Oreo"

    .line 9
    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 10
    :cond_2
    invoke-virtual/range {p0 .. p1}, Le/h/a/c/w0/i;->j(Landroid/content/Context;)I

    move-result v6

    if-gez v4, :cond_3

    if-gez v6, :cond_3

    goto/16 :goto_2

    :cond_3
    if-gez v6, :cond_4

    .line 11
    invoke-virtual {v5, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 12
    invoke-static {v1, v2, v3}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 13
    :cond_4
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/clevertap/android/sdk/pushnotification/amp/CTBackgroundJobService;

    invoke-direct {v7, v1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-gez v4, :cond_5

    if-lez v6, :cond_5

    const/4 v10, 0x1

    goto :goto_0

    :cond_5
    const/4 v10, 0x0

    .line 14
    :goto_0
    invoke-virtual {v5}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/job/JobInfo;

    .line 15
    invoke-virtual {v12}, Landroid/app/job/JobInfo;->getId()I

    move-result v13

    if-ne v13, v4, :cond_6

    goto :goto_1

    :cond_7
    const/4 v12, 0x0

    :goto_1
    const-wide/32 v13, 0xea60

    if-eqz v12, :cond_8

    .line 16
    invoke-virtual {v12}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v11

    int-to-long v8, v6

    mul-long/2addr v8, v13

    cmp-long v8, v11, v8

    if-eqz v8, :cond_8

    .line 17
    invoke-virtual {v5, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 18
    invoke-static {v1, v2, v3}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v10, 0x1

    :cond_8
    if-eqz v10, :cond_b

    .line 19
    iget-object v3, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 20
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 22
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v3, v7}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v7, 0x1

    .line 23
    invoke-virtual {v4, v7}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    const/4 v8, 0x0

    .line 24
    invoke-virtual {v4, v8}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    int-to-long v8, v6

    mul-long/2addr v8, v13

    const-wide/32 v10, 0x493e0

    .line 25
    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 26
    invoke-virtual {v4, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    const-string v6, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 27
    invoke-static {v1, v6}, Le/h/a/c/j0;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 28
    invoke-virtual {v4, v7}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 29
    :cond_9
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v4

    .line 30
    invoke-virtual {v5, v4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v4

    if-ne v4, v7, :cond_a

    .line 31
    iget-object v0, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 32
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 33
    invoke-static {v1, v2, v3}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 34
    :cond_a
    iget-object v0, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 35
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    :cond_b
    :goto_2
    return-void
.end method

.method public static e(Le/h/a/c/w0/i;Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "HH:mm"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance p0, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/h/a/c/w0/g$a;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/h/a/c/w0/i;->f(Ljava/lang/String;Le/h/a/c/w0/g$a;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 3

    if-eqz p2, :cond_2

    const-string v0, "wzrk_pn"

    .line 1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iget-boolean v1, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object p2, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string p3, "Instance is set for Analytics only, cannot create notification"

    .line 6
    invoke-virtual {p1, p2, p3}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    :try_start_0
    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    const-string v1, "CleverTapAPI#_createNotification"

    .line 8
    new-instance v2, Le/h/a/c/w0/i$a;

    invoke-direct {v2, p0, p2, p1, p3}, Le/h/a/c/w0/i$a;-><init>(Le/h/a/c/w0/i;Landroid/os/Bundle;Landroid/content/Context;I)V

    .line 9
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 10
    new-instance p2, Le/h/a/c/y0/j;

    invoke-direct {p2, v0, v1, v2}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 11
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 12
    :catchall_0
    iget-object p1, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object p2, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 13
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;Le/h/a/c/w0/g$a;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    if-eq p2, v0, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p2, Le/h/a/c/w0/g$a;->i:Le/h/a/c/w0/g$a;

    invoke-virtual {p0, p1, p2, v0}, Le/h/a/c/w0/i;->k(Ljava/lang/String;Le/h/a/c/w0/g$a;Z)V

    goto :goto_0

    .line 4
    :cond_2
    sget-object p2, Le/h/a/c/w0/g$a;->h:Le/h/a/c/w0/g$a;

    invoke-virtual {p0, p1, p2, v0}, Le/h/a/c/w0/i;->k(Ljava/lang/String;Le/h/a/c/w0/g$a;Z)V

    goto :goto_0

    .line 5
    :cond_3
    sget-object p2, Le/h/a/c/w0/g$a;->g:Le/h/a/c/w0/g$a;

    invoke-virtual {p0, p1, p2, v0}, Le/h/a/c/w0/i;->k(Ljava/lang/String;Le/h/a/c/w0/g$a;Z)V

    goto :goto_0

    .line 6
    :cond_4
    sget-object p2, Le/h/a/c/w0/g$a;->f:Le/h/a/c/w0/g$a;

    invoke-virtual {p0, p1, p2, v0}, Le/h/a/c/w0/i;->k(Ljava/lang/String;Le/h/a/c/w0/g$a;Z)V

    goto :goto_0

    .line 7
    :cond_5
    sget-object p2, Le/h/a/c/w0/g$a;->e:Le/h/a/c/w0/g$a;

    invoke-virtual {p0, p1, p2, v0}, Le/h/a/c/w0/i;->k(Ljava/lang/String;Le/h/a/c/w0/g$a;Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public g(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/w0/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/h/a/c/w0/g$a;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v2, p1, v1}, Le/h/a/c/w0/i;->m(Ljava/lang/String;ZLe/h/a/c/w0/g$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Le/h/a/c/w0/g$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Le/h/a/c/w0/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/h/a/c/w0/a;

    .line 3
    invoke-interface {v2}, Le/h/a/c/w0/a;->getPushType()Le/h/a/c/w0/g$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public i(Le/h/a/c/w0/g$a;)Ljava/lang/String;
    .locals 5

    const-string v0, "PushProvider"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v2, p1, Le/h/a/c/w0/g$a;->c:Ljava/lang/String;

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    iget-object v3, p0, Le/h/a/c/w0/i;->g:Landroid/content/Context;

    iget-object v4, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v3, v4, v2, v1}, Ln3/g0/y;->B0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "getting Cached Token - "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v3, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v2, v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    iget-object v2, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Unable to find cached Token for type "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v3, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {v2, v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public final j(Landroid/content/Context;)I
    .locals 2

    const-string v0, "pf"

    const/16 v1, 0xf0

    .line 1
    invoke-static {p1, v0, v1}, Ln3/g0/y;->m0(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public k(Ljava/lang/String;Le/h/a/c/w0/g$a;Z)V
    .locals 4

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 1
    invoke-virtual {p0, p1, p3, p2}, Le/h/a/c/w0/i;->m(Ljava/lang/String;ZLe/h/a/c/w0/g$a;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 3
    :try_start_0
    iget-object p3, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {p3}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object p3

    invoke-virtual {p3}, Le/h/a/c/y0/b;->a()Le/h/a/c/y0/k;

    move-result-object p3

    const-string v0, "PushProviders#cacheToken"

    .line 4
    new-instance v1, Le/h/a/c/w0/j;

    invoke-direct {v1, p0, p1, p2}, Le/h/a/c/w0/j;-><init>(Le/h/a/c/w0/i;Ljava/lang/String;Le/h/a/c/w0/g$a;)V

    .line 5
    iget-object v2, p3, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 6
    new-instance v3, Le/h/a/c/y0/j;

    invoke-direct {v3, p3, v0, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 7
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    iget-object p3, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "Unable to cache token "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    iget-object p1, p3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    const-string p2, "PushProvider"

    invoke-virtual {p3, p2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 11
    invoke-virtual {p0, p1, p3, p2}, Le/h/a/c/w0/i;->m(Ljava/lang/String;ZLe/h/a/c/w0/g$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public l()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/h/a/c/w0/i;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/h/a/c/w0/g$a;

    .line 2
    invoke-virtual {p0, v1}, Le/h/a/c/w0/i;->i(Le/h/a/c/w0/g$a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final m(Ljava/lang/String;ZLe/h/a/c/w0/g$a;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Le/h/a/c/w0/i;->i(Le/h/a/c/w0/g$a;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Le/h/a/c/w0/i;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_3

    const-string p2, "register"

    goto :goto_1

    :cond_3
    const-string p2, "unregister"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    const-string v3, "action"

    .line 6
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "id"

    .line 7
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type"

    .line 8
    iget-object v4, p3, Le/h/a/c/w0/g$a;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "data"

    .line 10
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object v2, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    iget-object v3, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 12
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " device token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Le/h/a/c/w0/i;->d:Le/h/a/c/f;

    .line 15
    iget-object v2, p1, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    iget-object p1, p1, Le/h/a/c/f;->f:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-virtual {v2, p1, v1, v3}, Le/h/a/c/n0/a;->d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 16
    :catchall_0
    :try_start_2
    iget-object p1, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v1, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 17
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " device token failed"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public n(Landroid/content/Context;Landroid/app/job/JobParameters;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 2
    new-instance v1, Le/h/a/c/w0/i$c;

    invoke-direct {v1, p0, p1, p2}, Le/h/a/c/w0/i$c;-><init>(Le/h/a/c/w0/i;Landroid/content/Context;Landroid/app/job/JobParameters;)V

    .line 3
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 4
    new-instance p2, Le/h/a/c/y0/j;

    const-string v2, "runningJobService"

    invoke-direct {p2, v0, v2, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 5
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Landroid/content/Context;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    invoke-virtual {p0, p1}, Le/h/a/c/w0/i;->j(Landroid/content/Context;)I

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p1}, Le/h/a/c/w0/i;->j(Landroid/content/Context;)I

    move-result v0

    if-eq p2, v0, :cond_0

    const-string v0, "pf"

    .line 6
    invoke-static {p1, v0, p2}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    .line 7
    iget-object p2, p0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 8
    iget-boolean v0, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->f:Z

    if-eqz v0, :cond_0

    .line 9
    iget-boolean v0, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-nez v0, :cond_0

    .line 10
    invoke-static {p2}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object p2

    invoke-virtual {p2}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object p2

    .line 11
    new-instance v0, Le/h/a/c/w0/i$b;

    invoke-direct {v0, p0, p1}, Le/h/a/c/w0/i$b;-><init>(Le/h/a/c/w0/i;Landroid/content/Context;)V

    .line 12
    iget-object p1, p2, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 13
    new-instance v1, Le/h/a/c/y0/j;

    const-string v2, "createOrResetJobScheduler"

    invoke-direct {v1, p2, v2, v0}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 14
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
