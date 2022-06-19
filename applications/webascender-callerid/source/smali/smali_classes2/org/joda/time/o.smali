.class public Lorg/joda/time/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static h:Lorg/joda/time/o;

.field private static i:Lorg/joda/time/o;

.field private static j:Lorg/joda/time/o;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:[Lorg/joda/time/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Lorg/joda/time/i;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/joda/time/o;->f:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/joda/time/o;->g:[Lorg/joda/time/i;

    return-void
.end method

.method public static a()Lorg/joda/time/o;
    .locals 4

    .line 1
    sget-object v0, Lorg/joda/time/o;->h:Lorg/joda/time/o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/joda/time/o;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/joda/time/i;

    const/4 v2, 0x0

    invoke-static {}, Lorg/joda/time/i;->b()Lorg/joda/time/i;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const-string v3, "Days"

    invoke-direct {v0, v3, v1, v2}, Lorg/joda/time/o;-><init>(Ljava/lang/String;[Lorg/joda/time/i;[I)V

    .line 3
    sput-object v0, Lorg/joda/time/o;->h:Lorg/joda/time/o;

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static c()Lorg/joda/time/o;
    .locals 4

    .line 1
    sget-object v0, Lorg/joda/time/o;->i:Lorg/joda/time/o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/joda/time/o;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/joda/time/i;

    const/4 v2, 0x0

    invoke-static {}, Lorg/joda/time/i;->g()Lorg/joda/time/i;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const-string v3, "Hours"

    invoke-direct {v0, v3, v1, v2}, Lorg/joda/time/o;-><init>(Ljava/lang/String;[Lorg/joda/time/i;[I)V

    .line 3
    sput-object v0, Lorg/joda/time/o;->i:Lorg/joda/time/o;

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static d()Lorg/joda/time/o;
    .locals 4

    .line 1
    sget-object v0, Lorg/joda/time/o;->j:Lorg/joda/time/o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/joda/time/o;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/joda/time/i;

    const/4 v2, 0x0

    invoke-static {}, Lorg/joda/time/i;->k()Lorg/joda/time/i;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const-string v3, "Seconds"

    invoke-direct {v0, v3, v1, v2}, Lorg/joda/time/o;-><init>(Ljava/lang/String;[Lorg/joda/time/i;[I)V

    .line 3
    sput-object v0, Lorg/joda/time/o;->j:Lorg/joda/time/o;

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
    .end array-data
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lorg/joda/time/o;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lorg/joda/time/o;

    .line 3
    iget-object v0, p0, Lorg/joda/time/o;->g:[Lorg/joda/time/i;

    iget-object p1, p1, Lorg/joda/time/o;->g:[Lorg/joda/time/i;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lorg/joda/time/o;->g:[Lorg/joda/time/i;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 2
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PeriodType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
