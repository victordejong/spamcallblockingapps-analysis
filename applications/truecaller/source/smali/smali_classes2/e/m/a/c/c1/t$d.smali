.class public Le/m/a/c/c1/t$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/c1/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/c1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:[Le/m/a/c/c1/l;

.field public final b:Le/m/a/c/c1/y;

.field public final c:Le/m/a/c/c1/a0;


# direct methods
.method public varargs constructor <init>([Le/m/a/c/c1/l;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Le/m/a/c/c1/l;

    iput-object v0, p0, Le/m/a/c/c1/t$d;->a:[Le/m/a/c/c1/l;

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    new-instance v1, Le/m/a/c/c1/y;

    invoke-direct {v1}, Le/m/a/c/c1/y;-><init>()V

    iput-object v1, p0, Le/m/a/c/c1/t$d;->b:Le/m/a/c/c1/y;

    .line 5
    new-instance v2, Le/m/a/c/c1/a0;

    invoke-direct {v2}, Le/m/a/c/c1/a0;-><init>()V

    iput-object v2, p0, Le/m/a/c/c1/t$d;->c:Le/m/a/c/c1/a0;

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
    iget-object v0, p0, Le/m/a/c/c1/t$d;->b:Le/m/a/c/c1/y;

    .line 2
    iget-wide v0, v0, Le/m/a/c/c1/y;->q:J

    return-wide v0
.end method

.method public b(J)J
    .locals 13

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/t$d;->c:Le/m/a/c/c1/a0;

    .line 2
    iget-wide v5, v0, Le/m/a/c/c1/a0;->o:J

    const-wide/16 v1, 0x400

    cmp-long v1, v5, v1

    if-ltz v1, :cond_1

    .line 3
    iget-object v1, v0, Le/m/a/c/c1/a0;->h:Le/m/a/c/c1/l$a;

    iget v1, v1, Le/m/a/c/c1/l$a;->a:I

    iget-object v2, v0, Le/m/a/c/c1/a0;->g:Le/m/a/c/c1/l$a;

    iget v2, v2, Le/m/a/c/c1/l$a;->a:I

    if-ne v1, v2, :cond_0

    iget-wide v3, v0, Le/m/a/c/c1/a0;->n:J

    move-wide v1, p1

    .line 4
    invoke-static/range {v1 .. v6}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Le/m/a/c/c1/a0;->n:J

    int-to-long v0, v1

    mul-long v9, v3, v0

    int-to-long v0, v2

    mul-long v11, v5, v0

    move-wide v7, p1

    .line 5
    invoke-static/range {v7 .. v12}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide p1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, v0, Le/m/a/c/c1/a0;->c:F

    float-to-double v0, v0

    long-to-double p1, p1

    mul-double/2addr v0, p1

    double-to-long p1, v0

    :goto_0
    return-wide p1
.end method

.method public c(Le/m/a/c/o0;)Le/m/a/c/o0;
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/t$d;->b:Le/m/a/c/c1/y;

    iget-boolean v1, p1, Le/m/a/c/o0;->c:Z

    .line 2
    iput-boolean v1, v0, Le/m/a/c/c1/y;->j:Z

    .line 3
    new-instance v0, Le/m/a/c/o0;

    iget-object v1, p0, Le/m/a/c/c1/t$d;->c:Le/m/a/c/c1/a0;

    iget v2, p1, Le/m/a/c/o0;->a:F

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x41000000    # 8.0f

    .line 5
    invoke-static {v2, v3, v4}, Le/m/a/c/q1/d0;->e(FFF)F

    move-result v2

    .line 6
    iget v5, v1, Le/m/a/c/c1/a0;->c:F

    cmpl-float v5, v5, v2

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 7
    iput v2, v1, Le/m/a/c/c1/a0;->c:F

    .line 8
    iput-boolean v6, v1, Le/m/a/c/c1/a0;->i:Z

    .line 9
    :cond_0
    iget-object v1, p0, Le/m/a/c/c1/t$d;->c:Le/m/a/c/c1/a0;

    iget v5, p1, Le/m/a/c/o0;->b:F

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v5, v3, v4}, Le/m/a/c/q1/d0;->e(FFF)F

    move-result v3

    .line 12
    iget v4, v1, Le/m/a/c/c1/a0;->d:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_1

    .line 13
    iput v3, v1, Le/m/a/c/c1/a0;->d:F

    .line 14
    iput-boolean v6, v1, Le/m/a/c/c1/a0;->i:Z

    .line 15
    :cond_1
    iget-boolean p1, p1, Le/m/a/c/o0;->c:Z

    invoke-direct {v0, v2, v3, p1}, Le/m/a/c/o0;-><init>(FFZ)V

    return-object v0
.end method
