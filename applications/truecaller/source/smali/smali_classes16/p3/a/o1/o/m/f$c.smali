.class public final Lp3/a/o1/o/m/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/o1/o/m/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/o1/o/m/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lv3/h;

.field public final b:Lp3/a/o1/o/m/f$a;

.field public final c:Lp3/a/o1/o/m/e$a;


# direct methods
.method public constructor <init>(Lv3/h;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    .line 3
    new-instance p3, Lp3/a/o1/o/m/f$a;

    invoke-direct {p3, p1}, Lp3/a/o1/o/m/f$a;-><init>(Lv3/h;)V

    iput-object p3, p0, Lp3/a/o1/o/m/f$c;->b:Lp3/a/o1/o/m/f$a;

    .line 4
    new-instance p1, Lp3/a/o1/o/m/e$a;

    invoke-direct {p1, p2, p3}, Lp3/a/o1/o/m/e$a;-><init>(ILv3/b0;)V

    iput-object p1, p0, Lp3/a/o1/o/m/f$c;->c:Lp3/a/o1/o/m/e$a;

    return-void
.end method


# virtual methods
.method public b(Lp3/a/o1/o/m/b$a;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    sget-object v2, Lp3/a/o1/o/m/a;->d:Lp3/a/o1/o/m/a;

    sget-object v3, Lp3/a/o1/o/m/a;->c:Lp3/a/o1/o/m/a;

    sget-object v5, Lp3/a/o1/g$a;->a:Lp3/a/o1/g$a;

    const/4 v10, 0x0

    :try_start_0
    iget-object v4, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    const-wide/16 v6, 0x9

    invoke-interface {v4, v6, v7}, Lv3/h;->y1(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v4, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-static {v4}, Lp3/a/o1/o/m/f;->b(Lv3/h;)I

    move-result v4

    const/4 v11, 0x1

    const/4 v6, 0x0

    if-ltz v4, :cond_20

    const/16 v7, 0x4000

    if-gt v4, v7, :cond_20

    .line 3
    iget-object v7, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v7}, Lv3/h;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 4
    iget-object v8, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v8}, Lv3/h;->readByte()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 5
    iget-object v9, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v9}, Lv3/h;->readInt()I

    move-result v9

    const v12, 0x7fffffff

    and-int v13, v9, v12

    .line 6
    sget-object v9, Lp3/a/o1/o/m/f;->a:Ljava/util/logging/Logger;

    .line 7
    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v14}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {v11, v13, v4, v7, v8}, Lp3/a/o1/o/m/f$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v9, 0x2

    const-wide/16 v14, 0x0

    packed-switch v7, :pswitch_data_0

    .line 8
    iget-object v0, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    int-to-long v2, v4

    invoke-interface {v0, v2, v3}, Lv3/h;->skip(J)V

    goto/16 :goto_e

    .line 9
    :pswitch_0
    invoke-virtual {v1, v0, v4, v13}, Lp3/a/o1/o/m/f$c;->s(Lp3/a/o1/o/m/b$a;II)V

    goto/16 :goto_3

    :pswitch_1
    const/16 v2, 0x8

    if-lt v4, v2, :cond_9

    if-nez v13, :cond_8

    .line 10
    iget-object v3, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v3}, Lv3/h;->readInt()I

    move-result v3

    .line 11
    iget-object v7, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v7}, Lv3/h;->readInt()I

    move-result v7

    sub-int/2addr v4, v2

    .line 12
    invoke-static {v7}, Lp3/a/o1/o/m/a;->a(I)Lp3/a/o1/o/m/a;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 13
    sget-object v7, Lv3/i;->d:Lv3/i;

    if-lez v4, :cond_1

    .line 14
    iget-object v7, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    int-to-long v12, v4

    invoke-interface {v7, v12, v13}, Lv3/h;->e0(J)Lv3/i;

    move-result-object v7

    .line 15
    :cond_1
    check-cast v0, Lp3/a/o1/f$e;

    .line 16
    iget-object v4, v0, Lp3/a/o1/f$e;->a:Lp3/a/o1/g;

    invoke-virtual {v4, v5, v3, v2, v7}, Lp3/a/o1/g;->c(Lp3/a/o1/g$a;ILp3/a/o1/o/m/a;Lv3/i;)V

    .line 17
    sget-object v4, Lp3/a/o1/o/m/a;->p:Lp3/a/o1/o/m/a;

    if-ne v2, v4, :cond_2

    .line 18
    invoke-virtual {v7}, Lv3/i;->r()Ljava/lang/String;

    move-result-object v4

    .line 19
    sget-object v5, Lp3/a/o1/f;->R:Ljava/util/logging/Logger;

    .line 20
    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    aput-object v4, v9, v11

    const-string v10, "%s: Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: %s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const-string v5, "too_many_pings"

    .line 21
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 22
    iget-object v4, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 23
    iget-object v4, v4, Lp3/a/o1/f;->K:Ljava/lang/Runnable;

    .line 24
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 25
    :cond_2
    iget v2, v2, Lp3/a/o1/o/m/a;->a:I

    int-to-long v4, v2

    .line 26
    sget-object v2, Lp3/a/n1/r0$g;->q:[Lp3/a/n1/r0$g;

    array-length v8, v2

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-gez v8, :cond_4

    cmp-long v8, v4, v14

    if-gez v8, :cond_3

    goto :goto_0

    :cond_3
    long-to-int v8, v4

    .line 27
    aget-object v2, v2, v8

    goto :goto_1

    :cond_4
    :goto_0
    move-object v2, v6

    :goto_1
    if-nez v2, :cond_5

    .line 28
    sget-object v2, Lp3/a/n1/r0$g;->e:Lp3/a/n1/r0$g;

    .line 29
    iget-object v2, v2, Lp3/a/n1/r0$g;->b:Lp3/a/g1;

    .line 30
    iget-object v2, v2, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 31
    iget v2, v2, Lp3/a/g1$b;->a:I

    .line 32
    invoke-static {v2}, Lp3/a/g1;->d(I)Lp3/a/g1;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized HTTP/2 error code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {v2, v4}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v2

    goto :goto_2

    .line 34
    :cond_5
    iget-object v2, v2, Lp3/a/n1/r0$g;->b:Lp3/a/g1;

    :goto_2
    const-string v4, "Received Goaway"

    .line 35
    invoke-virtual {v2, v4}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v2

    .line 36
    invoke-virtual {v7}, Lv3/i;->f()I

    move-result v4

    if-lez v4, :cond_6

    .line 37
    invoke-virtual {v7}, Lv3/i;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v2

    .line 38
    :cond_6
    iget-object v0, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 39
    sget-object v4, Lp3/a/o1/f;->Q:Ljava/util/Map;

    .line 40
    invoke-virtual {v0, v3, v6, v2}, Lp3/a/o1/f;->v(ILp3/a/o1/o/m/a;Lp3/a/g1;)V

    goto :goto_3

    :cond_7
    new-array v0, v11, [Ljava/lang/Object;

    .line 41
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v10

    const-string v2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v2, v0}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :cond_8
    new-array v0, v10, [Ljava/lang/Object;

    const-string v2, "TYPE_GOAWAY streamId != 0"

    .line 42
    invoke-static {v2, v0}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :cond_9
    new-array v0, v11, [Ljava/lang/Object;

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v10

    const-string v2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v2, v0}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    .line 44
    :pswitch_2
    invoke-virtual {v1, v0, v4, v8, v13}, Lp3/a/o1/o/m/f$c;->j(Lp3/a/o1/o/m/b$a;IBI)V

    goto :goto_3

    .line 45
    :pswitch_3
    invoke-virtual {v1, v0, v4, v8, v13}, Lp3/a/o1/o/m/f$c;->k(Lp3/a/o1/o/m/b$a;IBI)V

    goto :goto_3

    .line 46
    :pswitch_4
    invoke-virtual {v1, v0, v4, v8, v13}, Lp3/a/o1/o/m/f$c;->q(Lp3/a/o1/o/m/b$a;IBI)V

    goto :goto_3

    .line 47
    :pswitch_5
    invoke-virtual {v1, v0, v4, v13}, Lp3/a/o1/o/m/f$c;->l(Lp3/a/o1/o/m/b$a;II)V

    goto :goto_3

    :pswitch_6
    const/4 v2, 0x5

    if-ne v4, v2, :cond_b

    if-eqz v13, :cond_a

    .line 48
    iget-object v2, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    .line 49
    iget-object v2, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readByte()B

    .line 50
    check-cast v0, Lp3/a/o1/f$e;

    :goto_3
    move v0, v11

    goto/16 :goto_f

    :cond_a
    new-array v0, v10, [Ljava/lang/Object;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    .line 51
    invoke-static {v2, v0}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :cond_b
    new-array v0, v11, [Ljava/lang/Object;

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v10

    const-string v2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v2, v0}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :pswitch_7
    if-eqz v13, :cond_17

    and-int/lit8 v7, v8, 0x1

    if-eqz v7, :cond_c

    move v7, v11

    goto :goto_4

    :cond_c
    move v7, v10

    :goto_4
    and-int/lit8 v16, v8, 0x8

    if-eqz v16, :cond_d

    .line 53
    iget-object v14, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v14}, Lv3/h;->readByte()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    int-to-short v14, v14

    goto :goto_5

    :cond_d
    move v14, v10

    :goto_5
    and-int/lit8 v15, v8, 0x20

    if-eqz v15, :cond_e

    .line 54
    iget-object v15, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v15}, Lv3/h;->readInt()I

    .line 55
    iget-object v15, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v15}, Lv3/h;->readByte()B

    .line 56
    move-object v15, v0

    check-cast v15, Lp3/a/o1/f$e;

    add-int/lit8 v4, v4, -0x5

    .line 57
    :cond_e
    invoke-static {v4, v8, v14}, Lp3/a/o1/o/m/f;->c(IBS)I

    move-result v4

    .line 58
    invoke-virtual {v1, v4, v14, v8, v13}, Lp3/a/o1/o/m/f$c;->d(ISBI)Ljava/util/List;

    move-result-object v4

    .line 59
    check-cast v0, Lp3/a/o1/f$e;

    .line 60
    iget-object v8, v0, Lp3/a/o1/f$e;->a:Lp3/a/o1/g;

    .line 61
    invoke-virtual {v8}, Lp3/a/o1/g;->a()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 62
    iget-object v14, v8, Lp3/a/o1/g;->a:Ljava/util/logging/Logger;

    iget-object v8, v8, Lp3/a/o1/g;->b:Ljava/util/logging/Level;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " HEADERS: streamId="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " headers="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " endStream="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 63
    :cond_f
    iget-object v5, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 64
    iget v5, v5, Lp3/a/o1/f;->L:I

    if-eq v5, v12, :cond_12

    move v5, v10

    const-wide/16 v14, 0x0

    .line 65
    :goto_6
    move-object v8, v4

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_10

    .line 66
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp3/a/o1/o/m/d;

    .line 67
    iget-object v12, v8, Lp3/a/o1/o/m/d;->a:Lv3/i;

    .line 68
    invoke-virtual {v12}, Lv3/i;->f()I

    move-result v12

    add-int/lit8 v12, v12, 0x20

    .line 69
    iget-object v8, v8, Lp3/a/o1/o/m/d;->b:Lv3/i;

    .line 70
    invoke-virtual {v8}, Lv3/i;->f()I

    move-result v8

    add-int/2addr v8, v12

    int-to-long v11, v8

    add-long/2addr v14, v11

    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x1

    goto :goto_6

    :cond_10
    const-wide/32 v11, 0x7fffffff

    .line 71
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v5, v11

    .line 72
    iget-object v8, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 73
    iget v8, v8, Lp3/a/o1/f;->L:I

    if-le v5, v8, :cond_12

    .line 74
    sget-object v6, Lp3/a/g1;->m:Lp3/a/g1;

    const-string v11, "Response %s metadata larger than %d: %d"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    if-eqz v7, :cond_11

    const-string v14, "trailer"

    goto :goto_7

    :cond_11
    const-string v14, "header"

    :goto_7
    aput-object v14, v12, v10

    .line 75
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x1

    aput-object v8, v12, v14

    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v9

    .line 77
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-virtual {v6, v5}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v6

    .line 79
    :cond_12
    iget-object v5, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 80
    iget-object v5, v5, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 81
    monitor-enter v5

    .line 82
    :try_start_1
    iget-object v8, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 83
    iget-object v8, v8, Lp3/a/o1/f;->m:Ljava/util/Map;

    .line 84
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp3/a/o1/e;

    if-nez v8, :cond_14

    .line 85
    iget-object v4, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    invoke-virtual {v4, v13}, Lp3/a/o1/f;->q(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 86
    iget-object v4, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 87
    iget-object v4, v4, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    .line 88
    invoke-virtual {v4, v13, v2}, Lp3/a/o1/b;->m2(ILp3/a/o1/o/m/a;)V

    goto :goto_8

    :cond_13
    const/4 v10, 0x1

    goto :goto_8

    :cond_14
    if-nez v6, :cond_15

    .line 89
    iget-object v2, v8, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 90
    iget-object v2, v2, Lp3/a/o1/e$b;->K:Lp3/c/d;

    .line 91
    sget-object v2, Lp3/c/c;->a:Lp3/c/a;

    .line 92
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v2, v8, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 94
    invoke-virtual {v2, v4, v7}, Lp3/a/o1/e$b;->p(Ljava/util/List;Z)V

    goto :goto_8

    :cond_15
    if-nez v7, :cond_16

    .line 95
    iget-object v2, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 96
    iget-object v2, v2, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    .line 97
    sget-object v4, Lp3/a/o1/o/m/a;->m:Lp3/a/o1/o/m/a;

    invoke-virtual {v2, v13, v4}, Lp3/a/o1/b;->m2(ILp3/a/o1/o/m/a;)V

    .line 98
    :cond_16
    iget-object v2, v8, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 99
    new-instance v4, Lp3/a/o0;

    invoke-direct {v4}, Lp3/a/o0;-><init>()V

    .line 100
    sget-object v7, Lp3/a/n1/t$a;->a:Lp3/a/n1/t$a;

    invoke-virtual {v2, v6, v7, v10, v4}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    .line 101
    :goto_8
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_1f

    .line 102
    iget-object v0, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received header for unknown stream: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lp3/a/o1/f;->i(Lp3/a/o1/f;Lp3/a/o1/o/m/a;Ljava/lang/String;)V

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    .line 103
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_17
    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v2, v10, [Ljava/lang/Object;

    .line 104
    invoke-static {v0, v2}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :pswitch_8
    and-int/lit8 v7, v8, 0x1

    if-eqz v7, :cond_18

    const/4 v14, 0x1

    goto :goto_9

    :cond_18
    move v14, v10

    :goto_9
    and-int/lit8 v7, v8, 0x20

    if-eqz v7, :cond_19

    const/4 v7, 0x1

    goto :goto_a

    :cond_19
    move v7, v10

    :goto_a
    if-nez v7, :cond_1e

    and-int/lit8 v6, v8, 0x8

    if-eqz v6, :cond_1a

    .line 105
    iget-object v6, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v6}, Lv3/h;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    move v11, v6

    goto :goto_b

    :cond_1a
    move v11, v10

    .line 106
    :goto_b
    invoke-static {v4, v8, v11}, Lp3/a/o1/o/m/f;->c(IBS)I

    move-result v12

    .line 107
    iget-object v15, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    check-cast v0, Lp3/a/o1/f$e;

    .line 108
    iget-object v4, v0, Lp3/a/o1/f$e;->a:Lp3/a/o1/g;

    .line 109
    invoke-interface {v15}, Lv3/h;->getBuffer()Lv3/f;

    move-result-object v7

    move v6, v13

    move v8, v12

    move v9, v14

    .line 110
    invoke-virtual/range {v4 .. v9}, Lp3/a/o1/g;->b(Lp3/a/o1/g$a;ILv3/f;IZ)V

    .line 111
    iget-object v4, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    invoke-virtual {v4, v13}, Lp3/a/o1/f;->p(I)Lp3/a/o1/e;

    move-result-object v4

    if-nez v4, :cond_1c

    .line 112
    iget-object v4, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    invoke-virtual {v4, v13}, Lp3/a/o1/f;->q(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 113
    iget-object v3, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 114
    iget-object v4, v3, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 115
    monitor-enter v4

    .line 116
    :try_start_3
    iget-object v3, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 117
    iget-object v3, v3, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    .line 118
    invoke-virtual {v3, v13, v2}, Lp3/a/o1/b;->m2(ILp3/a/o1/o/m/a;)V

    .line 119
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    int-to-long v2, v12

    .line 120
    invoke-interface {v15, v2, v3}, Lv3/h;->skip(J)V

    goto :goto_c

    :catchall_1
    move-exception v0

    .line 121
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 122
    :cond_1b
    iget-object v0, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received data for unknown stream: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lp3/a/o1/f;->i(Lp3/a/o1/f;Lp3/a/o1/o/m/a;Ljava/lang/String;)V

    goto :goto_d

    :cond_1c
    int-to-long v2, v12

    .line 123
    invoke-interface {v15, v2, v3}, Lv3/h;->y1(J)V

    .line 124
    new-instance v5, Lv3/f;

    invoke-direct {v5}, Lv3/f;-><init>()V

    .line 125
    invoke-interface {v15}, Lv3/h;->getBuffer()Lv3/f;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v3}, Lv3/f;->h1(Lv3/f;J)V

    .line 126
    iget-object v2, v4, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 127
    iget-object v2, v2, Lp3/a/o1/e$b;->K:Lp3/c/d;

    .line 128
    sget-object v2, Lp3/c/c;->a:Lp3/c/a;

    .line 129
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v2, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 131
    iget-object v2, v2, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 132
    monitor-enter v2

    .line 133
    :try_start_5
    iget-object v3, v4, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 134
    invoke-virtual {v3, v5, v14}, Lp3/a/o1/e$b;->o(Lv3/f;Z)V

    .line 135
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 136
    :goto_c
    iget-object v2, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 137
    iget v3, v2, Lp3/a/o1/f;->q:I

    add-int/2addr v3, v12

    iput v3, v2, Lp3/a/o1/f;->q:I

    int-to-float v3, v3

    .line 138
    iget v4, v2, Lp3/a/o1/f;->f:I

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1d

    .line 139
    iget-object v2, v2, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 140
    monitor-enter v2

    .line 141
    :try_start_6
    iget-object v3, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 142
    iget-object v4, v3, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    .line 143
    iget v3, v3, Lp3/a/o1/f;->q:I

    int-to-long v5, v3

    .line 144
    invoke-virtual {v4, v10, v5, v6}, Lp3/a/o1/b;->c(IJ)V

    .line 145
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 146
    iget-object v0, v0, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 147
    iput v10, v0, Lp3/a/o1/f;->q:I

    goto :goto_d

    :catchall_2
    move-exception v0

    .line 148
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 149
    :cond_1d
    :goto_d
    iget-object v0, v1, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    int-to-long v2, v11

    invoke-interface {v0, v2, v3}, Lv3/h;->skip(J)V

    goto :goto_e

    :catchall_3
    move-exception v0

    .line 150
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_1e
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v2, v10, [Ljava/lang/Object;

    .line 151
    invoke-static {v0, v2}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :cond_1f
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_20
    move v0, v11

    const-string v2, "FRAME_SIZE_ERROR: %s"

    new-array v0, v0, [Ljava/lang/Object;

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v10

    invoke-static {v2, v0}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :catch_0
    return v10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v0}, Lv3/b0;->close()V

    return-void
.end method

.method public final d(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lp3/a/o1/o/m/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/o1/o/m/f$c;->b:Lp3/a/o1/o/m/f$a;

    iput p1, v0, Lp3/a/o1/o/m/f$a;->e:I

    iput p1, v0, Lp3/a/o1/o/m/f$a;->b:I

    .line 2
    iput-short p2, v0, Lp3/a/o1/o/m/f$a;->f:S

    .line 3
    iput-byte p3, v0, Lp3/a/o1/o/m/f$a;->c:B

    .line 4
    iput p4, v0, Lp3/a/o1/o/m/f$a;->d:I

    .line 5
    iget-object p1, p0, Lp3/a/o1/o/m/f$c;->c:Lp3/a/o1/o/m/e$a;

    .line 6
    :cond_0
    :goto_0
    iget-object p2, p1, Lp3/a/o1/o/m/e$a;->b:Lv3/h;

    invoke-interface {p2}, Lv3/h;->N1()Z

    move-result p2

    if-nez p2, :cond_d

    .line 7
    iget-object p2, p1, Lp3/a/o1/o/m/e$a;->b:Lv3/h;

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
    invoke-virtual {p1, p2, p3}, Lp3/a/o1/o/m/e$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    if-ltz p2, :cond_1

    .line 9
    sget-object p3, Lp3/a/o1/o/m/e;->b:[Lp3/a/o1/o/m/d;

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
    sget-object p3, Lp3/a/o1/o/m/e;->b:[Lp3/a/o1/o/m/d;

    .line 12
    aget-object p2, p3, p2

    .line 13
    iget-object p3, p1, Lp3/a/o1/o/m/e$a;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    sget-object p3, Lp3/a/o1/o/m/e;->b:[Lp3/a/o1/o/m/d;

    .line 15
    array-length p3, p3

    sub-int p3, p2, p3

    invoke-virtual {p1, p3}, Lp3/a/o1/o/m/e$a;->b(I)I

    move-result p3

    if-ltz p3, :cond_3

    .line 16
    iget-object p4, p1, Lp3/a/o1/o/m/e$a;->e:[Lp3/a/o1/o/m/d;

    array-length v1, p4

    sub-int/2addr v1, v0

    if-gt p3, v1, :cond_3

    .line 17
    iget-object p2, p1, Lp3/a/o1/o/m/e$a;->a:Ljava/util/List;

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
    invoke-virtual {p1}, Lp3/a/o1/o/m/e$a;->f()Lv3/i;

    move-result-object p2

    invoke-static {p2}, Lp3/a/o1/o/m/e;->a(Lv3/i;)Lv3/i;

    .line 20
    invoke-virtual {p1}, Lp3/a/o1/o/m/e$a;->f()Lv3/i;

    move-result-object p4

    .line 21
    new-instance v0, Lp3/a/o1/o/m/d;

    invoke-direct {v0, p2, p4}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    invoke-virtual {p1, p3, v0}, Lp3/a/o1/o/m/e$a;->e(ILp3/a/o1/o/m/d;)V

    goto :goto_0

    :cond_5
    and-int/lit8 v1, p2, 0x40

    if-ne v1, p4, :cond_6

    const/16 p4, 0x3f

    .line 22
    invoke-virtual {p1, p2, p4}, Lp3/a/o1/o/m/e$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    .line 23
    invoke-virtual {p1, p2}, Lp3/a/o1/o/m/e$a;->d(I)Lv3/i;

    move-result-object p2

    .line 24
    invoke-virtual {p1}, Lp3/a/o1/o/m/e$a;->f()Lv3/i;

    move-result-object p4

    .line 25
    new-instance v0, Lp3/a/o1/o/m/d;

    invoke-direct {v0, p2, p4}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    invoke-virtual {p1, p3, v0}, Lp3/a/o1/o/m/e$a;->e(ILp3/a/o1/o/m/d;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 p3, p2, 0x20

    const/16 p4, 0x20

    if-ne p3, p4, :cond_9

    const/16 p3, 0x1f

    .line 26
    invoke-virtual {p1, p2, p3}, Lp3/a/o1/o/m/e$a;->g(II)I

    move-result p2

    iput p2, p1, Lp3/a/o1/o/m/e$a;->d:I

    if-ltz p2, :cond_8

    .line 27
    iget p3, p1, Lp3/a/o1/o/m/e$a;->c:I

    if-gt p2, p3, :cond_8

    .line 28
    iget p3, p1, Lp3/a/o1/o/m/e$a;->h:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_7

    .line 29
    invoke-virtual {p1}, Lp3/a/o1/o/m/e$a;->a()V

    goto/16 :goto_0

    :cond_7
    sub-int/2addr p3, p2

    .line 30
    invoke-virtual {p1, p3}, Lp3/a/o1/o/m/e$a;->c(I)I

    goto/16 :goto_0

    .line 31
    :cond_8
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Invalid dynamic table size update "

    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p1, p1, Lp3/a/o1/o/m/e$a;->d:I

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
    invoke-virtual {p1, p2, p3}, Lp3/a/o1/o/m/e$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    .line 33
    invoke-virtual {p1, p2}, Lp3/a/o1/o/m/e$a;->d(I)Lv3/i;

    move-result-object p2

    .line 34
    invoke-virtual {p1}, Lp3/a/o1/o/m/e$a;->f()Lv3/i;

    move-result-object p3

    .line 35
    iget-object p4, p1, Lp3/a/o1/o/m/e$a;->a:Ljava/util/List;

    new-instance v0, Lp3/a/o1/o/m/d;

    invoke-direct {v0, p2, p3}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 36
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lp3/a/o1/o/m/e$a;->f()Lv3/i;

    move-result-object p2

    invoke-static {p2}, Lp3/a/o1/o/m/e;->a(Lv3/i;)Lv3/i;

    .line 37
    invoke-virtual {p1}, Lp3/a/o1/o/m/e$a;->f()Lv3/i;

    move-result-object p3

    .line 38
    iget-object p4, p1, Lp3/a/o1/o/m/e$a;->a:Ljava/util/List;

    new-instance v0, Lp3/a/o1/o/m/d;

    invoke-direct {v0, p2, p3}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

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
    iget-object p1, p0, Lp3/a/o1/o/m/f$c;->c:Lp3/a/o1/o/m/e$a;

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p1, Lp3/a/o1/o/m/e$a;->a:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    iget-object p1, p1, Lp3/a/o1/o/m/e$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p2
.end method

.method public final j(Lp3/a/o1/o/m/b$a;IBI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p2, v3, :cond_7

    if-nez p4, :cond_6

    .line 1
    iget-object p2, p0, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {p2}, Lv3/h;->readInt()I

    move-result p2

    .line 2
    iget-object p4, p0, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {p4}, Lv3/h;->readInt()I

    move-result p4

    and-int/2addr p3, v2

    if-eqz p3, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v1

    .line 3
    :goto_0
    check-cast p1, Lp3/a/o1/f$e;

    int-to-long v3, p2

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    int-to-long v5, p4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 4
    iget-object v5, p1, Lp3/a/o1/f$e;->a:Lp3/a/o1/g;

    sget-object v6, Lp3/a/o1/g$a;->a:Lp3/a/o1/g$a;

    invoke-virtual {v5, v6, v3, v4}, Lp3/a/o1/g;->d(Lp3/a/o1/g$a;J)V

    if-nez p3, :cond_1

    .line 5
    iget-object p3, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 6
    iget-object p3, p3, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 7
    monitor-enter p3

    .line 8
    :try_start_0
    iget-object p1, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 9
    iget-object p1, p1, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    .line 10
    invoke-virtual {p1, v2, p2, p4}, Lp3/a/o1/b;->a(ZII)V

    .line 11
    monitor-exit p3

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 12
    :cond_1
    iget-object p2, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 13
    iget-object p2, p2, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 14
    monitor-enter p2

    .line 15
    :try_start_1
    iget-object p1, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 16
    iget-object p3, p1, Lp3/a/o1/f;->v:Lp3/a/n1/x0;

    if-eqz p3, :cond_3

    .line 17
    iget-wide v5, p3, Lp3/a/n1/x0;->a:J

    cmp-long p4, v5, v3

    if-nez p4, :cond_2

    .line 18
    iput-object v0, p1, Lp3/a/o1/f;->v:Lp3/a/n1/x0;

    goto :goto_2

    .line 19
    :cond_2
    sget-object p1, Lp3/a/o1/f;->R:Ljava/util/logging/Logger;

    .line 20
    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p4, "Received unexpected ping ack. Expecting %d, got %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v2

    .line 22
    invoke-static {p4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_3
    sget-object p1, Lp3/a/o1/f;->R:Ljava/util/logging/Logger;

    const-string p3, "Received unexpected ping ack. No ping outstanding"

    .line 24
    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_1
    move-object p3, v0

    .line 25
    :goto_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p3, :cond_5

    .line 26
    monitor-enter p3

    .line 27
    :try_start_2
    iget-boolean p1, p3, Lp3/a/n1/x0;->d:Z

    if-eqz p1, :cond_4

    .line 28
    monitor-exit p3

    goto :goto_4

    .line 29
    :cond_4
    iput-boolean v2, p3, Lp3/a/n1/x0;->d:Z

    .line 30
    iget-object p1, p3, Lp3/a/n1/x0;->b:Lcom/google/common/base/Stopwatch;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iput-wide p1, p3, Lp3/a/n1/x0;->f:J

    .line 31
    iget-object p4, p3, Lp3/a/n1/x0;->c:Ljava/util/Map;

    .line 32
    iput-object v0, p3, Lp3/a/n1/x0;->c:Ljava/util/Map;

    .line 33
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lp3/a/n1/u$a;

    .line 36
    new-instance v1, Lp3/a/n1/v0;

    invoke-direct {v1, p4, p1, p2}, Lp3/a/n1/v0;-><init>(Lp3/a/n1/u$a;J)V

    .line 37
    invoke-static {v0, v1}, Lp3/a/n1/x0;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 38
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_5
    :goto_4
    return-void

    :catchall_2
    move-exception p1

    .line 39
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_6
    const-string p1, "TYPE_PING streamId != 0"

    new-array p2, v1, [Ljava/lang/Object;

    .line 40
    invoke-static {p1, p2}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_7
    const-string p1, "TYPE_PING length != 8: %s"

    new-array p3, v2, [Ljava/lang/Object;

    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method public final k(Lp3/a/o1/o/m/b$a;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    .line 1
    iget-object v0, p0, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v0}, Lv3/h;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 2
    :cond_0
    iget-object v1, p0, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v1}, Lv3/h;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    .line 3
    invoke-static {p2, p3, v0}, Lp3/a/o1/o/m/f;->c(IBS)I

    move-result p2

    .line 4
    invoke-virtual {p0, p2, v0, p3, p4}, Lp3/a/o1/o/m/f$c;->d(ISBI)Ljava/util/List;

    move-result-object p2

    .line 5
    check-cast p1, Lp3/a/o1/f$e;

    .line 6
    iget-object p3, p1, Lp3/a/o1/f$e;->a:Lp3/a/o1/g;

    sget-object v0, Lp3/a/o1/g$a;->a:Lp3/a/o1/g$a;

    .line 7
    invoke-virtual {p3}, Lp3/a/o1/g;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p3, Lp3/a/o1/g;->a:Ljava/util/logging/Logger;

    iget-object p3, p3, Lp3/a/o1/g;->b:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " PUSH_PROMISE: streamId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " promisedStreamId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " headers="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object p2, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 10
    iget-object p2, p2, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object p1, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 13
    iget-object p1, p1, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    .line 14
    sget-object p3, Lp3/a/o1/o/m/a;->c:Lp3/a/o1/o/m/a;

    invoke-virtual {p1, p4, p3}, Lp3/a/o1/b;->m2(ILp3/a/o1/o/m/a;)V

    .line 15
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    .line 16
    invoke-static {p1, p2}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1
.end method

.method public final l(Lp3/a/o1/o/m/b$a;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_6

    if-eqz p3, :cond_5

    .line 1
    iget-object p2, p0, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {p2}, Lv3/h;->readInt()I

    move-result p2

    .line 2
    invoke-static {p2}, Lp3/a/o1/o/m/a;->a(I)Lp3/a/o1/o/m/a;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3
    check-cast p1, Lp3/a/o1/f$e;

    .line 4
    iget-object p2, p1, Lp3/a/o1/f$e;->a:Lp3/a/o1/g;

    sget-object v0, Lp3/a/o1/g$a;->a:Lp3/a/o1/g$a;

    invoke-virtual {p2, v0, p3, v3}, Lp3/a/o1/g;->e(Lp3/a/o1/g$a;ILp3/a/o1/o/m/a;)V

    .line 5
    invoke-static {v3}, Lp3/a/o1/f;->z(Lp3/a/o1/o/m/a;)Lp3/a/g1;

    move-result-object p2

    const-string v0, "Rst Stream"

    invoke-virtual {p2, v0}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v6

    .line 6
    iget-object p2, v6, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 7
    sget-object v0, Lp3/a/g1$b;->d:Lp3/a/g1$b;

    if-eq p2, v0, :cond_1

    sget-object v0, Lp3/a/g1$b;->g:Lp3/a/g1$b;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v8, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v1

    .line 8
    :goto_1
    iget-object p2, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 9
    iget-object v11, p2, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 10
    monitor-enter v11

    .line 11
    :try_start_0
    iget-object p2, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 12
    iget-object p2, p2, Lp3/a/o1/f;->m:Ljava/util/Map;

    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp3/a/o1/e;

    if-eqz p2, :cond_3

    .line 14
    iget-object p2, p2, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 15
    iget-object p2, p2, Lp3/a/o1/e$b;->K:Lp3/c/d;

    .line 16
    sget-object p2, Lp3/c/c;->a:Lp3/c/a;

    .line 17
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v4, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 19
    sget-object p1, Lp3/a/o1/o/m/a;->l:Lp3/a/o1/o/m/a;

    if-ne v3, p1, :cond_2

    sget-object p1, Lp3/a/n1/t$a;->b:Lp3/a/n1/t$a;

    goto :goto_2

    :cond_2
    sget-object p1, Lp3/a/n1/t$a;->a:Lp3/a/n1/t$a;

    :goto_2
    move-object v7, p1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, p3

    .line 20
    invoke-virtual/range {v4 .. v10}, Lp3/a/o1/f;->k(ILp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o1/o/m/a;Lp3/a/o0;)V

    .line 21
    :cond_3
    monitor-exit v11

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array p3, v1, [Ljava/lang/Object;

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_5
    const-string p1, "TYPE_RST_STREAM streamId == 0"

    new-array p2, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {p1, p2}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_6
    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    new-array p3, v1, [Ljava/lang/Object;

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method public final q(Lp3/a/o1/o/m/b$a;IBI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_10

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 1
    check-cast p1, Lp3/a/o1/f$e;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p2, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    .line 4
    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_f

    .line 5
    new-instance p3, Lp3/a/o1/o/m/h;

    invoke-direct {p3}, Lp3/a/o1/o/m/h;-><init>()V

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    const/4 v4, 0x4

    if-ge v2, p2, :cond_6

    .line 6
    iget-object v5, p0, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v5}, Lv3/h;->readShort()S

    move-result v5

    .line 7
    iget-object v6, p0, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {v6}, Lv3/h;->readInt()I

    move-result v6

    packed-switch v5, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/16 v3, 0x4000

    if-lt v6, v3, :cond_2

    const v3, 0xffffff

    if-gt v6, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array p2, p4, [Ljava/lang/Object;

    .line 8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :pswitch_1
    if-ltz v6, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p2, v1, [Ljava/lang/Object;

    .line 9
    invoke-static {p1, p2}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :pswitch_2
    move v3, v4

    goto :goto_2

    :pswitch_3
    if-eqz v6, :cond_5

    if-ne v6, p4, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p2, v1, [Ljava/lang/Object;

    .line 10
    invoke-static {p1, p2}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_5
    :goto_1
    :pswitch_4
    move v3, v5

    .line 11
    :goto_2
    invoke-virtual {p3, v3, v1, v6}, Lp3/a/o1/o/m/h;->b(III)Lp3/a/o1/o/m/h;

    :goto_3
    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    .line 12
    :cond_6
    check-cast p1, Lp3/a/o1/f$e;

    .line 13
    iget-object p2, p1, Lp3/a/o1/f$e;->a:Lp3/a/o1/g;

    sget-object v0, Lp3/a/o1/g$a;->a:Lp3/a/o1/g$a;

    invoke-virtual {p2, v0, p3}, Lp3/a/o1/g;->f(Lp3/a/o1/g$a;Lp3/a/o1/o/m/h;)V

    .line 14
    iget-object p2, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 15
    iget-object v2, p2, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    invoke-virtual {p3, v4}, Lp3/a/o1/o/m/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 18
    iget-object p2, p3, Lp3/a/o1/o/m/h;->d:[I

    aget p2, p2, v4

    .line 19
    iget-object v0, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 20
    iput p2, v0, Lp3/a/o1/f;->B:I

    .line 21
    :cond_7
    invoke-virtual {p3, v3}, Lp3/a/o1/o/m/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 22
    iget-object p2, p3, Lp3/a/o1/o/m/h;->d:[I

    aget p2, p2, v3

    .line 23
    iget-object v0, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 24
    iget-object v0, v0, Lp3/a/o1/f;->i:Lp3/a/o1/m;

    .line 25
    invoke-virtual {v0, p2}, Lp3/a/o1/m;->c(I)Z

    move-result p2

    goto :goto_4

    :cond_8
    move p2, v1

    .line 26
    :goto_4
    iget-boolean v0, p1, Lp3/a/o1/f$e;->c:Z

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 28
    iget-object v0, v0, Lp3/a/o1/f;->g:Lp3/a/n1/t1$a;

    .line 29
    invoke-interface {v0}, Lp3/a/n1/t1$a;->b()V

    .line 30
    iput-boolean v1, p1, Lp3/a/o1/f$e;->c:Z

    .line 31
    :cond_9
    iget-object v0, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 32
    iget-object v0, v0, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    .line 33
    invoke-virtual {v0, p3}, Lp3/a/o1/b;->e1(Lp3/a/o1/o/m/h;)V

    if-eqz p2, :cond_a

    .line 34
    iget-object p2, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 35
    iget-object p2, p2, Lp3/a/o1/f;->i:Lp3/a/o1/m;

    .line 36
    invoke-virtual {p2}, Lp3/a/o1/m;->f()V

    .line 37
    :cond_a
    iget-object p1, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 38
    invoke-virtual {p1}, Lp3/a/o1/f;->w()Z

    .line 39
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget p1, p3, Lp3/a/o1/o/m/h;->a:I

    and-int/lit8 p1, p1, 0x2

    const/4 p2, -0x1

    if-eqz p1, :cond_b

    iget-object v0, p3, Lp3/a/o1/o/m/h;->d:[I

    aget v0, v0, p4

    goto :goto_5

    :cond_b
    move v0, p2

    :goto_5
    if-ltz v0, :cond_e

    .line 41
    iget-object v0, p0, Lp3/a/o1/o/m/f$c;->c:Lp3/a/o1/o/m/e$a;

    if-eqz p1, :cond_c

    .line 42
    iget-object p1, p3, Lp3/a/o1/o/m/h;->d:[I

    aget p2, p1, p4

    .line 43
    :cond_c
    iput p2, v0, Lp3/a/o1/o/m/e$a;->c:I

    .line 44
    iput p2, v0, Lp3/a/o1/o/m/e$a;->d:I

    .line 45
    iget p1, v0, Lp3/a/o1/o/m/e$a;->h:I

    if-ge p2, p1, :cond_e

    if-nez p2, :cond_d

    .line 46
    invoke-virtual {v0}, Lp3/a/o1/o/m/e$a;->a()V

    goto :goto_6

    :cond_d
    sub-int/2addr p1, p2

    .line 47
    invoke-virtual {v0, p1}, Lp3/a/o1/o/m/e$a;->c(I)I

    :cond_e
    :goto_6
    return-void

    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_f
    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array p3, p4, [Ljava/lang/Object;

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_10
    const-string p1, "TYPE_SETTINGS streamId != 0"

    new-array p2, v1, [Ljava/lang/Object;

    .line 50
    invoke-static {p1, p2}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final s(Lp3/a/o1/o/m/b$a;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_8

    .line 1
    iget-object p2, p0, Lp3/a/o1/o/m/f$c;->a:Lv3/h;

    invoke-interface {p2}, Lv3/h;->readInt()I

    move-result p2

    int-to-long v3, p2

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_7

    .line 2
    check-cast p1, Lp3/a/o1/f$e;

    .line 3
    sget-object v5, Lp3/a/o1/o/m/a;->c:Lp3/a/o1/o/m/a;

    iget-object v6, p1, Lp3/a/o1/f$e;->a:Lp3/a/o1/g;

    sget-object v7, Lp3/a/o1/g$a;->a:Lp3/a/o1/g$a;

    invoke-virtual {v6, v7, p3, v3, v4}, Lp3/a/o1/g;->g(Lp3/a/o1/g$a;IJ)V

    if-nez p2, :cond_2

    const-string p2, "Received 0 flow control window increment."

    if-nez p3, :cond_0

    .line 4
    iget-object p1, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    invoke-static {p1, v5, p2}, Lp3/a/o1/f;->i(Lp3/a/o1/f;Lp3/a/o1/o/m/a;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object p1, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    sget-object v0, Lp3/a/g1;->o:Lp3/a/g1;

    .line 6
    invoke-virtual {v0, p2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p2

    sget-object v0, Lp3/a/n1/t$a;->a:Lp3/a/n1/t$a;

    .line 7
    iget-object v6, p1, Lp3/a/o1/f;->j:Ljava/lang/Object;

    monitor-enter v6

    .line 8
    :try_start_0
    iget-object v1, p1, Lp3/a/o1/f;->m:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/o1/e;

    if-eqz v1, :cond_1

    .line 9
    iget-object v3, p1, Lp3/a/o1/f;->h:Lp3/a/o1/b;

    sget-object v4, Lp3/a/o1/o/m/a;->m:Lp3/a/o1/o/m/a;

    invoke-virtual {v3, p3, v4}, Lp3/a/o1/b;->m2(ILp3/a/o1/o/m/a;)V

    .line 10
    iget-object p3, v1, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 11
    new-instance v3, Lp3/a/o0;

    invoke-direct {v3}, Lp3/a/o0;-><init>()V

    .line 12
    invoke-virtual {p3, p2, v0, v2, v3}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    .line 13
    invoke-virtual {p1}, Lp3/a/o1/f;->w()Z

    move-result p2

    if-nez p2, :cond_1

    .line 14
    invoke-virtual {p1}, Lp3/a/o1/f;->y()V

    .line 15
    invoke-virtual {p1, v1}, Lp3/a/o1/f;->r(Lp3/a/o1/e;)V

    .line 16
    :cond_1
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 17
    :cond_2
    iget-object p2, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 18
    iget-object p2, p2, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 19
    monitor-enter p2

    if-nez p3, :cond_3

    .line 20
    :try_start_1
    iget-object p1, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 21
    iget-object p1, p1, Lp3/a/o1/f;->i:Lp3/a/o1/m;

    long-to-int p3, v3

    .line 22
    invoke-virtual {p1, v1, p3}, Lp3/a/o1/m;->e(Lp3/a/o1/e;I)I

    .line 23
    monitor-exit p2

    goto :goto_2

    .line 24
    :cond_3
    iget-object v1, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 25
    iget-object v1, v1, Lp3/a/o1/f;->m:Ljava/util/Map;

    .line 26
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/o1/e;

    if-eqz v1, :cond_4

    .line 27
    iget-object v0, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    .line 28
    iget-object v0, v0, Lp3/a/o1/f;->i:Lp3/a/o1/m;

    long-to-int v3, v3

    .line 29
    invoke-virtual {v0, v1, v3}, Lp3/a/o1/m;->e(Lp3/a/o1/e;I)I

    goto :goto_0

    .line 30
    :cond_4
    iget-object v1, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    invoke-virtual {v1, p3}, Lp3/a/o1/f;->q(I)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v2

    .line 31
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_6

    .line 32
    iget-object p1, p1, Lp3/a/o1/f$e;->d:Lp3/a/o1/f;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received window_update for unknown stream: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v5, p2}, Lp3/a/o1/f;->i(Lp3/a/o1/f;Lp3/a/o1/o/m/a;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 33
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_7
    const-string p1, "windowSizeIncrement was 0"

    new-array p2, v2, [Ljava/lang/Object;

    .line 34
    invoke-static {p1, p2}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_8
    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array p3, v0, [Ljava/lang/Object;

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lp3/a/o1/o/m/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1
.end method
