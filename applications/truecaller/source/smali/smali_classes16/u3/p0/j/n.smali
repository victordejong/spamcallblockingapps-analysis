.class public final Lu3/p0/j/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/p0/j/n$a;,
        Lu3/p0/j/n$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/logging/Logger;

.field public static final f:Lu3/p0/j/n;


# instance fields
.field public final a:Lu3/p0/j/n$a;

.field public final b:Lu3/p0/j/d$a;

.field public final c:Lv3/h;

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lu3/p0/j/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Logger.getLogger(Http2::class.java.name)"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lu3/p0/j/n;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lv3/h;Z)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/j/n;->c:Lv3/h;

    iput-boolean p2, p0, Lu3/p0/j/n;->d:Z

    .line 2
    new-instance p2, Lu3/p0/j/n$a;

    invoke-direct {p2, p1}, Lu3/p0/j/n$a;-><init>(Lv3/h;)V

    iput-object p2, p0, Lu3/p0/j/n;->a:Lu3/p0/j/n$a;

    .line 3
    new-instance p1, Lu3/p0/j/d$a;

    const/16 v0, 0x1000

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p1, p2, v0, v1, v2}, Lu3/p0/j/d$a;-><init>(Lv3/b0;III)V

    iput-object p1, p0, Lu3/p0/j/n;->b:Lu3/p0/j/d$a;

    return-void
.end method


