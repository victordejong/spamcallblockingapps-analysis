.class public final Le/m/a/c/g1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/q;


# instance fields
.field public final a:Le/m/a/c/q1/m;

.field public final b:J


# direct methods
.method public constructor <init>(Le/m/a/c/q1/m;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/l;->a:Le/m/a/c/q1/m;

    .line 3
    iput-wide p2, p0, Le/m/a/c/g1/l;->b:J

    return-void
.end method


# virtual methods
.method public final a(JJ)Le/m/a/c/g1/r;
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/l;->a:Le/m/a/c/q1/m;

    iget v0, v0, Le/m/a/c/q1/m;->e:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    .line 2
    iget-wide v0, p0, Le/m/a/c/g1/l;->b:J

    add-long/2addr v0, p3

    .line 3
    new-instance p3, Le/m/a/c/g1/r;

    invoke-direct {p3, p1, p2, v0, v1}, Le/m/a/c/g1/r;-><init>(JJ)V

    return-object p3
.end method

.method public b(J)Le/m/a/c/g1/q$a;
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/l;->a:Le/m/a/c/q1/m;

    iget-object v0, v0, Le/m/a/c/q1/m;->k:Le/m/a/c/q1/m$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Le/m/a/c/g1/l;->a:Le/m/a/c/q1/m;

    iget-object v1, v0, Le/m/a/c/q1/m;->k:Le/m/a/c/q1/m$a;

    iget-object v2, v1, Le/m/a/c/q1/m$a;->a:[J

    .line 4
    iget-object v1, v1, Le/m/a/c/q1/m$a;->b:[J

    .line 5
    invoke-virtual {v0, p1, p2}, Le/m/a/c/q1/m;->g(J)J

    move-result-wide v3

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 6
    invoke-static {v2, v3, v4, v5, v0}, Le/m/a/c/q1/d0;->c([JJZZ)I

    move-result v0

    const-wide/16 v3, 0x0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    move-wide v7, v3

    goto :goto_0

    .line 7
    :cond_0
    aget-wide v7, v2, v0

    :goto_0
    if-ne v0, v6, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    aget-wide v3, v1, v0

    .line 9
    :goto_1
    invoke-virtual {p0, v7, v8, v3, v4}, Le/m/a/c/g1/l;->a(JJ)Le/m/a/c/g1/r;

    move-result-object v3

    .line 10
    iget-wide v6, v3, Le/m/a/c/g1/r;->a:J

    cmp-long p1, v6, p1

    if-eqz p1, :cond_3

    array-length p1, v2

    sub-int/2addr p1, v5

    if-ne v0, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v0, v5

    .line 11
    aget-wide p1, v2, v0

    aget-wide v0, v1, v0

    .line 12
    invoke-virtual {p0, p1, p2, v0, v1}, Le/m/a/c/g1/l;->a(JJ)Le/m/a/c/g1/r;

    move-result-object p1

    .line 13
    new-instance p2, Le/m/a/c/g1/q$a;

    invoke-direct {p2, v3, p1}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;Le/m/a/c/g1/r;)V

    return-object p2

    .line 14
    :cond_3
    :goto_2
    new-instance p1, Le/m/a/c/g1/q$a;

    invoke-direct {p1, v3}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;)V

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
    iget-object v0, p0, Le/m/a/c/g1/l;->a:Le/m/a/c/q1/m;

    invoke-virtual {v0}, Le/m/a/c/q1/m;->d()J

    move-result-wide v0

    return-wide v0
.end method
