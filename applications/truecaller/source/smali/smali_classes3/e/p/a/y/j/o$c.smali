.class public final Le/p/a/y/j/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/p/a/y/j/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/j/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lv3/h;

.field public final b:Le/p/a/y/j/o$a;

.field public final c:Z

.field public final d:Le/p/a/y/j/n$a;


# direct methods
.method public constructor <init>(Lv3/h;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/p/a/y/j/o$c;->a:Lv3/h;

    .line 3
    iput-boolean p3, p0, Le/p/a/y/j/o$c;->c:Z

    .line 4
    new-instance p3, Le/p/a/y/j/o$a;

    invoke-direct {p3, p1}, Le/p/a/y/j/o$a;-><init>(Lv3/h;)V

    iput-object p3, p0, Le/p/a/y/j/o$c;->b:Le/p/a/y/j/o$a;

    .line 5
    new-instance p1, Le/p/a/y/j/n$a;

    invoke-direct {p1, p2, p3}, Le/p/a/y/j/n$a;-><init>(ILv3/b0;)V

    iput-object p1, p0, Le/p/a/y/j/o$c;->d:Le/p/a/y/j/n$a;

    return-void
.end method


# virtual methods
.method public O(Le/p/a/y/j/b$a;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v2, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    const-wide/16 v3, 0x9

    invoke-interface {v2, v3, v4}, Lv3/h;->y1(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v2, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-static {v2}, Le/p/a/y/j/o;->d(Lv3/h;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_27

    const/16 v5, 0x4000

    if-gt v2, v5, :cond_27

    .line 3
    iget-object v6, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v6}, Lv3/h;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 4
    iget-object v7, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v7}, Lv3/h;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 5
    iget-object v8, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v8}, Lv3/h;->readInt()I

    move-result v8

    const v9, 0x7fffffff

    and-int v13, v8, v9

    .line 6
    sget-object v8, Le/p/a/y/j/o;->a:Ljava/util/logging/Logger;

    .line 7
    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v3, v13, v2, v6, v7}, Le/p/a/y/j/o$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v8, 0x2

    const/4 v10, 0x4

    const/16 v11, 0x8

    packed-switch v6, :pswitch_data_0

    .line 8
    iget-object v0, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lv3/h;->skip(J)V

    goto/16 :goto_8

    :pswitch_0
    if-ne v2, v10, :cond_2

    .line 9
    iget-object v2, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    move-result v2

    int-to-long v5, v2

    const-wide/32 v7, 0x7fffffff

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1

    .line 10
    move-object/from16 v0, p1

    check-cast v0, Le/p/a/y/j/d$e;

    invoke-virtual {v0, v13, v5, v6}, Le/p/a/y/j/d$e;->h(IJ)V

    goto/16 :goto_8

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "windowSizeIncrement was 0"

    invoke-static {v0, v2}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :cond_2
    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {v0, v3}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :pswitch_1
    if-lt v2, v11, :cond_6

    if-nez v13, :cond_5

    .line 13
    iget-object v5, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v5}, Lv3/h;->readInt()I

    move-result v5

    .line 14
    iget-object v6, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v6}, Lv3/h;->readInt()I

    move-result v6

    sub-int/2addr v2, v11

    .line 15
    invoke-static {v6}, Le/p/a/y/j/a;->a(I)Le/p/a/y/j/a;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 16
    sget-object v0, Lv3/i;->d:Lv3/i;

    if-lez v2, :cond_3

    .line 17
    iget-object v0, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    int-to-long v8, v2

    invoke-interface {v0, v8, v9}, Lv3/h;->e0(J)Lv3/i;

    move-result-object v0

    .line 18
    :cond_3
    move-object/from16 v2, p1

    check-cast v2, Le/p/a/y/j/d$e;

    invoke-virtual {v2, v5, v7, v0}, Le/p/a/y/j/d$e;->c(ILe/p/a/y/j/a;Lv3/i;)V

    goto/16 :goto_8

    :cond_4
    new-array v2, v3, [Ljava/lang/Object;

    .line 19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v0, v2}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :cond_5
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "TYPE_GOAWAY streamId != 0"

    .line 20
    invoke-static {v2, v0}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :cond_6
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const-string v0, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v0, v3}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :pswitch_2
    if-ne v2, v11, :cond_9

    if-nez v13, :cond_8

    .line 22
    iget-object v2, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    move-result v2

    .line 23
    iget-object v4, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v4}, Lv3/h;->readInt()I

    move-result v4

    and-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_7

    move v0, v3

    .line 24
    :cond_7
    move-object/from16 v5, p1

    check-cast v5, Le/p/a/y/j/d$e;

    invoke-virtual {v5, v0, v2, v4}, Le/p/a/y/j/d$e;->e(ZII)V

    goto/16 :goto_8

    :cond_8
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "TYPE_PING streamId != 0"

    .line 25
    invoke-static {v2, v0}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :cond_9
    new-array v3, v3, [Ljava/lang/Object;

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const-string v0, "TYPE_PING length != 8: %s"

    invoke-static {v0, v3}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :pswitch_3
    if-eqz v13, :cond_c

    and-int/lit8 v4, v7, 0x8

    if-eqz v4, :cond_a

    .line 27
    iget-object v4, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v4}, Lv3/h;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    goto :goto_0

    :cond_a
    move v4, v0

    .line 28
    :goto_0
    iget-object v5, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v5}, Lv3/h;->readInt()I

    move-result v5

    and-int/2addr v5, v9

    add-int/lit8 v2, v2, -0x4

    .line 29
    invoke-static {v2, v7, v4}, Le/p/a/y/j/o;->e(IBS)I

    move-result v2

    .line 30
    invoke-virtual {v1, v2, v4, v7, v13}, Le/p/a/y/j/o$c;->b(ISBI)Ljava/util/List;

    move-result-object v19

    .line 31
    move-object/from16 v2, p1

    check-cast v2, Le/p/a/y/j/d$e;

    .line 32
    iget-object v15, v2, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 33
    monitor-enter v15

    .line 34
    :try_start_1
    iget-object v2, v15, Le/p/a/y/j/d;->t:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 35
    sget-object v0, Le/p/a/y/j/a;->e:Le/p/a/y/j/a;

    invoke-virtual {v15, v5, v0}, Le/p/a/y/j/d;->E(ILe/p/a/y/j/a;)V

    .line 36
    monitor-exit v15

    goto/16 :goto_8

    .line 37
    :cond_b
    iget-object v2, v15, Le/p/a/y/j/d;->t:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    iget-object v2, v15, Le/p/a/y/j/d;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Le/p/a/y/j/f;

    const-string v16, "OkHttp %s Push Request[%s]"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, v15, Le/p/a/y/j/d;->e:Ljava/lang/String;

    aput-object v7, v6, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    move-object v14, v4

    move-object/from16 v17, v6

    move/from16 v18, v5

    invoke-direct/range {v14 .. v19}, Le/p/a/y/j/f;-><init>(Le/p/a/y/j/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    .line 40
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_c
    const-string v2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    invoke-static {v2, v0}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :pswitch_4
    if-nez v13, :cond_18

    and-int/lit8 v6, v7, 0x1

    if-eqz v6, :cond_e

    if-nez v2, :cond_d

    .line 42
    move-object/from16 v0, p1

    check-cast v0, Le/p/a/y/j/d$e;

    goto/16 :goto_8

    :cond_d
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 43
    invoke-static {v2, v0}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    .line 44
    :cond_e
    rem-int/lit8 v6, v2, 0x6

    if-nez v6, :cond_17

    .line 45
    new-instance v6, Le/p/a/y/j/t;

    invoke-direct {v6}, Le/p/a/y/j/t;-><init>()V

    move v7, v0

    :goto_1
    if-ge v7, v2, :cond_13

    .line 46
    iget-object v9, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v9}, Lv3/h;->readShort()S

    move-result v9

    .line 47
    iget-object v11, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v11}, Lv3/h;->readInt()I

    move-result v11

    packed-switch v9, :pswitch_data_1

    new-array v2, v3, [Ljava/lang/Object;

    .line 48
    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "PROTOCOL_ERROR invalid settings id: %s"

    invoke-static {v0, v2}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    goto :goto_3

    :pswitch_5
    if-lt v11, v5, :cond_f

    const v12, 0xffffff

    if-gt v11, v12, :cond_f

    goto :goto_2

    :cond_f
    new-array v2, v3, [Ljava/lang/Object;

    .line 49
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {v0, v2}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :pswitch_6
    const/4 v9, 0x7

    if-ltz v11, :cond_10

    goto :goto_2

    :cond_10
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 50
    invoke-static {v2, v0}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :pswitch_7
    move v9, v10

    goto :goto_2

    :pswitch_8
    if-eqz v11, :cond_12

    if-ne v11, v3, :cond_11

    goto :goto_2

    :cond_11
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 51
    invoke-static {v2, v0}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    .line 52
    :cond_12
    :goto_2
    :pswitch_9
    invoke-virtual {v6, v9, v0, v11}, Le/p/a/y/j/t;->d(III)Le/p/a/y/j/t;

    add-int/lit8 v7, v7, 0x6

    goto :goto_1

    .line 53
    :goto_3
    throw v4

    .line 54
    :cond_13
    move-object/from16 v2, p1

    check-cast v2, Le/p/a/y/j/d$e;

    invoke-virtual {v2, v0, v6}, Le/p/a/y/j/d$e;->g(ZLe/p/a/y/j/t;)V

    .line 55
    iget v0, v6, Le/p/a/y/j/t;->a:I

    and-int/2addr v0, v8

    const/4 v2, -0x1

    if-eqz v0, :cond_14

    iget-object v4, v6, Le/p/a/y/j/t;->d:[I

    aget v4, v4, v3

    goto :goto_4

    :cond_14
    move v4, v2

    :goto_4
    if-ltz v4, :cond_26

    .line 56
    iget-object v4, v1, Le/p/a/y/j/o$c;->d:Le/p/a/y/j/n$a;

    if-eqz v0, :cond_15

    .line 57
    iget-object v0, v6, Le/p/a/y/j/t;->d:[I

    aget v2, v0, v3

    .line 58
    :cond_15
    iput v2, v4, Le/p/a/y/j/n$a;->c:I

    .line 59
    iput v2, v4, Le/p/a/y/j/n$a;->d:I

    .line 60
    iget v0, v4, Le/p/a/y/j/n$a;->h:I

    if-ge v2, v0, :cond_26

    if-nez v2, :cond_16

    .line 61
    invoke-virtual {v4}, Le/p/a/y/j/n$a;->a()V

    goto/16 :goto_8

    :cond_16
    sub-int/2addr v0, v2

    .line 62
    invoke-virtual {v4, v0}, Le/p/a/y/j/n$a;->c(I)I

    goto/16 :goto_8

    :cond_17
    new-array v3, v3, [Ljava/lang/Object;

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {v0, v3}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :cond_18
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "TYPE_SETTINGS streamId != 0"

    .line 64
    invoke-static {v2, v0}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :pswitch_a
    if-ne v2, v10, :cond_1b

    if-eqz v13, :cond_1a

    .line 65
    iget-object v2, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    move-result v2

    .line 66
    invoke-static {v2}, Le/p/a/y/j/a;->a(I)Le/p/a/y/j/a;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 67
    move-object/from16 v0, p1

    check-cast v0, Le/p/a/y/j/d$e;

    invoke-virtual {v0, v13, v5}, Le/p/a/y/j/d$e;->f(ILe/p/a/y/j/a;)V

    goto/16 :goto_8

    :cond_19
    new-array v3, v3, [Ljava/lang/Object;

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v0, v3}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :cond_1a
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "TYPE_RST_STREAM streamId == 0"

    .line 69
    invoke-static {v2, v0}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :cond_1b
    new-array v3, v3, [Ljava/lang/Object;

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {v0, v3}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :pswitch_b
    const/4 v5, 0x5

    if-ne v2, v5, :cond_1d

    if-eqz v13, :cond_1c

    .line 71
    iget-object v0, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v0}, Lv3/h;->readInt()I

    .line 72
    iget-object v0, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v0}, Lv3/h;->readByte()B

    .line 73
    move-object/from16 v0, p1

    check-cast v0, Le/p/a/y/j/d$e;

    goto/16 :goto_8

    :cond_1c
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    .line 74
    invoke-static {v2, v0}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :cond_1d
    new-array v3, v3, [Ljava/lang/Object;

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v0, v3}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :pswitch_c
    if-eqz v13, :cond_21

    and-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_1e

    move v12, v3

    goto :goto_5

    :cond_1e
    move v12, v0

    :goto_5
    and-int/lit8 v4, v7, 0x8

    if-eqz v4, :cond_1f

    .line 76
    iget-object v0, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v0}, Lv3/h;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1f
    and-int/lit8 v4, v7, 0x20

    if-eqz v4, :cond_20

    .line 77
    iget-object v4, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v4}, Lv3/h;->readInt()I

    .line 78
    iget-object v4, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v4}, Lv3/h;->readByte()B

    .line 79
    move-object/from16 v4, p1

    check-cast v4, Le/p/a/y/j/d$e;

    add-int/lit8 v2, v2, -0x5

    .line 80
    :cond_20
    invoke-static {v2, v7, v0}, Le/p/a/y/j/o;->e(IBS)I

    move-result v2

    .line 81
    invoke-virtual {v1, v2, v0, v7, v13}, Le/p/a/y/j/o$c;->b(ISBI)Ljava/util/List;

    move-result-object v15

    const/4 v11, 0x0

    const/4 v14, -0x1

    .line 82
    sget-object v16, Le/p/a/y/j/m;->d:Le/p/a/y/j/m;

    move-object/from16 v10, p1

    check-cast v10, Le/p/a/y/j/d$e;

    invoke-virtual/range {v10 .. v16}, Le/p/a/y/j/d$e;->d(ZZIILjava/util/List;Le/p/a/y/j/m;)V

    goto :goto_8

    :cond_21
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 83
    invoke-static {v2, v0}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :pswitch_d
    and-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_22

    move v5, v3

    goto :goto_6

    :cond_22
    move v5, v0

    :goto_6
    and-int/lit8 v6, v7, 0x20

    if-eqz v6, :cond_23

    move v6, v3

    goto :goto_7

    :cond_23
    move v6, v0

    :goto_7
    if-nez v6, :cond_25

    and-int/lit8 v4, v7, 0x8

    if-eqz v4, :cond_24

    .line 84
    iget-object v0, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v0}, Lv3/h;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 85
    :cond_24
    invoke-static {v2, v7, v0}, Le/p/a/y/j/o;->e(IBS)I

    move-result v2

    .line 86
    iget-object v4, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    move-object/from16 v6, p1

    check-cast v6, Le/p/a/y/j/d$e;

    invoke-virtual {v6, v5, v13, v4, v2}, Le/p/a/y/j/d$e;->b(ZILv3/h;I)V

    .line 87
    iget-object v2, v1, Le/p/a/y/j/o$c;->a:Lv3/h;

    int-to-long v4, v0

    invoke-interface {v2, v4, v5}, Lv3/h;->skip(J)V

    goto :goto_8

    :cond_25
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 88
    invoke-static {v2, v0}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :cond_26
    :goto_8
    return v3

    :cond_27
    const-string v5, "FRAME_SIZE_ERROR: %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v5, v3}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :catch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method public V()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/p/a/y/j/o$c;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/a/y/j/o$c;->a:Lv3/h;

    .line 3
    sget-object v1, Le/p/a/y/j/o;->b:Lv3/i;

    .line 4
    invoke-virtual {v1}, Lv3/i;->f()I

    move-result v2

    int-to-long v2, v2

    .line 5
    invoke-interface {v0, v2, v3}, Lv3/h;->e0(J)Lv3/i;

    move-result-object v0

    .line 6
    sget-object v2, Le/p/a/y/j/o;->a:Ljava/util/logging/Logger;

    .line 7
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lv3/i;->g()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v6, "<< CONNECTION %s"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {v1, v0}, Lv3/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-array v1, v5, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v0}, Lv3/i;->r()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "Expected a connection header but was %s"

    invoke-static {v0, v1}, Le/p/a/y/j/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 v0, 0x0

    throw v0
