.class public Ln3/y/e/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;


# instance fields
.field public final a:B

.field public final b:B

.field public final c:B


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    const-string v0, "RCL"

    const-string v1, "BS"

    const-string v2, "AOF"

    const-string v3, "AON"

    const-string v4, "DER"

    const-string v5, "RU2"

    const-string v6, "RU3"

    const-string v7, "RU4"

    const-string v8, "FON"

    const-string v9, "RDC"

    const-string v10, "TR"

    const-string v11, "RTD"

    const-string v12, "EDM"

    const-string v13, "CR"

    const-string v14, "ENM"

    const-string v15, "EOC"

    .line 1
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/y/e/b$a;->d:[Ljava/lang/String;

    const-string v1, "\u00ae"

    const-string v2, "\u00b0"

    const-string v3, "\u00bd"

    const-string v4, "\u00bf"

    const-string v5, "\u2122"

    const-string v6, "\u00a2"

    const-string v7, "\u00a3"

    const-string v8, "\u266a"

    const-string v9, "\u00e0"

    const-string v10, "\u00a0"

    const-string v11, "\u00e8"

    const-string v12, "\u00e2"

    const-string v13, "\u00ea"

    const-string v14, "\u00ee"

    const-string v15, "\u00f4"

    const-string v16, "\u00fb"

    .line 2
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/y/e/b$a;->e:[Ljava/lang/String;

    const-string v1, "\u00c1"

    const-string v2, "\u00c9"

    const-string v3, "\u00d3"

    const-string v4, "\u00da"

    const-string v5, "\u00dc"

    const-string v6, "\u00fc"

    const-string v7, "\u2018"

    const-string v8, "\u00a1"

    const-string v9, "*"

    const-string v10, "\'"

    const-string v11, "\u2014"

    const-string v12, "\u00a9"

    const-string v13, "\u2120"

    const-string v14, "\u2022"

    const-string v15, "\u201c"

    const-string v16, "\u201d"

    const-string v17, "\u00c0"

    const-string v18, "\u00c2"

    const-string v19, "\u00c7"

    const-string v20, "\u00c8"

    const-string v21, "\u00ca"

    const-string v22, "\u00cb"

    const-string v23, "\u00eb"

    const-string v24, "\u00ce"

    const-string v25, "\u00cf"

    const-string v26, "\u00ef"

    const-string v27, "\u00d4"

    const-string v28, "\u00d9"

    const-string v29, "\u00f9"

    const-string v30, "\u00db"

    const-string v31, "\u00ab"

    const-string v32, "\u00bb"

    .line 3
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/y/e/b$a;->f:[Ljava/lang/String;

    const-string v1, "\u00c3"

    const-string v2, "\u00e3"

    const-string v3, "\u00cd"

    const-string v4, "\u00cc"

    const-string v5, "\u00ec"

    const-string v6, "\u00d2"

    const-string v7, "\u00f2"

    const-string v8, "\u00d5"

    const-string v9, "\u00f5"

    const-string v10, "{"

    const-string v11, "}"

    const-string v12, "\\"

    const-string v13, "^"

    const-string v14, "_"

    const-string v15, "|"

    const-string v16, "~"

    const-string v17, "\u00c4"

    const-string v18, "\u00e4"

    const-string v19, "\u00d6"

    const-string v20, "\u00f6"

    const-string v21, "\u00df"

    const-string v22, "\u00a5"

    const-string v23, "\u00a4"

    const-string v24, "\u2502"

    const-string v25, "\u00c5"

    const-string v26, "\u00e5"

    const-string v27, "\u00d8"

    const-string v28, "\u00f8"

    const-string v29, "\u250c"

    const-string v30, "\u2510"

    const-string v31, "\u2514"

    const-string v32, "\u2518"

    .line 4
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/y/e/b$a;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(BBB)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte p1, p0, Ln3/y/e/b$a;->a:B

    .line 3
    iput-byte p2, p0, Ln3/y/e/b$a;->b:B

    .line 4
    iput-byte p3, p0, Ln3/y/e/b$a;->c:B

    return-void
.end method


# virtual methods
.method public final a(B)C
    .locals 1

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    int-to-char p1, p1

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x2588

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xf1

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xd1

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xf7

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xe7

    goto :goto_0

    :pswitch_5
    const/16 p1, 0xfa

    goto :goto_0

    :pswitch_6
    const/16 p1, 0xf3

    goto :goto_0

    :pswitch_7
    const/16 p1, 0xed

    goto :goto_0

    :cond_0
    const/16 p1, 0xe9

    goto :goto_0

    :cond_1
    const/16 p1, 0xe1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 2

    .line 1
    iget-byte v0, p0, Ln3/y/e/b$a;->b:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Ln3/y/e/b$a;->c:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .line 1
    iget-byte v0, p0, Ln3/y/e/b$a;->b:B

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    iget-byte v4, p0, Ln3/y/e/b$a;->b:B

    invoke-virtual {p0, v4}, Ln3/y/e/b$a;->a(B)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-byte v4, p0, Ln3/y/e/b$a;->c:B

    if-lt v4, v1, :cond_0

    if-gt v4, v3, :cond_0

    .line 5
    invoke-virtual {p0, v4}, Ln3/y/e/b$a;->a(B)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_9

    .line 7
    iget-byte v0, p0, Ln3/y/e/b$a;->b:B

    const/16 v3, 0x11

    const/16 v4, 0x3f

    if-eq v0, v3, :cond_2

    const/16 v3, 0x19

    if-ne v0, v3, :cond_3

    :cond_2
    iget-byte v3, p0, Ln3/y/e/b$a;->c:B

    const/16 v5, 0x30

    if-lt v3, v5, :cond_3

    if-gt v3, v4, :cond_3

    .line 8
    sget-object v6, Ln3/y/e/b$a;->e:[Ljava/lang/String;

    sub-int/2addr v3, v5

    aget-object v3, v6, v3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_8

    const/16 v3, 0x12

    if-eq v0, v3, :cond_4

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_5

    .line 9
    :cond_4
    iget-byte v3, p0, Ln3/y/e/b$a;->c:B

    if-lt v3, v1, :cond_5

    if-gt v3, v4, :cond_5

    .line 10
    sget-object v0, Ln3/y/e/b$a;->f:[Ljava/lang/String;

    sub-int/2addr v3, v1

    aget-object v2, v0, v3

    goto :goto_2

    :cond_5
    const/16 v3, 0x13

    if-eq v0, v3, :cond_6

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_7

    .line 11
    :cond_6
    iget-byte v0, p0, Ln3/y/e/b$a;->c:B

    if-lt v0, v1, :cond_7

    if-gt v0, v4, :cond_7

    .line 12
    sget-object v2, Ln3/y/e/b$a;->g:[Ljava/lang/String;

    sub-int/2addr v0, v1

    aget-object v2, v2, v0

    :cond_7
    :goto_2
    move-object v0, v2

    goto :goto_3

    :cond_8
    move-object v0, v3

    :cond_9
    :goto_3
    return-object v0
.end method

.method public d()Ln3/y/e/b$g;
    .locals 4

    .line 1
    iget-byte v0, p0, Ln3/y/e/b$a;->b:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_3

    :cond_0
    iget-byte v0, p0, Ln3/y/e/b$a;->c:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_3

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_3

    shr-int/lit8 v1, v0, 0x1

    const/4 v2, 0x7

    and-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-ne v1, v2, :cond_2

    or-int/lit8 v0, v0, 0x1

    move v1, v3

    .line 2
    :cond_2
    new-instance v2, Ln3/y/e/b$g;

    invoke-direct {v2, v0, v1}, Ln3/y/e/b$g;-><init>(II)V

    return-object v2

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ln3/y/e/b$f;
    .locals 6

    .line 1
    iget-byte v0, p0, Ln3/y/e/b$a;->b:B

    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    iget-byte v1, p0, Ln3/y/e/b$a;->c:B

    and-int/lit8 v2, v1, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_4

    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_4

    :cond_0
    const/16 v2, 0x8

    new-array v2, v2, [I

    .line 2
    fill-array-data v2, :array_0

    const/4 v3, 0x7

    and-int/2addr v0, v3

    .line 3
    aget v0, v2, v0

    and-int/lit8 v2, v1, 0x20

    shr-int/lit8 v2, v2, 0x5

    add-int/2addr v0, v2

    and-int/lit8 v2, v1, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_2

    shr-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v3

    .line 4
    new-instance v3, Ln3/y/e/b$f;

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v3, v0, v1, v2, v4}, Ln3/y/e/b$f;-><init>(IIII)V

    goto :goto_2

    :cond_2
    shr-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    or-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v4, v1

    .line 5
    :goto_1
    new-instance v3, Ln3/y/e/b$f;

    const/4 v1, -0x1

    invoke-direct {v3, v0, v1, v2, v4}, Ln3/y/e/b$f;-><init>(IIII)V

    :goto_2
    return-object v3

    :cond_4
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data
.end method

.method public f()I
    .locals 2

    .line 1
    iget-byte v0, p0, Ln3/y/e/b$a;->b:B

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Ln3/y/e/b$a;->c:B

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    const/16 v1, 0x23

    if-gt v0, v1, :cond_1

    and-int/lit8 v0, v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Ln3/y/e/b$a;->b:B

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_4

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-ne v0, v1, :cond_2

    .line 2
    :cond_1
    iget-byte v0, p0, Ln3/y/e/b$a;->c:B

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-nez v0, :cond_4

    .line 3
    invoke-virtual {p0}, Ln3/y/e/b$a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    return v2
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Ln3/y/e/b$a;->b:B

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Ln3/y/e/b$a;->c:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-byte v0, p0, Ln3/y/e/b$a;->b:B

    const/16 v1, 0x10

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Ln3/y/e/b$a;->c:B

    if-ge v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    iget-byte v1, p0, Ln3/y/e/b$a;->a:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    iget-byte v1, p0, Ln3/y/e/b$a;->b:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte v1, p0, Ln3/y/e/b$a;->c:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "[%d]Null: %02x %02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ln3/y/e/b$a;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-array v1, v5, [Ljava/lang/Object;

    .line 4
    iget-byte v2, p0, Ln3/y/e/b$a;->a:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    .line 5
    sget-object v2, Ln3/y/e/b$a;->d:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x20

    aget-object v0, v2, v0

    aput-object v0, v1, v3

    const-string v0, "[%d]%s"

    .line 6
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ln3/y/e/b$a;->f()I

    move-result v0

    if-lez v0, :cond_2

    new-array v1, v5, [Ljava/lang/Object;

    .line 8
    iget-byte v2, p0, Ln3/y/e/b$a;->a:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "[%d]Tab%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_2
    invoke-virtual {p0}, Ln3/y/e/b$a;->e()Ln3/y/e/b$f;

    move-result-object v0

    if-eqz v0, :cond_3

    new-array v1, v5, [Ljava/lang/Object;

    .line 10
    iget-byte v2, p0, Ln3/y/e/b$a;->a:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0}, Ln3/y/e/b$f;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "[%d]PAC: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_3
    invoke-virtual {p0}, Ln3/y/e/b$a;->d()Ln3/y/e/b$g;

    move-result-object v0

    if-eqz v0, :cond_4

    new-array v1, v5, [Ljava/lang/Object;

    .line 12
    iget-byte v2, p0, Ln3/y/e/b$a;->a:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0}, Ln3/y/e/b$g;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "[%d]Mid-row: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13
    :cond_4
    invoke-virtual {p0}, Ln3/y/e/b$a;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    iget-byte v1, p0, Ln3/y/e/b$a;->a:B

    .line 15
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Ln3/y/e/b$a;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte v1, p0, Ln3/y/e/b$a;->b:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    iget-byte v1, p0, Ln3/y/e/b$a;->c:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "[%d]Displayable: %s (%02x %02x)"

    .line 16
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    new-array v0, v2, [Ljava/lang/Object;

    .line 17
    iget-byte v1, p0, Ln3/y/e/b$a;->a:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    iget-byte v1, p0, Ln3/y/e/b$a;->b:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v3

    iget-byte v1, p0, Ln3/y/e/b$a;->c:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "[%d]Invalid: %02x %02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
