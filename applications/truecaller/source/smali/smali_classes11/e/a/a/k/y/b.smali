.class public abstract Le/a/a/k/y/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/y/k;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/truecaller/multisim/SimInfo;

.field public final c:Le/a/e4/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/multisim/SimInfo;Le/a/e4/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/k/y/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/a/k/y/b;->b:Lcom/truecaller/multisim/SimInfo;

    .line 4
    iput-object p3, p0, Le/a/a/k/y/b;->c:Le/a/e4/i;

    return-void
.end method


# virtual methods
.method public a([BLandroid/net/Uri;I)V
    .locals 8

    .line 1
    :try_start_0
    new-instance v5, Le/d/b/a/b/i;

    const/16 v0, 0x12

    invoke-direct {v5, v0, p1, p3}, Le/d/b/a/b/i;-><init>(I[BI)V

    const/4 p1, 0x0

    .line 2
    iget-object p3, p0, Le/a/a/k/y/b;->c:Le/a/e4/i;

    invoke-interface {p3}, Le/a/e4/i;->e()Z

    move-result p3

    if-eqz p3, :cond_0

    move-object v6, p2

    goto :goto_0

    :cond_0
    move-object v6, p1

    :goto_0
    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v7, p2

    .line 3
    invoke-virtual/range {v0 .. v7}, Le/a/a/k/y/b;->e(JJLe/d/b/a/b/f;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Le/d/b/a/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public b([BLandroid/net/Uri;)V
    .locals 8

    .line 1
    :try_start_0
    new-instance v5, Le/d/b/a/b/a;

    const/16 v0, 0x12

    invoke-direct {v5, v0, p1}, Le/d/b/a/b/a;-><init>(I[B)V

    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Le/a/a/k/y/b;->c:Le/a/e4/i;

    invoke-interface {v0}, Le/a/e4/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v6, p2

    goto :goto_0

    :cond_0
    move-object v6, p1

    :goto_0
    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v7, p2

    .line 3
    invoke-virtual/range {v0 .. v7}, Le/a/a/k/y/b;->e(JJLe/d/b/a/b/f;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Le/d/b/a/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public c(JJLe/d/b/a/b/t;Landroid/net/Uri;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Le/a/a/k/y/b;->e(JJLe/d/b/a/b/f;Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public d(J[BLandroid/net/Uri;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/k/y/b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/truecaller/util/TempContentProvider;->a(Landroid/content/Context;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/a/a/k/y/b;->a:Landroid/content/Context;

    .line 3
    iget-object v3, p0, Le/a/a/k/y/b;->b:Lcom/truecaller/multisim/SimInfo;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "-1"

    .line 4
    :goto_0
    sget v4, Lcom/truecaller/messaging/transport/mms/MmsStatusReceiver;->b:I

    .line 5
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/truecaller/messaging/transport/mms/MmsStatusReceiver;

    const-string v6, "com.truecaller.messaging.transport.mms.MmsStatusReceiver.MMS_DOWNLOAD"

    invoke-direct {v4, v6, p4, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "pdu_uri"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v2, "transaction_id"

    .line 7
    invoke-virtual {v4, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p3, "raw_message_id"

    .line 8
    invoke-virtual {v4, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "is_auto_download"

    .line 9
    invoke-virtual {v4, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "sim_token"

    .line 10
    invoke-virtual {v4, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 11
    iget-object p1, p0, Le/a/a/k/y/b;->a:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 12
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_3

    const/high16 p1, 0xa000000

    goto :goto_1

    :cond_3
    const/high16 p1, 0x8000000

    .line 13
    :goto_1
    iget-object p2, p0, Le/a/a/k/y/b;->a:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-static {p2, p3, v4, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 14
    move-object p2, p0

    check-cast p2, Le/a/a/k/y/m;

    if-nez p4, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    :try_start_0
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    :goto_2
    iget-object p2, p2, Le/a/a/k/y/m;->d:Le/a/a/k/y/f;

    invoke-interface {p2, v1, v0, p1}, Le/a/a/k/y/f;->b(Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 17
    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_3
    if-nez p3, :cond_5

    const/4 p2, 0x5

    .line 18
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    return-void
.end method

.method public final e(JJLe/d/b/a/b/f;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    .line 1
    new-instance v4, Le/d/b/a/b/k;

    iget-object v0, v1, Le/a/a/k/y/b;->a:Landroid/content/Context;

    move-object/from16 v5, p5

    invoke-direct {v4, v0, v5}, Le/d/b/a/b/k;-><init>(Landroid/content/Context;Le/d/b/a/b/f;)V

    .line 2
    iget-object v0, v4, Le/d/b/a/b/k;->b:Le/d/b/a/b/f;

    invoke-virtual {v0}, Le/d/b/a/b/f;->a()I

    move-result v0

    const/16 v5, 0x8a

    const/16 v6, 0x96

    const/16 v7, 0x80

    const/16 v8, 0x89

    const/16 v9, 0x82

    const/16 v10, 0x98

    const/16 v11, 0x8d

    const/16 v12, 0x8c

    const/16 v13, 0x85

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eq v0, v7, :cond_19

    if-eq v0, v13, :cond_15

    const/16 v7, 0x87

    if-eq v0, v7, :cond_e

    const/16 v7, 0x83

    if-eq v0, v9, :cond_5

    if-eq v0, v7, :cond_0

    goto/16 :goto_14

    .line 3
    :cond_0
    iget-object v0, v4, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, v4, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    .line 5
    iput v14, v4, Le/d/b/a/b/k;->c:I

    .line 6
    :cond_1
    invoke-virtual {v4, v12}, Le/d/b/a/b/k;->f(I)V

    .line 7
    invoke-virtual {v4, v7}, Le/d/b/a/b/k;->f(I)V

    .line 8
    invoke-virtual {v4, v10}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v4, v11}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x95

    .line 10
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    const/4 v14, 0x1

    :cond_4
    if-eqz v14, :cond_35

    goto/16 :goto_14

    .line 11
    :cond_5
    iget-object v0, v4, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_6

    .line 12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, v4, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    .line 13
    iput v14, v4, Le/d/b/a/b/k;->c:I

    .line 14
    :cond_6
    invoke-virtual {v4, v12}, Le/d/b/a/b/k;->f(I)V

    .line 15
    invoke-virtual {v4, v9}, Le/d/b/a/b/k;->f(I)V

    .line 16
    invoke-virtual {v4, v10}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {v4, v11}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 18
    :cond_8
    invoke-virtual {v4, v8}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    .line 19
    :cond_9
    invoke-virtual {v4, v6}, Le/d/b/a/b/k;->d(I)I

    .line 20
    invoke-virtual {v4, v5}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    const/16 v0, 0x8e

    .line 21
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    :cond_b
    const/16 v0, 0x88

    .line 22
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1

    .line 23
    :cond_c
    invoke-virtual {v4, v7}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_d

    :goto_1
    const/4 v14, 0x1

    :cond_d
    if-eqz v14, :cond_35

    goto/16 :goto_14

    .line 24
    :cond_e
    iget-object v0, v4, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_f

    .line 25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, v4, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    .line 26
    iput v14, v4, Le/d/b/a/b/k;->c:I

    .line 27
    :cond_f
    invoke-virtual {v4, v12}, Le/d/b/a/b/k;->f(I)V

    .line 28
    invoke-virtual {v4, v7}, Le/d/b/a/b/k;->f(I)V

    .line 29
    invoke-virtual {v4, v11}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_2

    :cond_10
    const/16 v0, 0x8b

    .line 30
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2

    :cond_11
    const/16 v0, 0x97

    .line 31
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_2

    .line 32
    :cond_12
    invoke-virtual {v4, v8}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2

    .line 33
    :cond_13
    invoke-virtual {v4, v13}, Le/d/b/a/b/k;->d(I)I

    const/16 v0, 0x9b

    .line 34
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_14

    :goto_2
    const/4 v14, 0x1

    :cond_14
    if-eqz v14, :cond_35

    goto/16 :goto_14

    .line 35
    :cond_15
    iget-object v0, v4, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_16

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, v4, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    .line 37
    iput v14, v4, Le/d/b/a/b/k;->c:I

    .line 38
    :cond_16
    invoke-virtual {v4, v12}, Le/d/b/a/b/k;->f(I)V

    .line 39
    invoke-virtual {v4, v13}, Le/d/b/a/b/k;->f(I)V

    .line 40
    invoke-virtual {v4, v10}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_3

    .line 41
    :cond_17
    invoke-virtual {v4, v11}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_18

    :goto_3
    const/4 v14, 0x1

    goto :goto_4

    :cond_18
    const/16 v0, 0x91

    .line 42
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->d(I)I

    :goto_4
    if-eqz v14, :cond_35

    goto/16 :goto_14

    .line 43
    :cond_19
    iget-object v0, v4, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_1a

    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, v4, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    .line 45
    iput v14, v4, Le/d/b/a/b/k;->c:I

    .line 46
    :cond_1a
    invoke-virtual {v4, v12}, Le/d/b/a/b/k;->f(I)V

    .line 47
    invoke-virtual {v4, v7}, Le/d/b/a/b/k;->f(I)V

    .line 48
    invoke-virtual {v4, v10}, Le/d/b/a/b/k;->f(I)V

    .line 49
    iget-object v0, v4, Le/d/b/a/b/k;->f:Le/d/b/a/b/m;

    invoke-virtual {v0, v10}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v0

    if-eqz v0, :cond_44

    .line 50
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->i([B)V

    .line 51
    invoke-virtual {v4, v11}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_5

    .line 52
    :cond_1b
    invoke-virtual {v4, v13}, Le/d/b/a/b/k;->d(I)I

    .line 53
    invoke-virtual {v4, v8}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    if-eqz v0, :cond_1c

    :goto_5
    goto/16 :goto_11

    :cond_1c
    const/16 v0, 0x97

    .line 54
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->d(I)I

    move-result v0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_1d

    move v0, v7

    goto :goto_6

    :cond_1d
    move v0, v14

    .line 55
    :goto_6
    invoke-virtual {v4, v9}, Le/d/b/a/b/k;->d(I)I

    move-result v8

    if-eq v8, v7, :cond_1e

    move v0, v7

    :cond_1e
    const/16 v8, 0x81

    .line 56
    invoke-virtual {v4, v8}, Le/d/b/a/b/k;->d(I)I

    move-result v8

    if-eq v8, v7, :cond_1f

    move v0, v7

    :cond_1f
    if-nez v0, :cond_20

    move v0, v7

    goto/16 :goto_13

    .line 57
    :cond_20
    invoke-virtual {v4, v6}, Le/d/b/a/b/k;->d(I)I

    .line 58
    invoke-virtual {v4, v5}, Le/d/b/a/b/k;->d(I)I

    const/16 v0, 0x88

    .line 59
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->d(I)I

    const/16 v0, 0x8f

    .line 60
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->d(I)I

    const/16 v0, 0x86

    .line 61
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->d(I)I

    const/16 v0, 0x90

    .line 62
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->d(I)I

    const/16 v0, 0x84

    .line 63
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->f(I)V

    const-string v6, ">"

    const-string v7, "<"

    .line 64
    sget-object v8, Le/d/b/a/b/k;->g:Ln3/g/h;

    iget-object v9, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v9}, Le/d/b/a/b/k$b;->c()V

    .line 65
    iget-object v9, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v9}, Le/d/b/a/b/k$b;->b()Le/d/b/a/b/k$d;

    move-result-object v9

    .line 66
    iget-object v10, v4, Le/d/b/a/b/k;->f:Le/d/b/a/b/m;

    invoke-virtual {v10, v0}, Le/d/b/a/b/m;->f(I)[B

    move-result-object v0

    new-array v10, v14, [Ljava/lang/String;

    .line 67
    invoke-static {v0, v10}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 68
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 69
    invoke-virtual {v8, v10, v15}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_21

    goto/16 :goto_11

    .line 71
    :cond_21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->h(I)V

    .line 72
    iget-object v0, v4, Le/d/b/a/b/k;->b:Le/d/b/a/b/f;

    check-cast v0, Le/d/b/a/b/t;

    .line 73
    iget-object v10, v0, Le/d/b/a/b/g;->b:Le/d/b/a/b/j;

    if-eqz v10, :cond_33

    .line 74
    invoke-virtual {v10}, Le/d/b/a/b/j;->b()I

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_12

    :cond_22
    const/16 v0, 0x3e

    const/16 v11, 0x3c

    .line 75
    :try_start_0
    invoke-virtual {v10, v14}, Le/d/b/a/b/j;->a(I)Le/d/b/a/b/o;

    move-result-object v12

    .line 76
    invoke-virtual {v12}, Le/d/b/a/b/o;->b()[B

    move-result-object v13

    if-eqz v13, :cond_24

    .line 77
    invoke-virtual {v4, v5}, Le/d/b/a/b/k;->f(I)V

    .line 78
    aget-byte v5, v13, v14

    if-ne v11, v5, :cond_23

    array-length v5, v13

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v13, v5

    if-ne v0, v5, :cond_23

    .line 79
    invoke-virtual {v4, v13}, Le/d/b/a/b/k;->i([B)V

    goto :goto_7

    .line 80
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->i([B)V

    :cond_24
    :goto_7
    const/16 v0, 0x89

    .line 82
    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->f(I)V

    .line 83
    invoke-virtual {v12}, Le/d/b/a/b/o;->d()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Le/d/b/a/b/k;->i([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 85
    :goto_8
    invoke-virtual {v9}, Le/d/b/a/b/k$d;->a()I

    move-result v0

    .line 86
    iget-object v5, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v5}, Le/d/b/a/b/k$b;->d()V

    int-to-long v11, v0

    .line 87
    invoke-virtual {v4, v11, v12}, Le/d/b/a/b/k;->k(J)V

    .line 88
    iget-object v0, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v0}, Le/d/b/a/b/k$b;->a()V

    .line 89
    invoke-virtual {v10}, Le/d/b/a/b/j;->b()I

    move-result v0

    int-to-long v11, v0

    .line 90
    invoke-virtual {v4, v11, v12}, Le/d/b/a/b/k;->j(J)V

    :goto_9
    if-ge v14, v0, :cond_34

    .line 91
    invoke-virtual {v10, v14}, Le/d/b/a/b/j;->a(I)Le/d/b/a/b/o;

    move-result-object v5

    .line 92
    iget-object v9, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v9}, Le/d/b/a/b/k$b;->c()V

    .line 93
    iget-object v9, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v9}, Le/d/b/a/b/k$b;->b()Le/d/b/a/b/k$d;

    move-result-object v9

    .line 94
    iget-object v11, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v11}, Le/d/b/a/b/k$b;->c()V

    .line 95
    iget-object v11, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v11}, Le/d/b/a/b/k$b;->b()Le/d/b/a/b/k$d;

    move-result-object v11

    .line 96
    invoke-virtual {v5}, Le/d/b/a/b/o;->d()[B

    move-result-object v12

    if-nez v12, :cond_25

    goto/16 :goto_11

    .line 97
    :cond_25
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v12}, Ljava/lang/String;-><init>([B)V

    const/4 v15, 0x0

    .line 98
    invoke-virtual {v8, v13, v15}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 99
    check-cast v13, Ljava/lang/Integer;

    if-nez v13, :cond_26

    .line 100
    invoke-virtual {v4, v12}, Le/d/b/a/b/k;->i([B)V

    goto :goto_a

    .line 101
    :cond_26
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v12}, Le/d/b/a/b/k;->h(I)V

    .line 102
    :goto_a
    invoke-virtual {v5}, Le/d/b/a/b/o;->f()[B

    move-result-object v12

    if-nez v12, :cond_27

    .line 103
    invoke-virtual {v5}, Le/d/b/a/b/o;->e()[B

    move-result-object v12

    if-nez v12, :cond_27

    .line 104
    invoke-virtual {v5}, Le/d/b/a/b/o;->c()[B

    move-result-object v12

    if-nez v12, :cond_27

    const-string v12, "smil.xml"

    .line 105
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    :cond_27
    const/16 v13, 0x85

    .line 106
    invoke-virtual {v4, v13}, Le/d/b/a/b/k;->f(I)V

    .line 107
    invoke-virtual {v4, v12}, Le/d/b/a/b/k;->i([B)V

    .line 108
    invoke-virtual {v5}, Le/d/b/a/b/o;->a()I

    move-result v12

    const/16 v13, 0x81

    if-eqz v12, :cond_28

    .line 109
    invoke-virtual {v4, v13}, Le/d/b/a/b/k;->f(I)V

    .line 110
    invoke-virtual {v4, v12}, Le/d/b/a/b/k;->h(I)V

    .line 111
    :cond_28
    invoke-virtual {v11}, Le/d/b/a/b/k$d;->a()I

    move-result v11

    .line 112
    iget-object v12, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v12}, Le/d/b/a/b/k$b;->d()V

    int-to-long v11, v11

    .line 113
    invoke-virtual {v4, v11, v12}, Le/d/b/a/b/k;->k(J)V

    .line 114
    iget-object v11, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v11}, Le/d/b/a/b/k$b;->a()V

    .line 115
    invoke-virtual {v5}, Le/d/b/a/b/o;->b()[B

    move-result-object v11

    if-eqz v11, :cond_2a

    const/16 v12, 0xc0

    .line 116
    invoke-virtual {v4, v12}, Le/d/b/a/b/k;->f(I)V

    const/4 v12, 0x0

    .line 117
    aget-byte v12, v11, v12

    const/16 v13, 0x3c

    if-ne v13, v12, :cond_29

    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    aget-byte v12, v11, v12

    const/16 v13, 0x3e

    if-ne v13, v12, :cond_29

    .line 118
    invoke-virtual {v4, v11}, Le/d/b/a/b/k;->g([B)V

    goto :goto_b

    .line 119
    :cond_29
    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 120
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v4, v11}, Le/d/b/a/b/k;->g([B)V

    .line 121
    :cond_2a
    :goto_b
    invoke-virtual {v5}, Le/d/b/a/b/o;->c()[B

    move-result-object v11

    const/16 v12, 0x8e

    if-eqz v11, :cond_2b

    .line 122
    invoke-virtual {v4, v12}, Le/d/b/a/b/k;->f(I)V

    .line 123
    invoke-virtual {v4, v11}, Le/d/b/a/b/k;->i([B)V

    .line 124
    :cond_2b
    invoke-virtual {v9}, Le/d/b/a/b/k$d;->a()I

    move-result v11

    .line 125
    iget-object v12, v5, Le/d/b/a/b/o;->c:[B

    if-eqz v12, :cond_2c

    .line 126
    array-length v5, v12

    .line 127
    iget-object v13, v4, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    const/4 v15, 0x0

    invoke-virtual {v13, v12, v15, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 128
    iget v13, v4, Le/d/b/a/b/k;->c:I

    add-int/2addr v13, v5

    iput v13, v4, Le/d/b/a/b/k;->c:I

    .line 129
    array-length v5, v12

    move/from16 p5, v0

    move-object/from16 v16, v6

    goto :goto_e

    :cond_2c
    const/16 v12, 0x400

    :try_start_1
    new-array v12, v12, [B

    .line 130
    iget-object v13, v4, Le/d/b/a/b/k;->e:Landroid/content/ContentResolver;

    .line 131
    iget-object v5, v5, Le/d/b/a/b/o;->b:Landroid/net/Uri;

    .line 132
    invoke-virtual {v13, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_2e

    const/4 v13, 0x0

    .line 133
    :goto_c
    :try_start_2
    invoke-virtual {v5, v12}, Ljava/io/InputStream;->read([B)I

    move-result v15

    move/from16 p5, v0

    const/4 v0, -0x1

    if-eq v15, v0, :cond_2d

    .line 134
    iget-object v0, v4, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v12, v6, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 135
    iget v0, v4, Le/d/b/a/b/k;->c:I

    add-int/2addr v0, v15

    iput v0, v4, Le/d/b/a/b/k;->c:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v13, v15

    move/from16 v0, p5

    move-object/from16 v6, v16

    goto :goto_c

    :cond_2d
    move-object/from16 v16, v6

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_f

    :cond_2e
    move/from16 p5, v0

    move-object/from16 v16, v6

    const/4 v0, 0x0

    move v13, v0

    :goto_d
    if-eqz v5, :cond_2f

    .line 136
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2f
    move v5, v13

    .line 137
    :goto_e
    invoke-virtual {v9}, Le/d/b/a/b/k$d;->a()I

    move-result v0

    sub-int/2addr v0, v11

    if-ne v5, v0, :cond_30

    .line 138
    iget-object v0, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v0}, Le/d/b/a/b/k$b;->d()V

    int-to-long v11, v11

    .line 139
    invoke-virtual {v4, v11, v12}, Le/d/b/a/b/k;->j(J)V

    int-to-long v5, v5

    .line 140
    invoke-virtual {v4, v5, v6}, Le/d/b/a/b/k;->j(J)V

    .line 141
    iget-object v0, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v0}, Le/d/b/a/b/k$b;->a()V

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p5

    move-object/from16 v6, v16

    goto/16 :goto_9

    .line 142
    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "BUG: Length sanity check failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    :goto_f
    if-eqz v5, :cond_31

    .line 143
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 144
    :catch_2
    :cond_31
    throw v0

    :catch_3
    const/4 v5, 0x0

    :catch_4
    if-eqz v5, :cond_32

    goto :goto_10

    :catch_5
    const/4 v5, 0x0

    :catch_6
    if-eqz v5, :cond_32

    goto :goto_10

    :catch_7
    const/4 v5, 0x0

    :catch_8
    if-eqz v5, :cond_32

    .line 145
    :goto_10
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    :catch_9
    :cond_32
    :goto_11
    const/4 v0, 0x1

    goto :goto_13

    :cond_33
    :goto_12
    const-wide/16 v5, 0x0

    .line 146
    invoke-virtual {v4, v5, v6}, Le/d/b/a/b/k;->j(J)V

    .line 147
    iget-object v0, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v0}, Le/d/b/a/b/k$b;->d()V

    .line 148
    iget-object v0, v4, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v0}, Le/d/b/a/b/k$b;->a()V

    :cond_34
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_35

    const/4 v15, 0x0

    goto :goto_14

    .line 149
    :cond_35
    iget-object v0, v4, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    :goto_14
    if-eqz v15, :cond_3c

    .line 150
    array-length v0, v15

    if-nez v0, :cond_36

    goto :goto_18

    .line 151
    :cond_36
    iget-object v0, v1, Le/a/a/k/y/b;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/truecaller/util/TempContentProvider;->a(Landroid/content/Context;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_37

    goto :goto_17

    .line 152
    :cond_37
    :try_start_6
    iget-object v0, v1, Le/a/a/k/y/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "w"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v5, :cond_38

    if-eqz v5, :cond_3a

    goto :goto_16

    .line 153
    :cond_38
    :try_start_7
    invoke-virtual {v5, v15}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 154
    :try_start_8
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    :catch_a
    const/4 v0, 0x0

    goto :goto_1a

    :catchall_2
    move-exception v0

    goto :goto_15

    :catchall_3
    move-exception v0

    const/4 v5, 0x0

    :goto_15
    if-eqz v5, :cond_39

    :try_start_9
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 155
    :catch_b
    :cond_39
    iget-object v2, v1, Le/a/a/k/y/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    throw v0

    :catch_c
    const/4 v5, 0x0

    :catch_d
    if-eqz v5, :cond_3a

    .line 157
    :goto_16
    :try_start_a
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    .line 158
    :catch_e
    :cond_3a
    iget-object v0, v1, Le/a/a/k/y/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_17
    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_1a

    :catch_f
    const/4 v5, 0x0

    :catch_10
    if-eqz v5, :cond_3b

    .line 159
    :try_start_b
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11

    .line 160
    :catch_11
    :cond_3b
    iget-object v0, v1, Le/a/a/k/y/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v4, v5

    goto :goto_19

    :cond_3c
    :goto_18
    const/4 v0, 0x0

    move-object v4, v0

    :goto_19
    move-object v0, v4

    .line 161
    :goto_1a
    iget-object v5, v1, Le/a/a/k/y/b;->a:Landroid/content/Context;

    .line 162
    iget-object v6, v1, Le/a/a/k/y/b;->b:Lcom/truecaller/multisim/SimInfo;

    if-eqz v6, :cond_3d

    iget-object v6, v6, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    goto :goto_1b

    :cond_3d
    const-string v6, "-1"

    .line 163
    :goto_1b
    sget v7, Lcom/truecaller/messaging/transport/mms/MmsStatusReceiver;->b:I

    .line 164
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/truecaller/messaging/transport/mms/MmsStatusReceiver;

    const-string v9, "com.truecaller.messaging.transport.mms.MmsStatusReceiver.MMS_SENT"

    move-object/from16 v10, p7

    invoke-direct {v7, v9, v10, v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v4, :cond_3e

    .line 165
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "pdu_uri"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3e
    const-string v5, "raw_message_id"

    move-wide/from16 v8, p1

    .line 166
    invoke-virtual {v7, v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-wide/16 v8, -0x1

    cmp-long v5, v2, v8

    if-eqz v5, :cond_3f

    const-string v5, "message_date"

    .line 167
    invoke-virtual {v7, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3f
    const-string v2, "sim_token"

    .line 168
    invoke-virtual {v7, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v4, :cond_40

    .line 169
    iget-object v0, v1, Le/a/a/k/y/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 170
    :cond_40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_41

    const/high16 v2, 0xa000000

    goto :goto_1c

    :cond_41
    const/high16 v2, 0x8000000

    .line 171
    :goto_1c
    iget-object v3, v1, Le/a/a/k/y/b;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v3, v5, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 172
    move-object v3, v1

    check-cast v3, Le/a/a/k/y/m;

    if-nez p6, :cond_42

    goto :goto_1d

    .line 173
    :cond_42
    :try_start_c
    invoke-virtual/range {p6 .. p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_1d
    iget-object v3, v3, Le/a/a/k/y/m;->d:Le/a/a/k/y/f;

    invoke-interface {v3, v4, v0, v2}, Le/a/a/k/y/f;->a(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v5
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_12

    goto :goto_1e

    :catch_12
    move-exception v0

    .line 175
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_1e
    if-nez v5, :cond_43

    const/4 v0, 0x5

    .line 176
    :try_start_d
    invoke-virtual {v2, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_d .. :try_end_d} :catch_13

    :catch_13
    :cond_43
    return-void

    .line 177
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Transaction-ID is null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