.end method

.method public final b(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Le/p/a/y/j/l;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/j/o$c;->b:Le/p/a/y/j/o$a;

    iput p1, v0, Le/p/a/y/j/o$a;->e:I

    iput p1, v0, Le/p/a/y/j/o$a;->b:I

    .line 2
    iput-short p2, v0, Le/p/a/y/j/o$a;->f:S

    .line 3
    iput-byte p3, v0, Le/p/a/y/j/o$a;->c:B

    .line 4
    iput p4, v0, Le/p/a/y/j/o$a;->d:I

    .line 5
    iget-object p1, p0, Le/p/a/y/j/o$c;->d:Le/p/a/y/j/n$a;

    .line 6
    :cond_0
    :goto_0
    iget-object p2, p1, Le/p/a/y/j/n$a;->b:Lv3/h;

    invoke-interface {p2}, Lv3/h;->N1()Z

    move-result p2

    if-nez p2, :cond_d

    .line 7
    iget-object p2, p1, Le/p/a/y/j/n$a;->b:Lv3/h;

    invoke-interface {p2}, Lv3/h;->readByte()B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x80

    if-eq p2, p3, :cond_c

    and-int/lit16 p4, p2, 0x80

    const/4 v0, 0x1

    if-ne p4, p3, :cond_4

    const/16 p3, 0x7f

    .line 8
    invoke-virtual {p1, p2, p3}, Le/p/a/y/j/n$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    if-ltz p2, :cond_1

    .line 9
    sget-object p3, Le/p/a/y/j/n;->a:[Le/p/a/y/j/l;

    .line 10
    array-length p3, p3

    sub-int/2addr p3, v0

    if-gt p2, p3, :cond_1

    move p3, v0

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    .line 11
    sget-object p3, Le/p/a/y/j/n;->a:[Le/p/a/y/j/l;

    .line 12
    aget-object p2, p3, p2

    .line 13
    iget-object p3, p1, Le/p/a/y/j/n$a;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    sget-object p3, Le/p/a/y/j/n;->a:[Le/p/a/y/j/l;

    .line 15
    array-length p3, p3

    sub-int p3, p2, p3

    invoke-virtual {p1, p3}, Le/p/a/y/j/n$a;->b(I)I

    move-result p3

    if-ltz p3, :cond_3

    .line 16
    iget-object p4, p1, Le/p/a/y/j/n$a;->e:[Le/p/a/y/j/l;

    array-length v1, p4

    sub-int/2addr v1, v0

    if-gt p3, v1, :cond_3

    .line 17
    iget-object p2, p1, Le/p/a/y/j/n$a;->a:Ljava/util/List;

    aget-object p3, p4, p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p3, "Header index too large "

    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/2addr p2, v0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p3, -0x1

    const/16 p4, 0x40

    if-ne p2, p4, :cond_5

    .line 19
    invoke-virtual {p1}, Le/p/a/y/j/n$a;->f()Lv3/i;

    move-result-object p2

    invoke-static {p2}, Le/p/a/y/j/n;->a(Lv3/i;)Lv3/i;

    .line 20
    invoke-virtual {p1}, Le/p/a/y/j/n$a;->f()Lv3/i;

    move-result-object p4

    .line 21
    new-instance v0, Le/p/a/y/j/l;

    invoke-direct {v0, p2, p4}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    invoke-virtual {p1, p3, v0}, Le/p/a/y/j/n$a;->e(ILe/p/a/y/j/l;)V

    goto :goto_0

    :cond_5
    and-int/lit8 v1, p2, 0x40

    if-ne v1, p4, :cond_6

    const/16 p4, 0x3f

    .line 22
    invoke-virtual {p1, p2, p4}, Le/p/a/y/j/n$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    .line 23
    invoke-virtual {p1, p2}, Le/p/a/y/j/n$a;->d(I)Lv3/i;

    move-result-object p2

    .line 24
    invoke-virtual {p1}, Le/p/a/y/j/n$a;->f()Lv3/i;

    move-result-object p4

    .line 25
    new-instance v0, Le/p/a/y/j/l;

    invoke-direct {v0, p2, p4}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    invoke-virtual {p1, p3, v0}, Le/p/a/y/j/n$a;->e(ILe/p/a/y/j/l;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 p3, p2, 0x20

    const/16 p4, 0x20

    if-ne p3, p4, :cond_9

    const/16 p3, 0x1f

    .line 26
    invoke-virtual {p1, p2, p3}, Le/p/a/y/j/n$a;->g(II)I

    move-result p2

    iput p2, p1, Le/p/a/y/j/n$a;->d:I

    if-ltz p2, :cond_8

    .line 27
    iget p3, p1, Le/p/a/y/j/n$a;->c:I

    if-gt p2, p3, :cond_8

    .line 28
    iget p3, p1, Le/p/a/y/j/n$a;->h:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_7

    .line 29
    invoke-virtual {p1}, Le/p/a/y/j/n$a;->a()V

    goto/16 :goto_0

    :cond_7
    sub-int/2addr p3, p2

    .line 30
    invoke-virtual {p1, p3}, Le/p/a/y/j/n$a;->c(I)I

    goto/16 :goto_0

    .line 31
    :cond_8
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Invalid dynamic table size update "

    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p1, p1, Le/p/a/y/j/n$a;->d:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    const/16 p3, 0x10

    if-eq p2, p3, :cond_b

    if-nez p2, :cond_a

    goto :goto_2

    :cond_a
    const/16 p3, 0xf

    .line 32
    invoke-virtual {p1, p2, p3}, Le/p/a/y/j/n$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    .line 33
    invoke-virtual {p1, p2}, Le/p/a/y/j/n$a;->d(I)Lv3/i;

    move-result-object p2

    .line 34
    invoke-virtual {p1}, Le/p/a/y/j/n$a;->f()Lv3/i;

    move-result-object p3

    .line 35
    iget-object p4, p1, Le/p/a/y/j/n$a;->a:Ljava/util/List;

    new-instance v0, Le/p/a/y/j/l;

    invoke-direct {v0, p2, p3}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 36
    :cond_b
    :goto_2
    invoke-virtual {p1}, Le/p/a/y/j/n$a;->f()Lv3/i;

    move-result-object p2

    invoke-static {p2}, Le/p/a/y/j/n;->a(Lv3/i;)Lv3/i;

    .line 37
    invoke-virtual {p1}, Le/p/a/y/j/n$a;->f()Lv3/i;

    move-result-object p3

    .line 38
    iget-object p4, p1, Le/p/a/y/j/n$a;->a:Ljava/util/List;

    new-instance v0, Le/p/a/y/j/l;

    invoke-direct {v0, p2, p3}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 39
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_d
    iget-object p1, p0, Le/p/a/y/j/o$c;->d:Le/p/a/y/j/n$a;

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p1, Le/p/a/y/j/n$a;->a:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    iget-object p1, p1, Le/p/a/y/j/n$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/j/o$c;->a:Lv3/h;

    invoke-interface {v0}, Lv3/b0;->close()V

    return-void
.end method
