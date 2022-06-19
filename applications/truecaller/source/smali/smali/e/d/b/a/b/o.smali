.class public Le/d/b/a/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:[B

.field public static final f:[B

.field public static final g:[B


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/net/Uri;

.field public c:[B

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "from-data"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Le/d/b/a/b/o;->e:[B

    const-string v0, "attachment"

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Le/d/b/a/b/o;->f:[B

    const-string v0, "inline"

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Le/d/b/a/b/o;->g:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    .line 3
    iput-object v0, p0, Le/d/b/a/b/o;->b:Landroid/net/Uri;

    .line 4
    iput-object v0, p0, Le/d/b/a/b/o;->c:[B

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Le/d/b/a/b/o;->d:I

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public b()[B
    .locals 2

    .line 1
    iget-object v0, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public c()[B
    .locals 2

    .line 1
    iget-object v0, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public d()[B
    .locals 2

    .line 1
    iget-object v0, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public e()[B
    .locals 2

    .line 1
    iget-object v0, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public f()[B
    .locals 2

    .line 1
    iget-object v0, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public h([B)V
    .locals 2

    const-string v0, "null content-disposition"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    const/16 v1, 0xc5

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public i([B)V
    .locals 7

    const-string v0, "Content-Id may not be null or empty."

    if-eqz p1, :cond_2

    .line 1
    array-length v1, p1

    if-eqz v1, :cond_2

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isFalse(Z[Ljava/lang/String;)V

    .line 3
    array-length v0, p1

    const/16 v1, 0xc0

    const/16 v4, 0x3e

    const/16 v5, 0x3c

    if-le v0, v3, :cond_1

    aget-byte v0, p1, v2

    int-to-char v0, v0

    if-ne v0, v5, :cond_1

    array-length v0, p1

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    int-to-char v0, v0

    if-ne v0, v4, :cond_1

    .line 4
    iget-object v0, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v6, v0, [B

    .line 6
    aput-byte v5, v6, v2

    sub-int/2addr v0, v3

    .line 7
    aput-byte v4, v6, v0

    .line 8
    array-length v0, p1

    invoke-static {p1, v2, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object p1, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j([B)V
    .locals 2

    const-string v0, "null content-location"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public k([B)V
    .locals 2

    const-string v0, "null content-type"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    const/16 v1, 0x91

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
