.class public final Lorg/bson/types/Decimal128;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/bson/types/Decimal128;",
        ">;"
    }
.end annotation


# static fields
.field private static final h:Ljava/math/BigInteger;

.field private static final i:Ljava/math/BigInteger;

.field private static final j:Ljava/math/BigInteger;

.field private static final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lorg/bson/types/Decimal128;

.field public static final p:Lorg/bson/types/Decimal128;

.field public static final q:Lorg/bson/types/Decimal128;

.field public static final r:Lorg/bson/types/Decimal128;


# instance fields
.field private final f:J

.field private final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "10"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bson/types/Decimal128;->h:Ljava/math/BigInteger;

    .line 2
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bson/types/Decimal128;->i:Ljava/math/BigInteger;

    .line 3
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bson/types/Decimal128;->j:Ljava/math/BigInteger;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "nan"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/bson/types/Decimal128;->k:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "-nan"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/bson/types/Decimal128;->l:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "inf"

    const-string v2, "+inf"

    const-string v3, "infinity"

    const-string v4, "+infinity"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/bson/types/Decimal128;->m:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "-inf"

    const-string v2, "-infinity"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/bson/types/Decimal128;->n:Ljava/util/Set;

    const-wide/high16 v0, 0x7800000000000000L

    const-wide/16 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object v0

    sput-object v0, Lorg/bson/types/Decimal128;->o:Lorg/bson/types/Decimal128;

    const-wide/high16 v0, -0x800000000000000L

    .line 9
    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object v0

    sput-object v0, Lorg/bson/types/Decimal128;->p:Lorg/bson/types/Decimal128;

    const-wide/high16 v0, -0x400000000000000L    # -1.9490628022799998E289

    .line 10
    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object v0

    sput-object v0, Lorg/bson/types/Decimal128;->q:Lorg/bson/types/Decimal128;

    const-wide/high16 v0, 0x7c00000000000000L    # 1.9490628022799998E289

    .line 11
    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object v0

    sput-object v0, Lorg/bson/types/Decimal128;->r:Lorg/bson/types/Decimal128;

    const-wide/high16 v0, 0x3040000000000000L    # 2.7635739376302223E-76

    .line 12
    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    const-wide/high16 v0, -0x4fc0000000000000L    # -2.7635739376302223E-76

    .line 13
    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/bson/types/Decimal128;->f:J

    .line 3
    iput-wide p3, p0, Lorg/bson/types/Decimal128;->g:J

    return-void
.end method

