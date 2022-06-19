.class public Lw3/b/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:Lw3/b/a/v;

.field public static l:Lw3/b/a/v;

.field public static m:Lw3/b/a/v;

.field public static n:Lw3/b/a/v;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Lw3/b/a/k;

.field public final c:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x1

    .line 2
    sput v0, Lw3/b/a/v;->d:I

    const/4 v0, 0x2

    .line 3
    sput v0, Lw3/b/a/v;->e:I

    const/4 v0, 0x3

    .line 4
    sput v0, Lw3/b/a/v;->f:I

    const/4 v0, 0x4

    .line 5
    sput v0, Lw3/b/a/v;->g:I

    const/4 v0, 0x5

    .line 6
    sput v0, Lw3/b/a/v;->h:I

    const/4 v0, 0x6

    .line 7
    sput v0, Lw3/b/a/v;->i:I

    const/4 v0, 0x7

    .line 8
    sput v0, Lw3/b/a/v;->j:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lw3/b/a/k;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/v;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lw3/b/a/v;->b:[Lw3/b/a/k;

    .line 4
    iput-object p3, p0, Lw3/b/a/v;->c:[I

    return-void
.end method

.method public static a()Lw3/b/a/v;
    .locals 4

    .line 1
    sget-object v0, Lw3/b/a/v;->n:Lw3/b/a/v;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lw3/b/a/v;

    const/4 v1, 0x1

    new-array v1, v1, [Lw3/b/a/k;

    const/4 v2, 0x0

    sget-object v3, Lw3/b/a/k;->h:Lw3/b/a/k;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const-string v3, "Days"

    invoke-direct {v0, v3, v1, v2}, Lw3/b/a/v;-><init>(Ljava/lang/String;[Lw3/b/a/k;[I)V

    .line 3
    sput-object v0, Lw3/b/a/v;->n:Lw3/b/a/v;

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

.method public static e()Lw3/b/a/v;
    .locals 5

    .line 1
    sget-object v0, Lw3/b/a/v;->k:Lw3/b/a/v;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lw3/b/a/v;

    const/16 v1, 0x8

    new-array v2, v1, [Lw3/b/a/k;

    const/4 v3, 0x0

    sget-object v4, Lw3/b/a/k;->e:Lw3/b/a/k;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lw3/b/a/k;->f:Lw3/b/a/k;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lw3/b/a/k;->g:Lw3/b/a/k;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lw3/b/a/k;->h:Lw3/b/a/k;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lw3/b/a/k;->j:Lw3/b/a/k;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lw3/b/a/k;->k:Lw3/b/a/k;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lw3/b/a/k;->l:Lw3/b/a/k;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lw3/b/a/k;->m:Lw3/b/a/k;

    aput-object v4, v2, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string v3, "Standard"

    invoke-direct {v0, v3, v2, v1}, Lw3/b/a/v;-><init>(Ljava/lang/String;[Lw3/b/a/k;[I)V

    .line 3
    sput-object v0, Lw3/b/a/v;->k:Lw3/b/a/v;

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method


# virtual methods
.method public b(Lw3/b/a/c0;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/v;->c:[I

    aget p2, v0, p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lw3/b/a/e0/h;

    .line 3
    iget-object p1, p1, Lw3/b/a/e0/h;->b:[I

    aget p1, p1, p2

    :goto_0
    return p1
.end method

.method public c(Lw3/b/a/k;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/b/a/v;->b:[Lw3/b/a/k;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lw3/b/a/v;->b:[Lw3/b/a/k;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public d(I[II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/v;->c:[I

    aget p1, v0, p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    aput p3, p2, p1

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Field is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lw3/b/a/v;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lw3/b/a/v;

    .line 3
    iget-object v0, p0, Lw3/b/a/v;->b:[Lw3/b/a/k;

    iget-object p1, p1, Lw3/b/a/v;->b:[Lw3/b/a/k;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lw3/b/a/v;->b:[Lw3/b/a/k;

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
    .locals 3

    const-string v0, "PeriodType["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lw3/b/a/v;->a:Ljava/lang/String;

    const-string v2, "]"

    .line 3
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
