.class public final Lw3/b/a/j0/g;
.super Lw3/b/a/g;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw3/b/a/g;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lw3/b/a/j0/g;->f:Ljava/lang/String;

    .line 3
    iput p3, p0, Lw3/b/a/j0/g;->g:I

    .line 4
    iput p4, p0, Lw3/b/a/j0/g;->h:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/j0/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lw3/b/a/j0/g;

    .line 3
    iget-object v1, p0, Lw3/b/a/g;->a:Ljava/lang/String;

    iget-object v3, p1, Lw3/b/a/g;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lw3/b/a/j0/g;->h:I

    iget v3, p1, Lw3/b/a/j0/g;->h:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lw3/b/a/j0/g;->g:I

    iget p1, p1, Lw3/b/a/j0/g;->g:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/g;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lw3/b/a/j0/g;->h:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v0

    iget v0, p0, Lw3/b/a/j0/g;->g:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public k(J)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lw3/b/a/j0/g;->f:Ljava/lang/String;

    return-object p1
.end method

.method public m(J)I
    .locals 0

    .line 1
    iget p1, p0, Lw3/b/a/j0/g;->g:I

    return p1
.end method

.method public n(J)I
    .locals 0

    .line 1
    iget p1, p0, Lw3/b/a/j0/g;->g:I

    return p1
.end method

.method public p(J)I
    .locals 0

    .line 1
    iget p1, p0, Lw3/b/a/j0/g;->h:I

    return p1
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public r(J)J
    .locals 0

    return-wide p1
.end method

.method public s(J)J
    .locals 0

    return-wide p1
.end method
