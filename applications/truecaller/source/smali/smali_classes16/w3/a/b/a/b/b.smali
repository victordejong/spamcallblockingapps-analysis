.class public abstract Lw3/a/b/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/a/b/a/b/b$a;
    }
.end annotation


# instance fields
.field public final a:B

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lw3/a/b/a/b/b;->b:I

    .line 3
    iput p2, p0, Lw3/a/b/a/b/b;->c:I

    const/4 p1, 0x0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    div-int/2addr p3, p2

    mul-int p1, p3, p2

    :cond_1
    iput p1, p0, Lw3/a/b/a/b/b;->d:I

    .line 5
    iput p4, p0, Lw3/a/b/a/b/b;->e:I

    const/16 p1, 0x3d

    .line 6
    iput-byte p1, p0, Lw3/a/b/a/b/b;->a:B

    return-void
.end method


# virtual methods
.method public abstract a([BIILw3/a/b/a/b/b$a;)V
.end method

.method public b([B)[B
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    array-length v0, p1

    .line 3
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Lw3/a/b/a/b/b$a;

    invoke-direct {v1}, Lw3/a/b/a/b/b$a;-><init>()V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, p1, v2, v0, v1}, Lw3/a/b/a/b/b;->a([BIILw3/a/b/a/b/b$a;)V

    const/4 v0, -0x1

    .line 6
    invoke-virtual {p0, p1, v2, v0, v1}, Lw3/a/b/a/b/b;->a([BIILw3/a/b/a/b/b$a;)V

    .line 7
    iget p1, v1, Lw3/a/b/a/b/b$a;->c:I

    iget v0, v1, Lw3/a/b/a/b/b$a;->d:I

    sub-int/2addr p1, v0

    new-array v0, p1, [B

    .line 8
    invoke-virtual {p0, v0, v2, p1, v1}, Lw3/a/b/a/b/b;->d([BIILw3/a/b/a/b/b$a;)I

    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public c(ILw3/a/b/a/b/b$a;)[B
    .locals 3

    .line 1
    iget-object v0, p2, Lw3/a/b/a/b/b$a;->b:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    iget v2, p2, Lw3/a/b/a/b/b$a;->c:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 2
    iput-object v0, p2, Lw3/a/b/a/b/b$a;->b:[B

    .line 3
    iput p1, p2, Lw3/a/b/a/b/b$a;->c:I

    .line 4
    iput p1, p2, Lw3/a/b/a/b/b$a;->d:I

    goto :goto_1

    .line 5
    :cond_2
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 6
    array-length v2, v0

    invoke-static {v0, p1, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v1, p2, Lw3/a/b/a/b/b$a;->b:[B

    .line 8
    :goto_1
    iget-object p1, p2, Lw3/a/b/a/b/b$a;->b:[B

    return-object p1
.end method

.method public d([BIILw3/a/b/a/b/b$a;)I
    .locals 2

    .line 1
    iget-object v0, p4, Lw3/a/b/a/b/b$a;->b:[B

    if-eqz v0, :cond_1

    .line 2
    iget v0, p4, Lw3/a/b/a/b/b$a;->c:I

    iget v1, p4, Lw3/a/b/a/b/b$a;->d:I

    sub-int/2addr v0, v1

    .line 3
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 4
    iget-object v0, p4, Lw3/a/b/a/b/b$a;->b:[B

    iget v1, p4, Lw3/a/b/a/b/b$a;->d:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, p4, Lw3/a/b/a/b/b$a;->d:I

    add-int/2addr p1, p3

    iput p1, p4, Lw3/a/b/a/b/b$a;->d:I

    .line 6
    iget p2, p4, Lw3/a/b/a/b/b$a;->c:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    .line 7
    iput-object p1, p4, Lw3/a/b/a/b/b$a;->b:[B

    :cond_0
    return p3

    .line 8
    :cond_1
    iget-boolean p1, p4, Lw3/a/b/a/b/b$a;->e:Z

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
