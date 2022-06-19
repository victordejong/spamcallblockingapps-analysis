.class public Le/k/a/c/k0/d;
.super Le/k/a/c/k0/v;
.source "SourceFile"


# static fields
.field public static final b:Le/k/a/c/k0/d;


# instance fields
.field public final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/k0/d;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Le/k/a/c/k0/d;-><init>([B)V

    sput-object v0, Le/k/a/c/k0/d;->b:Le/k/a/c/k0/d;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/k0/v;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/k0/d;->a:[B

    return-void
.end method


# virtual methods
.method public a()Le/k/a/b/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/m;->o:Le/k/a/b/m;

    return-object v0
.end method

.method public final c(Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    iget-object p2, p2, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 2
    iget-object p2, p2, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 3
    iget-object p2, p2, Le/k/a/c/c0/a;->k:Le/k/a/b/a;

    .line 4
    iget-object v0, p0, Le/k/a/c/k0/d;->a:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, p2, v0, v1, v2}, Le/k/a/b/g;->S(Le/k/a/b/a;[BII)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    instance-of v1, p1, Le/k/a/c/k0/d;

    if-nez v1, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Le/k/a/c/k0/d;

    iget-object p1, p1, Le/k/a/c/k0/d;->a:[B

    iget-object v0, p0, Le/k/a/c/k0/d;->a:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/d;->a:[B

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Le/k/a/b/b;->b:Le/k/a/b/a;

    .line 2
    iget-object v1, p0, Le/k/a/c/k0/d;->a:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Le/k/a/b/a;->g([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Le/k/a/c/k0/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/k0/m;->b:Le/k/a/c/k0/m;

    return-object v0
.end method
