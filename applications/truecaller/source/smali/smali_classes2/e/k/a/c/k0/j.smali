.class public Le/k/a/c/k0/j;
.super Le/k/a/c/k0/r;
.source "SourceFile"


# static fields
.field public static final b:[Le/k/a/c/k0/j;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xc

    new-array v1, v0, [Le/k/a/c/k0/j;

    .line 1
    sput-object v1, Le/k/a/c/k0/j;->b:[Le/k/a/c/k0/j;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    sget-object v2, Le/k/a/c/k0/j;->b:[Le/k/a/c/k0/j;

    new-instance v3, Le/k/a/c/k0/j;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v3, v4}, Le/k/a/c/k0/j;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/k0/r;-><init>()V

    iput p1, p0, Le/k/a/c/k0/j;->a:I

    return-void
.end method


# virtual methods
.method public C()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public D()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public K()J
    .locals 2

    .line 1
    iget v0, p0, Le/k/a/c/k0/j;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public a()Le/k/a/b/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/m;->q:Le/k/a/b/m;

    return-object v0
.end method

.method public final c(Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    iget p2, p0, Le/k/a/c/k0/j;->a:I

    invoke-virtual {p1, p2}, Le/k/a/b/g;->J0(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Le/k/a/c/k0/j;

    if-eqz v2, :cond_3

    .line 2
    check-cast p1, Le/k/a/c/k0/j;

    iget p1, p1, Le/k/a/c/k0/j;->a:I

    iget v2, p0, Le/k/a/c/k0/j;->a:I

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public f(Z)Z
    .locals 0

    .line 1
    iget p1, p0, Le/k/a/c/k0/j;->a:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/k0/j;->a:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/k0/j;->a:I

    invoke-static {v0}, Le/k/a/b/w/g;->m(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()D
    .locals 2

    .line 1
    iget v0, p0, Le/k/a/c/k0/j;->a:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/k0/j;->a:I

    return v0
.end method
