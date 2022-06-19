.class public Ln3/y/b/a/n0/u$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/n0/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/n0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:[Ln3/y/b/a/n0/g;

.field public final b:Ln3/y/b/a/n0/z;

.field public final c:Ln3/y/b/a/n0/b0;


# direct methods
.method public varargs constructor <init>([Ln3/y/b/a/n0/g;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ln3/y/b/a/n0/g;

    iput-object v0, p0, Ln3/y/b/a/n0/u$d;->a:[Ln3/y/b/a/n0/g;

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    new-instance v1, Ln3/y/b/a/n0/z;

    invoke-direct {v1}, Ln3/y/b/a/n0/z;-><init>()V

    iput-object v1, p0, Ln3/y/b/a/n0/u$d;->b:Ln3/y/b/a/n0/z;

    .line 5
    new-instance v2, Ln3/y/b/a/n0/b0;

    invoke-direct {v2}, Ln3/y/b/a/n0/b0;-><init>()V

    iput-object v2, p0, Ln3/y/b/a/n0/u$d;->c:Ln3/y/b/a/n0/b0;

    .line 6
    array-length v3, p1

    aput-object v1, v0, v3

    .line 7
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v2, v0, p1

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/u$d;->b:Ln3/y/b/a/n0/z;

    .line 2
    iget-wide v0, v0, Ln3/y/b/a/n0/z;->p:J

    return-wide v0
.end method

.method public b(J)J
    .locals 13

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/u$d;->c:Ln3/y/b/a/n0/b0;

    .line 2
    iget-wide v5, v0, Ln3/y/b/a/n0/b0;->n:J

    const-wide/16 v1, 0x400

    cmp-long v1, v5, v1

    if-ltz v1, :cond_1

    .line 3
    iget v1, v0, Ln3/y/b/a/n0/b0;->f:I

    iget v2, v0, Ln3/y/b/a/n0/b0;->c:I

    if-ne v1, v2, :cond_0

    .line 4
    iget-wide v3, v0, Ln3/y/b/a/n0/b0;->m:J

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide p1

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v3, v0, Ln3/y/b/a/n0/b0;->m:J

    int-to-long v0, v1

    mul-long v9, v3, v0

    int-to-long v0, v2

    mul-long v11, v5, v0

    move-wide v7, p1

    invoke-static/range {v7 .. v12}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide p1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, v0, Ln3/y/b/a/n0/b0;->d:F

    float-to-double v0, v0

    long-to-double p1, p1

    mul-double/2addr v0, p1

    double-to-long p1, v0

    :goto_0
    return-wide p1
.end method

.method public c(Ln3/y/b/a/e0;)Ln3/y/b/a/e0;
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/u$d;->b:Ln3/y/b/a/n0/z;

    iget-boolean v1, p1, Ln3/y/b/a/e0;->c:Z

    .line 2
    iput-boolean v1, v0, Ln3/y/b/a/n0/z;->i:Z

    .line 3
    invoke-virtual {v0}, Ln3/y/b/a/n0/s;->flush()V

    .line 4
    new-instance v0, Ln3/y/b/a/e0;

    iget-object v1, p0, Ln3/y/b/a/n0/u$d;->c:Ln3/y/b/a/n0/b0;

    iget v2, p1, Ln3/y/b/a/e0;->a:F

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x41000000    # 8.0f

    .line 6
    invoke-static {v2, v3, v4}, Ln3/y/b/a/x0/x;->f(FFF)F

    move-result v2

    .line 7
    iget v5, v1, Ln3/y/b/a/n0/b0;->d:F

    cmpl-float v5, v5, v2

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 8
    iput v2, v1, Ln3/y/b/a/n0/b0;->d:F

    .line 9
    iput-boolean v6, v1, Ln3/y/b/a/n0/b0;->h:Z

    .line 10
    :cond_0
    invoke-virtual {v1}, Ln3/y/b/a/n0/b0;->flush()V

    .line 11
    iget-object v1, p0, Ln3/y/b/a/n0/u$d;->c:Ln3/y/b/a/n0/b0;

    iget v5, p1, Ln3/y/b/a/e0;->b:F

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v5, v3, v4}, Ln3/y/b/a/x0/x;->f(FFF)F

    move-result v3

    .line 14
    iget v4, v1, Ln3/y/b/a/n0/b0;->e:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_1

    .line 15
    iput v3, v1, Ln3/y/b/a/n0/b0;->e:F

    .line 16
    iput-boolean v6, v1, Ln3/y/b/a/n0/b0;->h:Z

    .line 17
    :cond_1
    invoke-virtual {v1}, Ln3/y/b/a/n0/b0;->flush()V

    .line 18
    iget-boolean p1, p1, Ln3/y/b/a/e0;->c:Z

    invoke-direct {v0, v2, v3, p1}, Ln3/y/b/a/e0;-><init>(FFZ)V

    return-object v0
.end method