# virtual methods
.method public final b(ZLu3/p0/j/n$b;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "handler"

    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, v0, Lu3/p0/j/n;->c:Lv3/h;

    const-wide/16 v4, 0x9

    invoke-interface {v3, v4, v5}, Lv3/h;->y1(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v3, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-static {v3}, Lu3/p0/c;->s(Lv3/h;)I

    move-result v3

    const/16 v10, 0x4000

    if-gt v3, v10, :cond_36

    .line 3
    iget-object v4, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v4}, Lv3/h;->readByte()B

    move-result v4

    and-int/lit16 v11, v4, 0xff

    .line 4
    iget-object v4, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v4}, Lv3/h;->readByte()B

    move-result v4

    and-int/lit16 v12, v4, 0xff

    .line 5
    iget-object v4, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v4}, Lv3/h;->readInt()I

    move-result v4

    const v13, 0x7fffffff

    and-int v14, v4, v13

    .line 6
    sget-object v15, Lu3/p0/j/n;->e:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v15, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lu3/p0/j/e;->e:Lu3/p0/j/e;

    const/4 v5, 0x1

    move v6, v14

    move v7, v3

    move v8, v11

    move v9, v12

    invoke-virtual/range {v4 .. v9}, Lu3/p0/j/e;->b(ZIIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x4

    if-eqz p1, :cond_2

    if-ne v11, v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected a SETTINGS frame but was "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lu3/p0/j/e;->e:Lu3/p0/j/e;

    invoke-virtual {v3, v11}, Lu3/p0/j/e;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    const/16 v5, 0xe

    const/4 v6, 0x5

    const-string v7, " > remaining length "

    const-string v8, "PROTOCOL_ERROR padding "

    const/16 v9, 0x8

    const/4 v15, 0x1

    packed-switch v11, :pswitch_data_0

    .line 8
    iget-object v1, v0, Lu3/p0/j/n;->c:Lv3/h;

    int-to-long v2, v3

    invoke-interface {v1, v2, v3}, Lv3/h;->skip(J)V

    goto/16 :goto_c

    :pswitch_0
    if-ne v3, v4, :cond_4

    .line 9
    iget-object v2, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    move-result v2

    const-wide/32 v3, 0x7fffffff

    .line 10
    sget-object v5, Lu3/p0/c;->a:[B

    int-to-long v5, v2

    and-long v2, v5, v3

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    .line 11
    invoke-interface {v1, v14, v2, v3}, Lu3/p0/j/n$b;->c(IJ)V

    goto/16 :goto_c

    .line 12
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "windowSizeIncrement was 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-static {v2, v3}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    if-lt v3, v9, :cond_b

    if-nez v14, :cond_a

    .line 14
    iget-object v4, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v4}, Lv3/h;->readInt()I

    move-result v4

    .line 15
    iget-object v6, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v6}, Lv3/h;->readInt()I

    move-result v6

    sub-int/2addr v3, v9

    .line 16
    invoke-static {}, Lu3/p0/j/b;->values()[Lu3/p0/j/b;

    move-result-object v7

    move v8, v2

    :goto_1
    if-ge v8, v5, :cond_7

    aget-object v9, v7, v8

    .line 17
    iget v10, v9, Lu3/p0/j/b;->a:I

    if-ne v10, v6, :cond_5

    move v10, v15

    goto :goto_2

    :cond_5
    move v10, v2

    :goto_2
    if-eqz v10, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_9

    .line 18
    sget-object v2, Lv3/i;->d:Lv3/i;

    if-lez v3, :cond_8

    .line 19
    iget-object v2, v0, Lu3/p0/j/n;->c:Lv3/h;

    int-to-long v5, v3

    invoke-interface {v2, v5, v6}, Lv3/h;->e0(J)Lv3/i;

    move-result-object v2

    .line 20
    :cond_8
    invoke-interface {v1, v4, v9, v2}, Lu3/p0/j/n$b;->f(ILu3/p0/j/b;Lv3/i;)V

    goto/16 :goto_c

    .line 21
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY unexpected error code: "

    .line 22
    invoke-static {v2, v6}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY streamId != 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY length < 8: "

    invoke-static {v2, v3}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    if-ne v3, v9, :cond_e

    if-nez v14, :cond_d

    .line 26
    iget-object v3, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v3}, Lv3/h;->readInt()I

    move-result v3

    .line 27
    iget-object v4, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v4}, Lv3/h;->readInt()I

    move-result v4

    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_c

    move v2, v15

    .line 28
    :cond_c
    invoke-interface {v1, v2, v3, v4}, Lu3/p0/j/n$b;->a(ZII)V

    goto/16 :goto_c

    .line 29
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_PING streamId != 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_PING length != 8: "

    invoke-static {v2, v3}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    if-eqz v14, :cond_12

    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_f

    .line 31
    iget-object v2, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readByte()B

    move-result v2

    .line 32
    sget-object v5, Lu3/p0/c;->a:[B

    and-int/lit16 v2, v2, 0xff

    .line 33
    :cond_f
    iget-object v5, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v5}, Lv3/h;->readInt()I

    move-result v5

    and-int/2addr v5, v13

    add-int/lit8 v3, v3, -0x4

    if-eqz v4, :cond_10

    add-int/lit8 v3, v3, -0x1

    :cond_10
    if-gt v2, v3, :cond_11

    sub-int/2addr v3, v2

    .line 34
    invoke-virtual {v0, v3, v2, v12, v14}, Lu3/p0/j/n;->j(IIII)Ljava/util/List;

    move-result-object v2

    .line 35
    invoke-interface {v1, v14, v5, v2}, Lu3/p0/j/n$b;->b(IILjava/util/List;)V

    goto/16 :goto_c

    .line 36
    :cond_11
    new-instance v1, Ljava/io/IOException;

    invoke-static {v8, v2, v7, v3}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_12
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4
    if-nez v14, :cond_20

    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_14

    if-nez v3, :cond_13

    .line 38
    invoke-interface/range {p2 .. p2}, Lu3/p0/j/n$b;->j()V

    goto/16 :goto_c

    .line 39
    :cond_13
    new-instance v1, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_14
    rem-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_1f

    .line 41
    new-instance v5, Lu3/p0/j/t;

    invoke-direct {v5}, Lu3/p0/j/t;-><init>()V

    .line 42
    invoke-static {v2, v3}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v3

    const/4 v7, 0x6

    invoke-static {v3, v7}, Ls1/d0/j;->i(Ls1/d0/g;I)Ls1/d0/g;

    move-result-object v3

    .line 43
    iget v7, v3, Ls1/d0/g;->a:I

    .line 44
    iget v8, v3, Ls1/d0/g;->b:I

    .line 45
    iget v3, v3, Ls1/d0/g;->c:I

    if-ltz v3, :cond_15

    if-gt v7, v8, :cond_1e

    goto :goto_4

    :cond_15
    if-lt v7, v8, :cond_1e

    .line 46
    :goto_4
    iget-object v9, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v9}, Lv3/h;->readShort()S

    move-result v9

    const v11, 0xffff

    .line 47
    sget-object v12, Lu3/p0/c;->a:[B

    and-int/2addr v9, v11

    .line 48
    iget-object v11, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v11}, Lv3/h;->readInt()I

    move-result v11

    const/4 v12, 0x2

    if-eq v9, v12, :cond_1b

    const/4 v12, 0x3

    if-eq v9, v12, :cond_1a

    if-eq v9, v4, :cond_18

    if-eq v9, v6, :cond_16

    goto :goto_5

    :cond_16
    if-lt v11, v10, :cond_17

    const v12, 0xffffff

    if-gt v11, v12, :cond_17

    goto :goto_5

    .line 49
    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {v2, v11}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    const/4 v9, 0x7

    if-ltz v11, :cond_19

    goto :goto_5

    .line 50
    :cond_19
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    move v9, v4

    goto :goto_5

    :cond_1b
    if-eqz v11, :cond_1d

    if-ne v11, v15, :cond_1c

    goto :goto_5

    .line 51
    :cond_1c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_1d
    :goto_5
    invoke-virtual {v5, v9, v11}, Lu3/p0/j/t;->c(II)Lu3/p0/j/t;

    if-eq v7, v8, :cond_1e

    add-int/2addr v7, v3

    goto :goto_4

    .line 53
    :cond_1e
    invoke-interface {v1, v2, v5}, Lu3/p0/j/n$b;->g(ZLu3/p0/j/t;)V

    goto/16 :goto_c

    .line 54
    :cond_1f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {v2, v3}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_20
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_SETTINGS streamId != 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5
    if-ne v3, v4, :cond_26

    if-eqz v14, :cond_25

    .line 56
    iget-object v3, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v3}, Lv3/h;->readInt()I

    move-result v3

    .line 57
    invoke-static {}, Lu3/p0/j/b;->values()[Lu3/p0/j/b;

    move-result-object v4

    move v6, v2

    :goto_6
    if-ge v6, v5, :cond_23

    aget-object v7, v4, v6

    .line 58
    iget v8, v7, Lu3/p0/j/b;->a:I

    if-ne v8, v3, :cond_21

    move v8, v15

    goto :goto_7

    :cond_21
    move v8, v2

    :goto_7
    if-eqz v8, :cond_22

    goto :goto_8

    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_23
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_24

    .line 59
    invoke-interface {v1, v14, v7}, Lu3/p0/j/n$b;->e(ILu3/p0/j/b;)V

    goto/16 :goto_c

    .line 60
    :cond_24
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM unexpected error code: "

    .line 61
    invoke-static {v2, v3}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_25
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_26
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM length: "

    const-string v4, " != 4"

    invoke-static {v2, v3, v4}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_6
    if-ne v3, v6, :cond_28

    if-eqz v14, :cond_27

    .line 65
    invoke-virtual {v0, v1, v14}, Lu3/p0/j/n;->k(Lu3/p0/j/n$b;I)V

    goto/16 :goto_c

    .line 66
    :cond_27
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_28
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_PRIORITY length: "

    const-string v4, " != 5"

    invoke-static {v2, v3, v4}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_7
    if-eqz v14, :cond_2e

    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_29

    move v4, v15

    goto :goto_9

    :cond_29
    move v4, v2

    :goto_9
    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_2a

    .line 68
    iget-object v2, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readByte()B

    move-result v2

    .line 69
    sget-object v6, Lu3/p0/c;->a:[B

    and-int/lit16 v2, v2, 0xff

    :cond_2a
    and-int/lit8 v6, v12, 0x20

    if-eqz v6, :cond_2b

    .line 70
    invoke-virtual {v0, v1, v14}, Lu3/p0/j/n;->k(Lu3/p0/j/n$b;I)V

    add-int/lit8 v3, v3, -0x5

    :cond_2b
    if-eqz v5, :cond_2c

    add-int/lit8 v3, v3, -0x1

    :cond_2c
    if-gt v2, v3, :cond_2d

    sub-int/2addr v3, v2

    .line 71
    invoke-virtual {v0, v3, v2, v12, v14}, Lu3/p0/j/n;->j(IIII)Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    .line 72
    invoke-interface {v1, v4, v14, v3, v2}, Lu3/p0/j/n$b;->i(ZIILjava/util/List;)V

    goto :goto_c

    .line 73
    :cond_2d
    new-instance v1, Ljava/io/IOException;

    invoke-static {v8, v2, v7, v3}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_2e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_8
    if-eqz v14, :cond_35

    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_2f

    move v4, v15

    goto :goto_a

    :cond_2f
    move v4, v2

    :goto_a
    and-int/lit8 v5, v12, 0x20

    if-eqz v5, :cond_30

    move v5, v15

    goto :goto_b

    :cond_30
    move v5, v2

    :goto_b
    if-nez v5, :cond_34

    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_31

    .line 75
    iget-object v2, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readByte()B

    move-result v2

    .line 76
    sget-object v6, Lu3/p0/c;->a:[B

    and-int/lit16 v2, v2, 0xff

    :cond_31
    if-eqz v5, :cond_32

    add-int/lit8 v3, v3, -0x1

    :cond_32
    if-gt v2, v3, :cond_33

    sub-int/2addr v3, v2

    .line 77
    iget-object v5, v0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v1, v4, v14, v5, v3}, Lu3/p0/j/n$b;->l(ZILv3/h;I)V

    .line 78
    iget-object v1, v0, Lu3/p0/j/n;->c:Lv3/h;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lv3/h;->skip(J)V

    goto :goto_c

    .line 79
    :cond_33
    new-instance v1, Ljava/io/IOException;

    invoke-static {v8, v2, v7, v3}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_34
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_35
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_c
    return v15

    .line 82
    :cond_36
    new-instance v1, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR: "

    invoke-static {v2, v3}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    return v2

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
    iget-object v0, p0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v0}, Lv3/b0;->close()V

    return-void
.end method

.method public final d(Lu3/p0/j/n$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lu3/p0/j/n;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v1, p1}, Lu3/p0/j/n;->b(ZLu3/p0/j/n$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Required SETTINGS preface not received"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    iget-object p1, p0, Lu3/p0/j/n;->c:Lv3/h;

    sget-object v0, Lu3/p0/j/e;->a:Lv3/i;

    .line 5
    invoke-virtual {v0}, Lv3/i;->f()I

    move-result v2

    int-to-long v2, v2

    .line 6
    invoke-interface {p1, v2, v3}, Lv3/h;->e0(J)Lv3/i;

    move-result-object p1

    .line 7
    sget-object v2, Lu3/p0/j/n;->e:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "<< CONNECTION "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lv3/i;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lu3/p0/c;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_3

    :goto_0
    return-void

    .line 9
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Expected a connection header but was "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lv3/i;->r()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(IIII)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List<",
            "Lu3/p0/j/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/p0/j/n;->a:Lu3/p0/j/n$a;

    .line 2
    iput p1, v0, Lu3/p0/j/n$a;->d:I

    .line 3
    iput p1, v0, Lu3/p0/j/n$a;->a:I

    .line 4
    iput p2, v0, Lu3/p0/j/n$a;->e:I

    .line 5
    iput p3, v0, Lu3/p0/j/n$a;->b:I

    .line 6
    iput p4, v0, Lu3/p0/j/n$a;->c:I

    .line 7
    iget-object p1, p0, Lu3/p0/j/n;->b:Lu3/p0/j/d$a;

    .line 8
    :cond_0
    :goto_0
    iget-object p2, p1, Lu3/p0/j/d$a;->b:Lv3/h;

    invoke-interface {p2}, Lv3/h;->N1()Z

    move-result p2

    if-nez p2, :cond_e

    .line 9
    iget-object p2, p1, Lu3/p0/j/d$a;->b:Lv3/h;

    invoke-interface {p2}, Lv3/h;->readByte()B

    move-result p2

    .line 10
    sget-object p3, Lu3/p0/c;->a:[B

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x80

    if-eq p2, p3, :cond_d

    and-int/lit16 p4, p2, 0x80

    const/4 v0, 0x1

    if-ne p4, p3, :cond_5

    const/16 p3, 0x7f

    .line 11
    invoke-virtual {p1, p2, p3}, Lu3/p0/j/d$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    if-ltz p2, :cond_1

    .line 12
    sget-object p3, Lu3/p0/j/d;->c:Lu3/p0/j/d;

    .line 13
    sget-object p3, Lu3/p0/j/d;->a:[Lu3/p0/j/c;

    .line 14
    array-length p3, p3

    sub-int/2addr p3, v0

    if-gt p2, p3, :cond_1

    move p3, v0

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    .line 15
    sget-object p3, Lu3/p0/j/d;->c:Lu3/p0/j/d;

    .line 16
    sget-object p3, Lu3/p0/j/d;->a:[Lu3/p0/j/c;

    .line 17
    aget-object p2, p3, p2

    .line 18
    iget-object p3, p1, Lu3/p0/j/d$a;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_2
    sget-object p3, Lu3/p0/j/d;->c:Lu3/p0/j/d;

    .line 20
    sget-object p3, Lu3/p0/j/d;->a:[Lu3/p0/j/c;

    .line 21
    array-length p3, p3

    sub-int p3, p2, p3

    invoke-virtual {p1, p3}, Lu3/p0/j/d$a;->b(I)I

    move-result p3

    if-ltz p3, :cond_4

    .line 22
    iget-object p4, p1, Lu3/p0/j/d$a;->c:[Lu3/p0/j/c;

    array-length v1, p4

    if-ge p3, v1, :cond_4

    .line 23
    iget-object p2, p1, Lu3/p0/j/d$a;->a:Ljava/util/List;

    aget-object p3, p4, p3

    if-eqz p3, :cond_3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1

    .line 24
    :cond_4
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

    :cond_5
    const/4 p3, -0x1

    const/16 p4, 0x40

    if-ne p2, p4, :cond_6

    .line 25
    sget-object p2, Lu3/p0/j/d;->c:Lu3/p0/j/d;

    invoke-virtual {p1}, Lu3/p0/j/d$a;->f()Lv3/i;

    move-result-object p4

    invoke-virtual {p2, p4}, Lu3/p0/j/d;->a(Lv3/i;)Lv3/i;

    .line 26
    invoke-virtual {p1}, Lu3/p0/j/d$a;->f()Lv3/i;

    move-result-object p2

    .line 27
    new-instance v0, Lu3/p0/j/c;

    invoke-direct {v0, p4, p2}, Lu3/p0/j/c;-><init>(Lv3/i;Lv3/i;)V

    invoke-virtual {p1, p3, v0}, Lu3/p0/j/d$a;->e(ILu3/p0/j/c;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v1, p2, 0x40

    if-ne v1, p4, :cond_7

    const/16 p4, 0x3f

    .line 28
    invoke-virtual {p1, p2, p4}, Lu3/p0/j/d$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    .line 29
    invoke-virtual {p1, p2}, Lu3/p0/j/d$a;->d(I)Lv3/i;

    move-result-object p2

    .line 30
    invoke-virtual {p1}, Lu3/p0/j/d$a;->f()Lv3/i;

    move-result-object p4

    .line 31
    new-instance v0, Lu3/p0/j/c;

    invoke-direct {v0, p2, p4}, Lu3/p0/j/c;-><init>(Lv3/i;Lv3/i;)V

    invoke-virtual {p1, p3, v0}, Lu3/p0/j/d$a;->e(ILu3/p0/j/c;)V

    goto/16 :goto_0

    :cond_7
    and-int/lit8 p3, p2, 0x20

    const/16 p4, 0x20

    if-ne p3, p4, :cond_a

    const/16 p3, 0x1f

    .line 32
    invoke-virtual {p1, p2, p3}, Lu3/p0/j/d$a;->g(II)I

    move-result p2

    iput p2, p1, Lu3/p0/j/d$a;->h:I

    if-ltz p2, :cond_9

    .line 33
    iget p3, p1, Lu3/p0/j/d$a;->g:I

    if-gt p2, p3, :cond_9

    .line 34
    iget p3, p1, Lu3/p0/j/d$a;->f:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_8

    .line 35
    invoke-virtual {p1}, Lu3/p0/j/d$a;->a()V

    goto/16 :goto_0

    :cond_8
    sub-int/2addr p3, p2

    .line 36
    invoke-virtual {p1, p3}, Lu3/p0/j/d$a;->c(I)I

    goto/16 :goto_0

    .line 37
    :cond_9
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Invalid dynamic table size update "

    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p1, p1, Lu3/p0/j/d$a;->h:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    const/16 p3, 0x10

    if-eq p2, p3, :cond_c

    if-nez p2, :cond_b

    goto :goto_2

    :cond_b
    const/16 p3, 0xf

    .line 38
    invoke-virtual {p1, p2, p3}, Lu3/p0/j/d$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    .line 39
    invoke-virtual {p1, p2}, Lu3/p0/j/d$a;->d(I)Lv3/i;

    move-result-object p2

    .line 40
    invoke-virtual {p1}, Lu3/p0/j/d$a;->f()Lv3/i;

    move-result-object p3

    .line 41
    iget-object p4, p1, Lu3/p0/j/d$a;->a:Ljava/util/List;

    new-instance v0, Lu3/p0/j/c;

    invoke-direct {v0, p2, p3}, Lu3/p0/j/c;-><init>(Lv3/i;Lv3/i;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 42
    :cond_c
    :goto_2
    sget-object p2, Lu3/p0/j/d;->c:Lu3/p0/j/d;

    invoke-virtual {p1}, Lu3/p0/j/d$a;->f()Lv3/i;

    move-result-object p3

    invoke-virtual {p2, p3}, Lu3/p0/j/d;->a(Lv3/i;)Lv3/i;

    .line 43
    invoke-virtual {p1}, Lu3/p0/j/d$a;->f()Lv3/i;

    move-result-object p2

    .line 44
    iget-object p4, p1, Lu3/p0/j/d$a;->a:Ljava/util/List;

    new-instance v0, Lu3/p0/j/c;

    invoke-direct {v0, p3, p2}, Lu3/p0/j/c;-><init>(Lv3/i;Lv3/i;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 45
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_e
    iget-object p1, p0, Lu3/p0/j/n;->b:Lu3/p0/j/d$a;

    .line 47
    iget-object p2, p1, Lu3/p0/j/d$a;->a:Ljava/util/List;

    invoke-static {p2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 48
    iget-object p1, p1, Lu3/p0/j/d$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p2
.end method

.method public final k(Lu3/p0/j/n$b;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v0}, Lv3/h;->readInt()I

    move-result v0

    const-wide v1, 0x80000000L

    long-to-int v1, v1

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 2
    iget-object v3, p0, Lu3/p0/j/n;->c:Lv3/h;

    invoke-interface {v3}, Lv3/h;->readByte()B

    move-result v3

    .line 3
    sget-object v4, Lu3/p0/c;->a:[B

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 4
    invoke-interface {p1, p2, v0, v3, v1}, Lu3/p0/j/n$b;->m(IIIZ)V

    return-void
.end method
