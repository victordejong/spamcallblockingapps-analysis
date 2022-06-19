.class public Lp3/a/n1/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/s0$c;,
        Lp3/a/n1/s0$b;
    }
.end annotation


# instance fields
.field public final a:Lp3/a/n1/w;

.field public final b:Ljava/util/zip/CRC32;

.field public final c:Lp3/a/n1/s0$b;

.field public final d:[B

.field public e:I

.field public f:I

.field public g:Ljava/util/zip/Inflater;

.field public h:Lp3/a/n1/s0$c;

.field public i:Z

.field public j:I

.field public k:I

.field public l:J

.field public m:I

.field public n:I

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lp3/a/n1/w;

    invoke-direct {v0}, Lp3/a/n1/w;-><init>()V

    iput-object v0, p0, Lp3/a/n1/s0;->a:Lp3/a/n1/w;

    .line 3
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lp3/a/n1/s0;->b:Ljava/util/zip/CRC32;

    .line 4
    new-instance v0, Lp3/a/n1/s0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lp3/a/n1/s0$b;-><init>(Lp3/a/n1/s0;Lp3/a/n1/s0$a;)V

    iput-object v0, p0, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lp3/a/n1/s0;->d:[B

    .line 6
    sget-object v0, Lp3/a/n1/s0$c;->a:Lp3/a/n1/s0$c;

    iput-object v0, p0, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lp3/a/n1/s0;->i:Z

    .line 8
    iput v0, p0, Lp3/a/n1/s0;->m:I

    .line 9
    iput v0, p0, Lp3/a/n1/s0;->n:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lp3/a/n1/s0;->o:Z

    return-void
.end method


# virtual methods
.method public b([BII)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p1

    .line 1
    sget-object v2, Lp3/a/n1/s0$c;->j:Lp3/a/n1/s0$c;

    sget-object v3, Lp3/a/n1/s0$c;->h:Lp3/a/n1/s0$c;

    sget-object v4, Lp3/a/n1/s0$c;->i:Lp3/a/n1/s0$c;

    sget-object v5, Lp3/a/n1/s0$c;->d:Lp3/a/n1/s0$c;

    iget-boolean v6, v1, Lp3/a/n1/s0;->i:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    const-string v8, "GzipInflatingBuffer is closed"

    invoke-static {v6, v8}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const/4 v6, 0x0

    move v8, v6

    :cond_0
    :goto_0
    move v9, v7

    :goto_1
    const/16 v10, 0xa

    if-eqz v9, :cond_16

    sub-int v11, p3, v8

    if-lez v11, :cond_16

    .line 2
    iget-object v9, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const-string v12, "inflater is null"

    const/4 v13, 0x2

    const/16 v14, 0x8

    packed-switch v9, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "Invalid state: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lp3/a/n1/s0;->d()Z

    move-result v9

    goto :goto_1

    .line 5
    :pswitch_1
    iget-object v9, v1, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    if-eqz v9, :cond_1

    move v9, v7

    goto :goto_2

    :cond_1
    move v9, v6

    :goto_2
    invoke-static {v9, v12}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 6
    iget v9, v1, Lp3/a/n1/s0;->e:I

    iget v10, v1, Lp3/a/n1/s0;->f:I

    if-ne v9, v10, :cond_2

    move v9, v7

    goto :goto_3

    :cond_2
    move v9, v6

    :goto_3
    const-string v10, "inflaterInput has unconsumed bytes"

    invoke-static {v9, v10}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 7
    iget-object v9, v1, Lp3/a/n1/s0;->a:Lp3/a/n1/w;

    .line 8
    iget v9, v9, Lp3/a/n1/w;->a:I

    const/16 v10, 0x200

    .line 9
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_7

    .line 10
    :cond_3
    iput v6, v1, Lp3/a/n1/s0;->e:I

    .line 11
    iput v9, v1, Lp3/a/n1/s0;->f:I

    .line 12
    iget-object v10, v1, Lp3/a/n1/s0;->a:Lp3/a/n1/w;

    iget-object v11, v1, Lp3/a/n1/s0;->d:[B

    .line 13
    sget-object v12, Lp3/a/n1/w;->e:Lp3/a/n1/w$f;

    invoke-virtual {v10, v12, v9, v11, v6}, Lp3/a/n1/w;->l(Lp3/a/n1/w$f;ILjava/lang/Object;I)I

    .line 14
    iget-object v10, v1, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    iget-object v11, v1, Lp3/a/n1/s0;->d:[B

    iget v12, v1, Lp3/a/n1/s0;->e:I

    invoke-virtual {v10, v11, v12, v9}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 15
    iput-object v3, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto :goto_0

    :pswitch_2
    add-int v9, p2, v8

    .line 16
    iget-object v10, v1, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    if-eqz v10, :cond_4

    move v10, v7

    goto :goto_4

    :cond_4
    move v10, v6

    :goto_4
    invoke-static {v10, v12}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 17
    :try_start_0
    iget-object v10, v1, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v10}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v10

    .line 18
    iget-object v12, v1, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v12, v0, v9, v11}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v11

    .line 19
    iget-object v12, v1, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v12}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v12

    sub-int/2addr v12, v10

    .line 20
    iget v10, v1, Lp3/a/n1/s0;->m:I

    add-int/2addr v10, v12

    iput v10, v1, Lp3/a/n1/s0;->m:I

    .line 21
    iget v10, v1, Lp3/a/n1/s0;->n:I

    add-int/2addr v10, v12

    iput v10, v1, Lp3/a/n1/s0;->n:I

    .line 22
    iget v10, v1, Lp3/a/n1/s0;->e:I

    add-int/2addr v10, v12

    iput v10, v1, Lp3/a/n1/s0;->e:I

    .line 23
    iget-object v10, v1, Lp3/a/n1/s0;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v10, v0, v9, v11}, Ljava/util/zip/CRC32;->update([BII)V

    .line 24
    iget-object v9, v1, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v9}, Ljava/util/zip/Inflater;->finished()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 25
    iget-object v9, v1, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v9}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v9

    const-wide v12, 0xffffffffL

    and-long/2addr v9, v12

    iput-wide v9, v1, Lp3/a/n1/s0;->l:J

    .line 26
    iput-object v2, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto :goto_5

    .line 27
    :cond_5
    iget-object v9, v1, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v9}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 28
    iput-object v4, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_5
    add-int/2addr v8, v11

    .line 29
    iget-object v9, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    if-ne v9, v2, :cond_0

    .line 30
    invoke-virtual {p0}, Lp3/a/n1/s0;->d()Z

    move-result v9

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 31
    new-instance v2, Ljava/util/zip/DataFormatException;

    const-string v3, "Inflater data format exception: "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 32
    :pswitch_3
    iget-object v9, v1, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    if-nez v9, :cond_7

    .line 33
    new-instance v9, Ljava/util/zip/Inflater;

    invoke-direct {v9, v7}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v9, v1, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    goto :goto_6

    .line 34
    :cond_7
    invoke-virtual {v9}, Ljava/util/zip/Inflater;->reset()V

    .line 35
    :goto_6
    iget-object v9, v1, Lp3/a/n1/s0;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->reset()V

    .line 36
    iget v9, v1, Lp3/a/n1/s0;->f:I

    iget v10, v1, Lp3/a/n1/s0;->e:I

    sub-int/2addr v9, v10

    if-lez v9, :cond_8

    .line 37
    iget-object v11, v1, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    iget-object v12, v1, Lp3/a/n1/s0;->d:[B

    invoke-virtual {v11, v12, v10, v9}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 38
    iput-object v3, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto/16 :goto_0

    .line 39
    :cond_8
    iput-object v4, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto/16 :goto_0

    .line 40
    :pswitch_4
    sget-object v9, Lp3/a/n1/s0$c;->g:Lp3/a/n1/s0$c;

    iget v10, v1, Lp3/a/n1/s0;->j:I

    and-int/2addr v10, v13

    if-eq v10, v13, :cond_9

    .line 41
    iput-object v9, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto/16 :goto_0

    .line 42
    :cond_9
    iget-object v10, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    invoke-static {v10}, Lp3/a/n1/s0$b;->c(Lp3/a/n1/s0$b;)I

    move-result v10

    if-ge v10, v13, :cond_a

    goto/16 :goto_7

    .line 43
    :cond_a
    iget-object v10, v1, Lp3/a/n1/s0;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    long-to-int v10, v10

    const v11, 0xffff

    and-int/2addr v10, v11

    .line 44
    iget-object v11, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    .line 45
    invoke-virtual {v11}, Lp3/a/n1/s0$b;->e()I

    move-result v11

    if-ne v10, v11, :cond_b

    .line 46
    iput-object v9, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto/16 :goto_0

    .line 47
    :cond_b
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v2, "Corrupt GZIP header"

    invoke-direct {v0, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_5
    sget-object v9, Lp3/a/n1/s0$c;->f:Lp3/a/n1/s0$c;

    iget v10, v1, Lp3/a/n1/s0;->j:I

    const/16 v11, 0x10

    and-int/2addr v10, v11

    if-eq v10, v11, :cond_c

    .line 49
    iput-object v9, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto/16 :goto_0

    .line 50
    :cond_c
    iget-object v10, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    invoke-static {v10}, Lp3/a/n1/s0$b;->b(Lp3/a/n1/s0$b;)Z

    move-result v10

    if-nez v10, :cond_d

    goto :goto_7

    .line 51
    :cond_d
    iput-object v9, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto/16 :goto_0

    .line 52
    :pswitch_6
    sget-object v9, Lp3/a/n1/s0$c;->e:Lp3/a/n1/s0$c;

    iget v10, v1, Lp3/a/n1/s0;->j:I

    and-int/2addr v10, v14

    if-eq v10, v14, :cond_e

    .line 53
    iput-object v9, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto/16 :goto_0

    .line 54
    :cond_e
    iget-object v10, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    invoke-static {v10}, Lp3/a/n1/s0$b;->b(Lp3/a/n1/s0$b;)Z

    move-result v10

    if-nez v10, :cond_f

    goto :goto_7

    .line 55
    :cond_f
    iput-object v9, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto/16 :goto_0

    .line 56
    :pswitch_7
    iget-object v9, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    invoke-static {v9}, Lp3/a/n1/s0$b;->c(Lp3/a/n1/s0$b;)I

    move-result v9

    iget v10, v1, Lp3/a/n1/s0;->k:I

    if-ge v9, v10, :cond_10

    goto :goto_7

    .line 57
    :cond_10
    iget-object v9, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    invoke-static {v9, v10}, Lp3/a/n1/s0$b;->a(Lp3/a/n1/s0$b;I)V

    .line 58
    iput-object v5, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto/16 :goto_0

    .line 59
    :pswitch_8
    iget v9, v1, Lp3/a/n1/s0;->j:I

    const/4 v10, 0x4

    and-int/2addr v9, v10

    if-eq v9, v10, :cond_11

    .line 60
    iput-object v5, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto/16 :goto_0

    .line 61
    :cond_11
    iget-object v9, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    invoke-static {v9}, Lp3/a/n1/s0$b;->c(Lp3/a/n1/s0$b;)I

    move-result v9

    if-ge v9, v13, :cond_12

    goto :goto_7

    .line 62
    :cond_12
    iget-object v9, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    .line 63
    invoke-virtual {v9}, Lp3/a/n1/s0$b;->e()I

    move-result v9

    .line 64
    iput v9, v1, Lp3/a/n1/s0;->k:I

    .line 65
    sget-object v9, Lp3/a/n1/s0$c;->c:Lp3/a/n1/s0$c;

    iput-object v9, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto/16 :goto_0

    .line 66
    :pswitch_9
    iget-object v9, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    invoke-static {v9}, Lp3/a/n1/s0$b;->c(Lp3/a/n1/s0$b;)I

    move-result v9

    if-ge v9, v10, :cond_13

    :goto_7
    move v9, v6

    goto/16 :goto_1

    .line 67
    :cond_13
    iget-object v9, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    .line 68
    invoke-virtual {v9}, Lp3/a/n1/s0$b;->e()I

    move-result v9

    const v10, 0x8b1f

    if-ne v9, v10, :cond_15

    .line 69
    iget-object v9, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    .line 70
    invoke-virtual {v9}, Lp3/a/n1/s0$b;->d()I

    move-result v9

    if-ne v9, v14, :cond_14

    .line 71
    iget-object v9, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    .line 72
    invoke-virtual {v9}, Lp3/a/n1/s0$b;->d()I

    move-result v9

    .line 73
    iput v9, v1, Lp3/a/n1/s0;->j:I

    .line 74
    iget-object v9, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    const/4 v10, 0x6

    invoke-static {v9, v10}, Lp3/a/n1/s0$b;->a(Lp3/a/n1/s0$b;I)V

    .line 75
    sget-object v9, Lp3/a/n1/s0$c;->b:Lp3/a/n1/s0$c;

    iput-object v9, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    goto/16 :goto_0

    .line 76
    :cond_14
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v2, "Unsupported compression method"

    invoke-direct {v0, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_15
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v2, "Not in GZIP format"

    invoke-direct {v0, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    if-eqz v9, :cond_18

    .line 78
    iget-object v0, v1, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    sget-object v2, Lp3/a/n1/s0$c;->a:Lp3/a/n1/s0$c;

    if-ne v0, v2, :cond_17

    iget-object v0, v1, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    .line 79
    invoke-static {v0}, Lp3/a/n1/s0$b;->c(Lp3/a/n1/s0$b;)I

    move-result v0

    if-ge v0, v10, :cond_17

    goto :goto_8

    :cond_17
    move v7, v6

    :cond_18
    :goto_8
    iput-boolean v7, v1, Lp3/a/n1/s0;->o:Z

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/s0;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp3/a/n1/s0;->i:Z

    .line 3
    iget-object v0, p0, Lp3/a/n1/s0;->a:Lp3/a/n1/w;

    invoke-virtual {v0}, Lp3/a/n1/w;->close()V

    .line 4
    iget-object v0, p0, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    .line 2
    invoke-static {v0}, Lp3/a/n1/s0$b;->c(Lp3/a/n1/s0$b;)I

    move-result v0

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lp3/a/n1/s0;->g:Ljava/util/zip/Inflater;

    .line 5
    :cond_0
    iget-object v0, p0, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    invoke-static {v0}, Lp3/a/n1/s0$b;->c(Lp3/a/n1/s0$b;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_1
    iget-object v0, p0, Lp3/a/n1/s0;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    iget-object v2, p0, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    .line 7
    invoke-virtual {v2}, Lp3/a/n1/s0$b;->e()I

    move-result v3

    int-to-long v3, v3

    .line 8
    invoke-virtual {v2}, Lp3/a/n1/s0$b;->e()I

    move-result v2

    int-to-long v5, v2

    const/16 v2, 0x10

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    .line 9
    iget-wide v0, p0, Lp3/a/n1/s0;->l:J

    iget-object v3, p0, Lp3/a/n1/s0;->c:Lp3/a/n1/s0$b;

    .line 10
    invoke-virtual {v3}, Lp3/a/n1/s0$b;->e()I

    move-result v4

    int-to-long v4, v4

    .line 11
    invoke-virtual {v3}, Lp3/a/n1/s0$b;->e()I

    move-result v3

    int-to-long v6, v3

    shl-long v2, v6, v2

    or-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lp3/a/n1/s0;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 13
    sget-object v0, Lp3/a/n1/s0$c;->a:Lp3/a/n1/s0$c;

    iput-object v0, p0, Lp3/a/n1/s0;->h:Lp3/a/n1/s0$c;

    const/4 v0, 0x1

    return v0

    .line 14
    :cond_2
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Corrupt GZIP trailer"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
