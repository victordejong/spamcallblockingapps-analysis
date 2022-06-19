.class public Ln3/m0/c0/s/t$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/m0/c0/s/t;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Ln3/m0/c0/s/p;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ln3/m0/c0/s/t;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p1

    .line 1
    move-object/from16 v0, p2

    check-cast v0, Ln3/m0/c0/s/p;

    .line 2
    iget-object v2, v0, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 3
    invoke-interface {v1, v3}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1, v3, v2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object v2, v0, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    invoke-static {v2}, Ln3/g0/y;->V1(Ln3/m0/x$a;)I

    move-result v2

    int-to-long v4, v2

    const/4 v2, 0x2

    .line 6
    invoke-interface {v1, v2, v4, v5}, Ln3/e0/a/d;->l0(IJ)V

    .line 7
    iget-object v4, v0, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    const/4 v5, 0x3

    if-nez v4, :cond_1

    .line 8
    invoke-interface {v1, v5}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v1, v5, v4}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 10
    :goto_1
    iget-object v4, v0, Ln3/m0/c0/s/p;->d:Ljava/lang/String;

    const/4 v6, 0x4

    if-nez v4, :cond_2

    .line 11
    invoke-interface {v1, v6}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {v1, v6, v4}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 13
    :goto_2
    iget-object v4, v0, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    invoke-static {v4}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    move-result-object v4

    const/4 v7, 0x5

    if-nez v4, :cond_3

    .line 14
    invoke-interface {v1, v7}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-interface {v1, v7, v4}, Ln3/e0/a/d;->o0(I[B)V

    .line 16
    :goto_3
    iget-object v4, v0, Ln3/m0/c0/s/p;->f:Ln3/m0/f;

    invoke-static {v4}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    move-result-object v4

    const/4 v8, 0x6

    if-nez v4, :cond_4

    .line 17
    invoke-interface {v1, v8}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 18
    :cond_4
    invoke-interface {v1, v8, v4}, Ln3/e0/a/d;->o0(I[B)V

    :goto_4
    const/4 v4, 0x7

    .line 19
    iget-wide v8, v0, Ln3/m0/c0/s/p;->g:J

    invoke-interface {v1, v4, v8, v9}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v4, 0x8

    .line 20
    iget-wide v8, v0, Ln3/m0/c0/s/p;->h:J

    invoke-interface {v1, v4, v8, v9}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v4, 0x9

    .line 21
    iget-wide v8, v0, Ln3/m0/c0/s/p;->i:J

    invoke-interface {v1, v4, v8, v9}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v4, 0xa

    .line 22
    iget v8, v0, Ln3/m0/c0/s/p;->k:I

    int-to-long v8, v8

    invoke-interface {v1, v4, v8, v9}, Ln3/e0/a/d;->l0(IJ)V

    .line 23
    iget-object v4, v0, Ln3/m0/c0/s/p;->l:Ln3/m0/a;

    .line 24
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const-string v9, " to int"

    const-string v10, "Could not convert "

    if-eqz v8, :cond_6

    if-ne v8, v3, :cond_5

    move v4, v3

    goto :goto_5

    .line 25
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v4, 0x0

    :goto_5
    const/16 v8, 0xb

    int-to-long v12, v4

    .line 26
    invoke-interface {v1, v8, v12, v13}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v4, 0xc

    .line 27
    iget-wide v12, v0, Ln3/m0/c0/s/p;->m:J

    invoke-interface {v1, v4, v12, v13}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v4, 0xd

    .line 28
    iget-wide v12, v0, Ln3/m0/c0/s/p;->n:J

    invoke-interface {v1, v4, v12, v13}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v4, 0xe

    .line 29
    iget-wide v12, v0, Ln3/m0/c0/s/p;->o:J

    invoke-interface {v1, v4, v12, v13}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v4, 0xf

    .line 30
    iget-wide v12, v0, Ln3/m0/c0/s/p;->p:J

    invoke-interface {v1, v4, v12, v13}, Ln3/e0/a/d;->l0(IJ)V

    .line 31
    iget-boolean v4, v0, Ln3/m0/c0/s/p;->q:Z

    const/16 v8, 0x10

    int-to-long v12, v4

    .line 32
    invoke-interface {v1, v8, v12, v13}, Ln3/e0/a/d;->l0(IJ)V

    .line 33
    iget-object v4, v0, Ln3/m0/c0/s/p;->r:Ln3/m0/t;

    .line 34
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_8

    if-ne v8, v3, :cond_7

    move v4, v3

    goto :goto_6

    .line 35
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v4, 0x0

    :goto_6
    const/16 v8, 0x11

    int-to-long v12, v4

    .line 36
    invoke-interface {v1, v8, v12, v13}, Ln3/e0/a/d;->l0(IJ)V

    .line 37
    iget-object v0, v0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    const/16 v4, 0x17

    const/16 v8, 0x16

    const/16 v12, 0x15

    const/16 v13, 0x14

    const/16 v14, 0x13

    const/16 v15, 0x12

    if-eqz v0, :cond_14

    .line 38
    iget-object v11, v0, Ln3/m0/d;->a:Ln3/m0/q;

    .line 39
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_d

    if-eq v7, v3, :cond_e

    if-eq v7, v2, :cond_c

    if-eq v7, v5, :cond_b

    if-eq v7, v6, :cond_a

    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_9

    sget-object v2, Ln3/m0/q;->f:Ln3/m0/q;

    if-ne v11, v2, :cond_9

    const/4 v3, 0x5

    goto :goto_7

    .line 41
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v3, v6

    goto :goto_7

    :cond_b
    move v3, v5

    goto :goto_7

    :cond_c
    move v3, v2

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :cond_e
    :goto_7
    int-to-long v2, v3

    .line 42
    invoke-interface {v1, v15, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 43
    iget-boolean v2, v0, Ln3/m0/d;->b:Z

    int-to-long v2, v2

    .line 44
    invoke-interface {v1, v14, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 45
    iget-boolean v2, v0, Ln3/m0/d;->c:Z

    int-to-long v2, v2

    .line 46
    invoke-interface {v1, v13, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 47
    iget-boolean v2, v0, Ln3/m0/d;->d:Z

    int-to-long v2, v2

    .line 48
    invoke-interface {v1, v12, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 49
    iget-boolean v2, v0, Ln3/m0/d;->e:Z

    int-to-long v2, v2

    .line 50
    invoke-interface {v1, v8, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 51
    iget-wide v2, v0, Ln3/m0/d;->f:J

    .line 52
    invoke-interface {v1, v4, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 53
    iget-wide v2, v0, Ln3/m0/d;->g:J

    const/16 v4, 0x18

    .line 54
    invoke-interface {v1, v4, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 55
    iget-object v0, v0, Ln3/m0/d;->h:Ln3/m0/e;

    .line 56
    invoke-virtual {v0}, Ln3/m0/e;->a()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    goto :goto_c

    .line 57
    :cond_f
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    invoke-virtual {v0}, Ln3/m0/e;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 60
    iget-object v0, v0, Ln3/m0/e;->a:Ljava/util/Set;

    .line 61
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/m0/e$a;

    .line 62
    iget-object v5, v3, Ln3/m0/e$a;->a:Landroid/net/Uri;

    .line 63
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 64
    iget-boolean v3, v3, Ln3/m0/e$a;->b:Z

    .line 65
    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 66
    :cond_10
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_e

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    .line 67
    :goto_9
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_11

    .line 68
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 69
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    :cond_11
    :goto_a
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 71
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    :goto_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_c
    if-nez v3, :cond_12

    const/16 v2, 0x19

    .line 73
    invoke-interface {v1, v2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_11

    :cond_12
    const/16 v2, 0x19

    .line 74
    invoke-interface {v1, v2, v3}, Ln3/e0/a/d;->o0(I[B)V

    goto :goto_11

    :goto_d
    move-object v1, v0

    move-object v4, v3

    :goto_e
    if-eqz v4, :cond_13

    .line 75
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 76
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    :cond_13
    :goto_f
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_10

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 78
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    :goto_10
    throw v1

    .line 80
    :cond_14
    invoke-interface {v1, v15}, Ln3/e0/a/d;->y0(I)V

    .line 81
    invoke-interface {v1, v14}, Ln3/e0/a/d;->y0(I)V

    .line 82
    invoke-interface {v1, v13}, Ln3/e0/a/d;->y0(I)V

    .line 83
    invoke-interface {v1, v12}, Ln3/e0/a/d;->y0(I)V

    .line 84
    invoke-interface {v1, v8}, Ln3/e0/a/d;->y0(I)V

    .line 85
    invoke-interface {v1, v4}, Ln3/e0/a/d;->y0(I)V

    const/16 v0, 0x18

    .line 86
    invoke-interface {v1, v0}, Ln3/e0/a/d;->y0(I)V

    const/16 v2, 0x19

    .line 87
    invoke-interface {v1, v2}, Ln3/e0/a/d;->y0(I)V

    :goto_11
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
