.class public final Le/m/a/c/g1/f0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/q;


# instance fields
.field public final a:Le/m/a/c/g1/f0/b;

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(Le/m/a/c/g1/f0/b;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/f0/d;->a:Le/m/a/c/g1/f0/b;

    .line 3
    iput p2, p0, Le/m/a/c/g1/f0/d;->b:I

    .line 4
    iput-wide p3, p0, Le/m/a/c/g1/f0/d;->c:J

    sub-long/2addr p5, p3

    .line 5
    iget p1, p1, Le/m/a/c/g1/f0/b;->d:I

    int-to-long p1, p1

    div-long/2addr p5, p1

    iput-wide p5, p0, Le/m/a/c/g1/f0/d;->d:J

    .line 6
    invoke-virtual {p0, p5, p6}, Le/m/a/c/g1/f0/d;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Le/m/a/c/g1/f0/d;->e:J

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 8

    .line 1
    iget v0, p0, Le/m/a/c/g1/f0/d;->b:I

    int-to-long v0, v0

    mul-long v2, p1, v0

    iget-object p1, p0, Le/m/a/c/g1/f0/d;->a:Le/m/a/c/g1/f0/b;

    iget p1, p1, Le/m/a/c/g1/f0/b;->c:I

    int-to-long v6, p1

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(J)Le/m/a/c/g1/q$a;
    .locals 10

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/f0/d;->a:Le/m/a/c/g1/f0/b;

    iget v0, v0, Le/m/a/c/g1/f0/b;->c:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    iget v2, p0, Le/m/a/c/g1/f0/d;->b:I

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    div-long v4, v0, v2

    .line 2
    iget-wide v0, p0, Le/m/a/c/g1/f0/d;->d:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Le/m/a/c/q1/d0;->g(JJJ)J

    move-result-wide v0

    .line 3
    iget-wide v4, p0, Le/m/a/c/g1/f0/d;->c:J

    iget-object v6, p0, Le/m/a/c/g1/f0/d;->a:Le/m/a/c/g1/f0/b;

    iget v6, v6, Le/m/a/c/g1/f0/b;->d:I

    int-to-long v6, v6

    mul-long/2addr v6, v0

    add-long/2addr v6, v4

    .line 4
    invoke-virtual {p0, v0, v1}, Le/m/a/c/g1/f0/d;->a(J)J

    move-result-wide v4

    .line 5
    new-instance v8, Le/m/a/c/g1/r;

    invoke-direct {v8, v4, v5, v6, v7}, Le/m/a/c/g1/r;-><init>(JJ)V

    cmp-long p1, v4, p1

    if-gez p1, :cond_1

    .line 6
    iget-wide p1, p0, Le/m/a/c/g1/f0/d;->d:J

    sub-long/2addr p1, v2

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr v0, v2

    .line 7
    iget-wide p1, p0, Le/m/a/c/g1/f0/d;->c:J

    iget-object v2, p0, Le/m/a/c/g1/f0/d;->a:Le/m/a/c/g1/f0/b;

    iget v2, v2, Le/m/a/c/g1/f0/b;->d:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    add-long/2addr v2, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Le/m/a/c/g1/f0/d;->a(J)J

    move-result-wide p1

    .line 9
    new-instance v0, Le/m/a/c/g1/r;

    invoke-direct {v0, p1, p2, v2, v3}, Le/m/a/c/g1/r;-><init>(JJ)V

    .line 10
    new-instance p1, Le/m/a/c/g1/q$a;

    invoke-direct {p1, v8, v0}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;Le/m/a/c/g1/r;)V

    return-object p1

    .line 11
    :cond_1
    :goto_0
    new-instance p1, Le/m/a/c/g1/q$a;

    invoke-direct {p1, v8}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;)V

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/c/g1/f0/d;->e:J

    return-wide v0
.end method
