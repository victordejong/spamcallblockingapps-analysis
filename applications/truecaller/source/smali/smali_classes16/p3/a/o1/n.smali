.class public Lp3/a/o1/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lp3/a/o1/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)[[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp3/a/o1/o/m/d;",
            ">;)[[B"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [[B

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp3/a/o1/o/m/d;

    add-int/lit8 v5, v3, 0x1

    .line 3
    iget-object v6, v4, Lp3/a/o1/o/m/d;->a:Lv3/i;

    invoke-virtual {v6}, Lv3/i;->q()[B

    move-result-object v6

    aput-object v6, v1, v3

    add-int/lit8 v3, v5, 0x1

    .line 4
    iget-object v4, v4, Lp3/a/o1/o/m/d;->b:Lv3/i;

    invoke-virtual {v4}, Lv3/i;->q()[B

    move-result-object v4

    aput-object v4, v1, v5

    goto :goto_0

    .line 5
    :cond_0
    sget-object p0, Lp3/a/n1/v2;->a:Ljava/util/logging/Logger;

    move p0, v2

    :goto_1
    if-ge p0, v0, :cond_9

    .line 6
    aget-object v3, v1, p0

    add-int/lit8 v4, p0, 0x1

    .line 7
    aget-object v5, v1, v4

    .line 8
    sget-object v6, Lp3/a/n1/v2;->b:[B

    invoke-static {v3, v6}, Lp3/a/n1/v2;->a([B[B)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v2

    .line 9
    :goto_2
    array-length v6, v5

    if-ge v3, v6, :cond_7

    .line 10
    aget-byte v6, v5, v3

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_6

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0xa

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v2

    :goto_3
    if-ge v4, p0, :cond_1

    .line 12
    aget-object v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    :goto_4
    if-ge p0, v0, :cond_5

    .line 13
    aget-object v4, v1, p0

    add-int/lit8 v5, p0, 0x1

    .line 14
    aget-object v5, v1, v5

    .line 15
    sget-object v6, Lp3/a/n1/v2;->b:[B

    invoke-static {v4, v6}, Lp3/a/n1/v2;->a([B[B)Z

    move-result v6

    if-nez v6, :cond_2

    .line 16
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_2
    move v6, v2

    move v8, v6

    .line 18
    :goto_5
    array-length v9, v5

    if-gt v6, v9, :cond_4

    .line 19
    array-length v9, v5

    if-eq v6, v9, :cond_3

    aget-byte v9, v5, v6

    if-eq v9, v7, :cond_3

    goto :goto_6

    .line 20
    :cond_3
    sget-object v9, Lcom/google/common/io/BaseEncoding;->BASE64:Lcom/google/common/io/BaseEncoding;

    .line 21
    new-instance v10, Ljava/lang/String;

    sub-int v11, v6, v8

    sget-object v12, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v10, v5, v8, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v9, v10}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v8

    add-int/lit8 v9, v6, 0x1

    .line 22
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    :goto_7
    add-int/lit8 p0, p0, 0x2

    goto :goto_4

    :cond_5
    new-array p0, v2, [[B

    .line 24
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [[B

    goto :goto_8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 25
    :cond_7
    sget-object v3, Lcom/google/common/io/BaseEncoding;->BASE64:Lcom/google/common/io/BaseEncoding;

    .line 26
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v6}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v3

    .line 27
    aput-object v3, v1, v4

    :cond_8
    add-int/lit8 p0, p0, 0x2

    goto/16 :goto_1

    :cond_9
    :goto_8
    return-object v1
.end method