.method private constructor <init>(Ljava/math/BigDecimal;Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    .line 5
    invoke-direct/range {p0 .. p1}, Lorg/bson/types/Decimal128;->d(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    neg-int v2, v2

    int-to-long v2, v2

    const-wide/16 v4, -0x1820

    cmp-long v6, v2, v4

    if-ltz v6, :cond_7

    const-wide/16 v4, 0x17df

    cmp-long v6, v2, v4

    if-gtz v6, :cond_7

    .line 7
    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/16 v5, 0x71

    if-gt v4, v5, :cond_6

    .line 8
    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    const/16 v11, 0x40

    .line 10
    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    const-wide/16 v13, 0x1

    if-ge v6, v12, :cond_1

    .line 11
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-eqz v11, :cond_0

    shl-long v11, v13, v6

    or-long/2addr v9, v11

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v11, v5, :cond_3

    .line 12
    invoke-virtual {v4, v11}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v6, v11, -0x40

    shl-long v15, v13, v6

    or-long v6, v7, v15

    move-wide v7, v6

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x1820

    add-long/2addr v2, v4

    const/16 v4, 0x31

    shl-long/2addr v2, v4

    or-long/2addr v2, v7

    .line 13
    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    const-wide/high16 v4, -0x8000000000000000L

    or-long/2addr v2, v4

    .line 14
    :cond_5
    iput-wide v2, v0, Lorg/bson/types/Decimal128;->f:J

    .line 15
    iput-wide v9, v0, Lorg/bson/types/Decimal128;->g:J

    return-void

    .line 16
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unscaled roundedValue is out of range for Decimal128 encoding:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 17
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exponent is out of range for Decimal128 encoding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private c()Ljava/math/BigDecimal;
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->m()I

    move-result v0

    neg-int v0, v0

    .line 2
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    .line 3
    invoke-static {v1, v2, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->k()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v1
.end method

.method private d(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    neg-int v0, v0

    const/16 v1, 0x17df

    if-le v0, v1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    neg-int v0, v0

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bson/types/Decimal128;->j:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p1

    const/16 v1, -0x17df

    invoke-direct {v0, p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x22

    if-gt v1, v2, :cond_1

    .line 6
    sget-object v1, Lorg/bson/types/Decimal128;->h:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {v2, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exponent is out of range for Decimal128 encoding of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    neg-int v0, v0

    const/16 v1, -0x1820

    if-ge v0, v1, :cond_4

    .line 10
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    add-int/2addr v0, v1

    .line 11
    invoke-direct {p0, p1, v0}, Lorg/bson/types/Decimal128;->j(Ljava/math/BigDecimal;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 12
    sget-object v1, Lorg/bson/types/Decimal128;->i:Ljava/math/BigInteger;

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/bson/types/Decimal128;->h:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 13
    :goto_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-direct {v2, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    :goto_1
    move-object v0, v2

    goto :goto_2

    .line 14
    :cond_4
    sget-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_5

    .line 16
    invoke-direct {p0, p1, v1}, Lorg/bson/types/Decimal128;->j(Ljava/math/BigDecimal;I)I

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;
    .locals 1

    .line 1
    new-instance v0, Lorg/bson/types/Decimal128;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bson/types/Decimal128;-><init>(JJ)V

    return-object v0
.end method

.method private j(Ljava/math/BigDecimal;I)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    const/4 p2, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    move v1, p2

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conversion to Decimal128 would require inexact rounding of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    return p2
.end method

.method private k()[B
    .locals 10

    const/16 v0, 0xf

    new-array v0, v0, [B

    const/16 v1, 0xe

    const-wide/16 v2, 0xff

    move-wide v4, v2

    :goto_0
    const/4 v6, 0x7

    const/16 v7, 0x8

    if-lt v1, v6, :cond_0

    .line 1
    iget-wide v8, p0, Lorg/bson/types/Decimal128;->g:J

    and-long/2addr v8, v4

    rsub-int/lit8 v6, v1, 0xe

    shl-int/lit8 v6, v6, 0x3

    ushr-long/2addr v8, v6

    long-to-int v6, v8

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    shl-long/2addr v4, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_1
    const/4 v4, 0x1

    if-lt v1, v4, :cond_1

    .line 2
    iget-wide v4, p0, Lorg/bson/types/Decimal128;->f:J

    and-long/2addr v4, v2

    rsub-int/lit8 v6, v1, 0x6

    shl-int/lit8 v6, v6, 0x3

    ushr-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    shl-long/2addr v2, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v1, 0x1000000000000L

    const/4 v3, 0x0

    .line 3
    iget-wide v4, p0, Lorg/bson/types/Decimal128;->f:J

    and-long/2addr v1, v4

    const/16 v4, 0x30

    ushr-long/2addr v1, v4

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v0, v3

    return-object v0
.end method

.method private m()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->f:J

    const-wide v2, 0x1fffe00000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x2f

    :goto_0
    ushr-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit16 v1, v1, -0x1820

    return v1

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->f:J

    const-wide v2, 0x7fff800000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x31

    goto :goto_0
.end method

.method private q(Ljava/math/BigDecimal;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private v(Ljava/math/BigDecimal;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->s()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static w(Ljava/lang/String;)Lorg/bson/types/Decimal128;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/bson/types/Decimal128;->k:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lorg/bson/types/Decimal128;->r:Lorg/bson/types/Decimal128;

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lorg/bson/types/Decimal128;->l:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object p0, Lorg/bson/types/Decimal128;->q:Lorg/bson/types/Decimal128;

    return-object p0

    .line 6
    :cond_1
    sget-object v1, Lorg/bson/types/Decimal128;->m:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    sget-object p0, Lorg/bson/types/Decimal128;->o:Lorg/bson/types/Decimal128;

    return-object p0

    .line 8
    :cond_2
    sget-object v1, Lorg/bson/types/Decimal128;->n:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    sget-object p0, Lorg/bson/types/Decimal128;->p:Lorg/bson/types/Decimal128;

    return-object p0

    .line 10
    :cond_3
    new-instance v0, Lorg/bson/types/Decimal128;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v3, 0x2d

    if-ne p0, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-direct {v0, v1, v2}, Lorg/bson/types/Decimal128;-><init>(Ljava/math/BigDecimal;Z)V

    return-object v0
.end method

.method private x()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->c()Ljava/math/BigDecimal;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2d

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    neg-int v1, v1

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    const/16 v5, 0x2e

    const/4 v6, 0x0

    if-gtz v1, :cond_4

    const/4 v7, -0x6

    if-lt v3, v7, :cond_4

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    neg-int v3, v1

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-ltz v3, :cond_3

    const/16 v1, 0x30

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    neg-int v3, v3

    .line 14
    invoke-virtual {v0, v2, v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int v1, v3, v1

    .line 16
    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_5

    .line 19
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v1, 0x45

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v3, :cond_6

    const/16 v1, 0x2b

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private y()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->f:J

    const-wide/high16 v2, 0x6000000000000000L    # 2.6815615859885194E154

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/bson/types/Decimal128;

    invoke-virtual {p0, p1}, Lorg/bson/types/Decimal128;->h(Lorg/bson/types/Decimal128;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 4
    :cond_2
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->c()Ljava/math/BigDecimal;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/bson/types/Decimal128;->q(Ljava/math/BigDecimal;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 6
    :cond_3
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lorg/bson/types/Decimal128;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lorg/bson/types/Decimal128;

    .line 3
    iget-wide v2, p0, Lorg/bson/types/Decimal128;->f:J

    iget-wide v4, p1, Lorg/bson/types/Decimal128;->f:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p0, Lorg/bson/types/Decimal128;->g:J

    iget-wide v4, p1, Lorg/bson/types/Decimal128;->g:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public floatValue()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public h(Lorg/bson/types/Decimal128;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->t()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->s()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v3

    .line 6
    :cond_2
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 7
    :cond_3
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->u()Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v1

    .line 8
    :cond_5
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->c()Ljava/math/BigDecimal;

    move-result-object v0

    .line 9
    invoke-direct {p1}, Lorg/bson/types/Decimal128;->c()Ljava/math/BigDecimal;

    move-result-object v4

    .line 10
    invoke-direct {p0, v0}, Lorg/bson/types/Decimal128;->v(Ljava/math/BigDecimal;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p1, v4}, Lorg/bson/types/Decimal128;->v(Ljava/math/BigDecimal;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 11
    invoke-direct {p0, v0}, Lorg/bson/types/Decimal128;->q(Ljava/math/BigDecimal;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 12
    invoke-direct {p1, v4}, Lorg/bson/types/Decimal128;->q(Ljava/math/BigDecimal;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v3

    .line 13
    :cond_7
    invoke-direct {p1, v4}, Lorg/bson/types/Decimal128;->q(Ljava/math/BigDecimal;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 14
    :cond_8
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->t()Z

    move-result v2

    if-eqz v2, :cond_9

    return v3

    .line 15
    :cond_9
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->s()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 16
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->u()Z

    move-result p1

    if-eqz p1, :cond_a

    return v1

    :cond_a
    return v3

    .line 17
    :cond_b
    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->g:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-wide v3, p0, Lorg/bson/types/Decimal128;->f:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public intValue()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->f:J

    return-wide v0
.end method

.method public p()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->g:J

    return-wide v0
.end method

.method public s()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->f:J

    const-wide/high16 v2, 0x7800000000000000L

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->f:J

    const-wide/high16 v2, 0x7c00000000000000L    # 1.9490628022799998E289

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NaN"

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "-Infinity"

    return-object v0

    :cond_1
    const-string v0, "Infinity"

    return-object v0

    .line 4
    :cond_2
    invoke-direct {p0}, Lorg/bson/types/Decimal128;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/bson/types/Decimal128;->f:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
