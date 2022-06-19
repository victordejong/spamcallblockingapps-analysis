.class public final Le/m/b/x/b/c;
.super Le/m/b/x/b/b;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Le/m/b/x/b/b;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Le/m/b/x/b/c;->c:[B

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    add-int v1, p3, p4

    .line 4
    array-length v2, p2

    if-gt v1, v2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x2

    array-length p2, p2

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "offset %s, length %s, array length %s"

    .line 8
    invoke-static {v1, p1, v2}, Ln3/g0/y;->u(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iput p3, p0, Le/m/b/x/b/c;->d:I

    .line 10
    iput p4, p0, Le/m/b/x/b/c;->e:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget v0, p0, Le/m/b/x/b/c;->e:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/io/InputStream;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Le/m/b/x/b/c;->c:[B

    iget v2, p0, Le/m/b/x/b/c;->d:I

    iget v3, p0, Le/m/b/x/b/c;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Le/m/b/x/b/b;
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/x/b/b;->a:Ljava/lang/String;

    return-object p0
.end method
