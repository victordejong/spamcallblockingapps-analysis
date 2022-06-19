.class public final Lp3/b/b/a/a/a;
.super Lp3/b/c/z/a;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "X-Cloud-Trace-Context"

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lp3/b/b/a/a/a;->a:Ljava/util/List;

    .line 2
    new-instance v0, Lp3/b/c/w$b;

    .line 3
    sget-object v1, Lp3/b/c/w$b;->b:Lp3/b/c/w;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v0, v1, v2}, Lp3/b/c/w$b;-><init>(Lp3/b/c/w;Lp3/b/c/w$a;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/b/c/z/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/b/c/p;Ljava/lang/Object;Lp3/b/c/z/a$a;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/b/c/p;",
            "TC;",
            "Lp3/b/c/z/a$a<",
            "TC;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "spanContext"

    .line 1
    invoke-static {v0, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "setter"

    move-object/from16 v3, p3

    .line 2
    invoke-static {v3, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "carrier"

    .line 3
    invoke-static {v1, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v3, v0, Lp3/b/c/p;->a:Lp3/b/c/t;

    .line 6
    invoke-virtual {v3}, Lp3/b/c/t;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    iget-object v3, v0, Lp3/b/c/p;->b:Lp3/b/c/q;

    const/16 v4, 0x8

    .line 9
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    new-array v6, v4, [B

    .line 10
    iget-wide v7, v3, Lp3/b/c/q;->a:J

    .line 11
    sget-object v3, Lp3/b/c/h;->a:[C

    const-wide/16 v9, 0xff

    and-long v11, v7, v9

    long-to-int v3, v11

    int-to-byte v3, v3

    const/4 v11, 0x7

    aput-byte v3, v6, v11

    shr-long v3, v7, v4

    and-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v6, v4

    const/16 v3, 0x10

    shr-long v3, v7, v3

    and-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x5

    aput-byte v3, v6, v4

    const/16 v3, 0x18

    shr-long v11, v7, v3

    and-long/2addr v11, v9

    long-to-int v3, v11

    int-to-byte v3, v3

    const/4 v11, 0x4

    aput-byte v3, v6, v11

    const/16 v3, 0x20

    shr-long v11, v7, v3

    and-long/2addr v11, v9

    long-to-int v3, v11

    int-to-byte v3, v3

    const/4 v11, 0x3

    aput-byte v3, v6, v11

    const/16 v3, 0x28

    shr-long v11, v7, v3

    and-long/2addr v11, v9

    long-to-int v3, v11

    int-to-byte v3, v3

    const/4 v11, 0x2

    aput-byte v3, v6, v11

    const/16 v3, 0x30

    shr-long v11, v7, v3

    and-long/2addr v11, v9

    long-to-int v3, v11

    int-to-byte v3, v3

    const/4 v11, 0x1

    aput-byte v3, v6, v11

    const/16 v3, 0x38

    shr-long/2addr v7, v3

    and-long/2addr v7, v9

    long-to-int v3, v7

    int-to-byte v3, v3

    const/4 v7, 0x0

    aput-byte v3, v6, v7

    .line 12
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    const-string v3, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    const/16 v7, 0xa

    .line 14
    invoke-static {v11, v3, v7}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;I)V

    const-wide/16 v8, 0x0

    cmp-long v3, v5, v8

    const-string v10, "0"

    if-nez v3, :cond_0

    move-object v3, v10

    goto :goto_1

    :cond_0
    if-lez v3, :cond_1

    .line 15
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/16 v3, 0x40

    new-array v3, v3, [C

    ushr-long v11, v5, v11

    int-to-long v13, v4

    .line 16
    div-long/2addr v11, v13

    int-to-long v13, v7

    mul-long v15, v11, v13

    sub-long/2addr v5, v15

    const/16 v4, 0x3f

    long-to-int v5, v5

    .line 17
    invoke-static {v5, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    aput-char v5, v3, v4

    :goto_0
    cmp-long v5, v11, v8

    if-lez v5, :cond_2

    add-int/lit8 v4, v4, -0x1

    .line 18
    rem-long v5, v11, v13

    long-to-int v5, v5

    invoke-static {v5, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    aput-char v5, v3, v4

    .line 19
    div-long/2addr v11, v13

    goto :goto_0

    .line 20
    :cond_2
    new-instance v5, Ljava/lang/String;

    rsub-int/lit8 v6, v4, 0x40

    invoke-direct {v5, v3, v4, v6}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v5

    .line 21
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";o="

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v0, v0, Lp3/b/c/p;->c:Lp3/b/c/u;

    .line 24
    invoke-virtual {v0}, Lp3/b/c/u;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v10, "1"

    :cond_3
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    check-cast v1, Le/m/b/x/b/k;

    const-string v2, "X-Cloud-Trace-Context"

    .line 27
    invoke-virtual {v1, v2, v0}, Le/m/b/x/b/k;->s(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/b/k;

    return-void
.end method
