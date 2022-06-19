.class public final Le/p/a/y/j/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/p/a/y/j/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/j/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lv3/h;

.field public final b:Z

.field public final c:Le/p/a/y/j/q;


# direct methods
.method public constructor <init>(Lv3/h;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/p/a/y/j/u$a;->a:Lv3/h;

    .line 3
    new-instance v0, Le/p/a/y/j/q;

    invoke-direct {v0, p1}, Le/p/a/y/j/q;-><init>(Lv3/h;)V

    iput-object v0, p0, Le/p/a/y/j/u$a;->c:Le/p/a/y/j/q;

    .line 4
    iput-boolean p2, p0, Le/p/a/y/j/u$a;->b:Z

    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public O(Le/p/a/y/j/b$a;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    move-result v2

    .line 2
    iget-object v3, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v3}, Lv3/h;->readInt()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v4, -0x80000000

    and-int/2addr v4, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const/high16 v6, -0x1000000

    and-int v7, v3, v6

    ushr-int/lit8 v7, v7, 0x18

    const v8, 0xffffff

    and-int/2addr v3, v8

    const v9, 0x7fffffff

    if-eqz v4, :cond_15

    const/high16 v4, 0x7fff0000

    and-int/2addr v4, v2

    ushr-int/lit8 v4, v4, 0x10

    const v10, 0xffff

    and-int/2addr v2, v10

    const/4 v10, 0x3

    if-ne v4, v10, :cond_14

    const/4 v4, 0x4

    const/16 v10, 0x12

    const/16 v11, 0x8

    const/4 v12, 0x2

    const/4 v13, 0x0

    packed-switch v2, :pswitch_data_0

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    int-to-long v2, v3

    invoke-interface {v1, v2, v3}, Lv3/h;->skip(J)V

    return v5

    :pswitch_1
    if-ne v3, v11, :cond_2

    .line 4
    iget-object v2, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    move-result v2

    .line 5
    iget-object v3, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v3}, Lv3/h;->readInt()I

    move-result v3

    and-int/2addr v2, v9

    and-int/2addr v3, v9

    int-to-long v3, v3

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-eqz v6, :cond_1

    .line 6
    move-object/from16 v1, p1

    check-cast v1, Le/p/a/y/j/d$e;

    invoke-virtual {v1, v2, v3, v4}, Le/p/a/y/j/d$e;->h(IJ)V

    return v5

    :cond_1
    new-array v2, v5, [Ljava/lang/Object;

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "windowSizeIncrement was 0"

    invoke-static {v1, v2}, Le/p/a/y/j/u$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v13

    :cond_2
    new-array v2, v5, [Ljava/lang/Object;

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {v1, v2}, Le/p/a/y/j/u$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v13

    .line 9
    :pswitch_2
    iget-object v1, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v1}, Lv3/h;->readInt()I

    move-result v1

    and-int v13, v1, v9

    .line 10
    iget-object v1, v0, Le/p/a/y/j/u$a;->c:Le/p/a/y/j/q;

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v1, v3}, Le/p/a/y/j/q;->a(I)Ljava/util/List;

    move-result-object v15

    .line 11
    sget-object v16, Le/p/a/y/j/m;->c:Le/p/a/y/j/m;

    move-object/from16 v10, p1

    check-cast v10, Le/p/a/y/j/d$e;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, -0x1

    invoke-virtual/range {v10 .. v16}, Le/p/a/y/j/d$e;->d(ZZIILjava/util/List;Le/p/a/y/j/m;)V

    return v5

    :pswitch_3
    if-ne v3, v11, :cond_6

    .line 12
    iget-object v2, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    move-result v2

    and-int/2addr v2, v9

    .line 13
    iget-object v3, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v3}, Lv3/h;->readInt()I

    move-result v3

    .line 14
    invoke-static {}, Le/p/a/y/j/a;->values()[Le/p/a/y/j/a;

    move-result-object v4

    move v6, v1

    :goto_1
    if-ge v6, v10, :cond_4

    aget-object v7, v4, v6

    .line 15
    iget v8, v7, Le/p/a/y/j/a;->c:I

    if-ne v8, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move-object v7, v13

    :goto_2
    if-eqz v7, :cond_5

    .line 16
    sget-object v1, Lv3/i;->d:Lv3/i;

    move-object/from16 v3, p1

    check-cast v3, Le/p/a/y/j/d$e;

    invoke-virtual {v3, v2, v7, v1}, Le/p/a/y/j/d$e;->c(ILe/p/a/y/j/a;Lv3/i;)V

    return v5

    :cond_5
    new-array v2, v5, [Ljava/lang/Object;

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v1, v2}, Le/p/a/y/j/u$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v13

    :cond_6
    new-array v2, v5, [Ljava/lang/Object;

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "TYPE_GOAWAY length: %d != 8"

    invoke-static {v1, v2}, Le/p/a/y/j/u$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v13

    :pswitch_4
    if-ne v3, v4, :cond_9

    .line 19
    iget-object v2, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    move-result v2

    .line 20
    iget-boolean v3, v0, Le/p/a/y/j/u$a;->b:Z

    and-int/lit8 v4, v2, 0x1

    if-ne v4, v5, :cond_7

    move v4, v5

    goto :goto_3

    :cond_7
    move v4, v1

    :goto_3
    if-ne v3, v4, :cond_8

    move v3, v5

    goto :goto_4

    :cond_8
    move v3, v1

    .line 21
    :goto_4
    move-object/from16 v4, p1

    check-cast v4, Le/p/a/y/j/d$e;

    invoke-virtual {v4, v3, v2, v1}, Le/p/a/y/j/d$e;->e(ZII)V

    return v5

    :cond_9
    new-array v2, v5, [Ljava/lang/Object;

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "TYPE_PING length: %d != 4"

    invoke-static {v1, v2}, Le/p/a/y/j/u$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v13

    .line 23
    :pswitch_5
    iget-object v2, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    move-result v2

    mul-int/lit8 v9, v2, 0x8

    add-int/2addr v9, v4

    if-ne v3, v9, :cond_c

    .line 24
    new-instance v3, Le/p/a/y/j/t;

    invoke-direct {v3}, Le/p/a/y/j/t;-><init>()V

    move v4, v1

    :goto_5
    if-ge v4, v2, :cond_a

    .line 25
    iget-object v9, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v9}, Lv3/h;->readInt()I

    move-result v9

    .line 26
    iget-object v10, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v10}, Lv3/h;->readInt()I

    move-result v10

    and-int v11, v9, v6

    ushr-int/lit8 v11, v11, 0x18

    and-int/2addr v9, v8

    .line 27
    invoke-virtual {v3, v9, v11, v10}, Le/p/a/y/j/t;->d(III)Le/p/a/y/j/t;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    and-int/lit8 v2, v7, 0x1

    if-eqz v2, :cond_b

    move v1, v5

    .line 28
    :cond_b
    move-object/from16 v2, p1

    check-cast v2, Le/p/a/y/j/d$e;

    invoke-virtual {v2, v1, v3}, Le/p/a/y/j/d$e;->g(ZLe/p/a/y/j/t;)V

    return v5

    :cond_c
    new-array v4, v12, [Ljava/lang/Object;

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {v1, v4}, Le/p/a/y/j/u$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v13

    :pswitch_6
    if-ne v3, v11, :cond_10

    .line 30
    iget-object v2, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    move-result v2

    and-int/2addr v2, v9

    .line 31
    iget-object v3, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v3}, Lv3/h;->readInt()I

    move-result v3

    .line 32
    invoke-static {}, Le/p/a/y/j/a;->values()[Le/p/a/y/j/a;

    move-result-object v4

    move v6, v1

    :goto_6
    if-ge v6, v10, :cond_e

    aget-object v7, v4, v6

    .line 33
    iget v8, v7, Le/p/a/y/j/a;->b:I

    if-ne v8, v3, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_e
    move-object v7, v13

    :goto_7
    if-eqz v7, :cond_f

    .line 34
    move-object/from16 v1, p1

    check-cast v1, Le/p/a/y/j/d$e;

    invoke-virtual {v1, v2, v7}, Le/p/a/y/j/d$e;->f(ILe/p/a/y/j/a;)V

    return v5

    :cond_f
    new-array v2, v5, [Ljava/lang/Object;

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v1, v2}, Le/p/a/y/j/u$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v13

    :cond_10
    new-array v2, v5, [Ljava/lang/Object;

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {v1, v2}, Le/p/a/y/j/u$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v13

    .line 37
    :pswitch_7
    iget-object v2, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    move-result v2

    and-int v13, v2, v9

    .line 38
    iget-object v2, v0, Le/p/a/y/j/u$a;->c:Le/p/a/y/j/q;

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v3}, Le/p/a/y/j/q;->a(I)Ljava/util/List;

    move-result-object v15

    and-int/lit8 v2, v7, 0x1

    if-eqz v2, :cond_11

    move v12, v5

    goto :goto_8

    :cond_11
    move v12, v1

    :goto_8
    const/4 v11, 0x0

    const/4 v14, -0x1

    .line 39
    sget-object v16, Le/p/a/y/j/m;->b:Le/p/a/y/j/m;

    move-object/from16 v10, p1

    check-cast v10, Le/p/a/y/j/d$e;

    invoke-virtual/range {v10 .. v16}, Le/p/a/y/j/d$e;->d(ZZIILjava/util/List;Le/p/a/y/j/m;)V

    return v5

    .line 40
    :pswitch_8
    iget-object v2, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readInt()I

    move-result v2

    .line 41
    iget-object v4, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v4}, Lv3/h;->readInt()I

    move-result v4

    and-int v13, v2, v9

    and-int v14, v4, v9

    .line 42
    iget-object v2, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    invoke-interface {v2}, Lv3/h;->readShort()S

    .line 43
    iget-object v2, v0, Le/p/a/y/j/u$a;->c:Le/p/a/y/j/q;

    add-int/lit8 v3, v3, -0xa

    invoke-virtual {v2, v3}, Le/p/a/y/j/q;->a(I)Ljava/util/List;

    move-result-object v15

    and-int/lit8 v2, v7, 0x1

    if-eqz v2, :cond_12

    move v12, v5

    goto :goto_9

    :cond_12
    move v12, v1

    :goto_9
    and-int/lit8 v2, v7, 0x2

    if-eqz v2, :cond_13

    move v11, v5

    goto :goto_a

    :cond_13
    move v11, v1

    .line 44
    :goto_a
    sget-object v16, Le/p/a/y/j/m;->a:Le/p/a/y/j/m;

    move-object/from16 v10, p1

    check-cast v10, Le/p/a/y/j/d$e;

    invoke-virtual/range {v10 .. v16}, Le/p/a/y/j/d$e;->d(ZZIILjava/util/List;Le/p/a/y/j/m;)V

    return v5

    .line 45
    :cond_14
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "version != 3: "

    invoke-static {v2, v4}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    and-int/2addr v2, v9

    and-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_16

    move v1, v5

    .line 46
    :cond_16
    iget-object v4, v0, Le/p/a/y/j/u$a;->a:Lv3/h;

    move-object/from16 v6, p1

    check-cast v6, Le/p/a/y/j/d$e;

    invoke-virtual {v6, v1, v2, v4, v3}, Le/p/a/y/j/d$e;->b(ZILv3/h;I)V

    return v5

    :catch_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public V()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/j/u$a;->c:Le/p/a/y/j/q;

    .line 2
    iget-object v0, v0, Le/p/a/y/j/q;->c:Lv3/h;

    invoke-interface {v0}, Lv3/b0;->close()V

    return-void
.end method
