.class public Le/m/a/c/g1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/q;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:J

.field public final e:I

.field public final f:J


# direct methods
.method public constructor <init>(JJII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Le/m/a/c/g1/d;->a:J

    .line 3
    iput-wide p3, p0, Le/m/a/c/g1/d;->b:J

    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 p6, 0x1

    .line 4
    :cond_0
    iput p6, p0, Le/m/a/c/g1/d;->c:I

    .line 5
    iput p5, p0, Le/m/a/c/g1/d;->e:I

    const-wide/16 v0, -0x1

    cmp-long p6, p1, v0

    if-nez p6, :cond_1

    .line 6
    iput-wide v0, p0, Le/m/a/c/g1/d;->d:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Le/m/a/c/g1/d;->f:J

    goto :goto_0

    :cond_1
    sub-long v0, p1, p3

    .line 8
    iput-wide v0, p0, Le/m/a/c/g1/d;->d:J

    .line 9
    invoke-static {p1, p2, p3, p4, p5}, Le/m/a/c/g1/d;->d(JJI)J

    move-result-wide p1

    iput-wide p1, p0, Le/m/a/c/g1/d;->f:J

    :goto_0
    return-void
.end method

.method public static d(JJI)J
    .locals 0

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    .line 1
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x8

    mul-long/2addr p0, p2

    const-wide/32 p2, 0xf4240

    mul-long/2addr p0, p2

    int-to-long p2, p4

    div-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .line 1
    iget-wide v0, p0, Le/m/a/c/g1/d;->b:J

    iget v2, p0, Le/m/a/c/g1/d;->e:I

    invoke-static {p1, p2, v0, v1, v2}, Le/m/a/c/g1/d;->d(JJI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(J)Le/m/a/c/g1/q$a;
    .locals 12

    .line 1
    iget-wide v0, p0, Le/m/a/c/g1/d;->d:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2
    new-instance p1, Le/m/a/c/g1/q$a;

    new-instance p2, Le/m/a/c/g1/r;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Le/m/a/c/g1/d;->b:J

    invoke-direct {p2, v0, v1, v2, v3}, Le/m/a/c/g1/r;-><init>(JJ)V

    invoke-direct {p1, p2}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;)V

    return-object p1

    .line 3
    :cond_0
    iget v2, p0, Le/m/a/c/g1/d;->e:I

    int-to-long v2, v2

    mul-long/2addr v2, p1

    const-wide/32 v4, 0x7a1200

    div-long/2addr v2, v4

    .line 4
    iget v4, p0, Le/m/a/c/g1/d;->c:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    mul-long v6, v2, v4

    sub-long v10, v0, v4

    const-wide/16 v8, 0x0

    .line 5
    invoke-static/range {v6 .. v11}, Le/m/a/c/q1/d0;->g(JJJ)J

    move-result-wide v0

    .line 6
    iget-wide v2, p0, Le/m/a/c/g1/d;->b:J

    add-long/2addr v2, v0

    .line 7
    invoke-virtual {p0, v2, v3}, Le/m/a/c/g1/d;->a(J)J

    move-result-wide v0

    .line 8
    new-instance v4, Le/m/a/c/g1/r;

    invoke-direct {v4, v0, v1, v2, v3}, Le/m/a/c/g1/r;-><init>(JJ)V

    cmp-long p1, v0, p1

    if-gez p1, :cond_2

    .line 9
    iget p1, p0, Le/m/a/c/g1/d;->c:I

    int-to-long v0, p1

    add-long/2addr v0, v2

    iget-wide v5, p0, Le/m/a/c/g1/d;->a:J

    cmp-long p2, v0, v5

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long p1, p1

    add-long/2addr v2, p1

    .line 10
    invoke-virtual {p0, v2, v3}, Le/m/a/c/g1/d;->a(J)J

    move-result-wide p1

    .line 11
    new-instance v0, Le/m/a/c/g1/r;

    invoke-direct {v0, p1, p2, v2, v3}, Le/m/a/c/g1/r;-><init>(JJ)V

    .line 12
    new-instance p1, Le/m/a/c/g1/q$a;

    invoke-direct {p1, v4, v0}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;Le/m/a/c/g1/r;)V

    return-object p1

    .line 13
    :cond_2
    :goto_0
    new-instance p1, Le/m/a/c/g1/q$a;

    invoke-direct {p1, v4}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;)V

    return-object p1
.end method

.method public c()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Le/m/a/c/g1/d;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/c/g1/d;->f:J

    return-wide v0
.end method
