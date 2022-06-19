.class public final Le/a/f4/g/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/g/u;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public final d:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/p5/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/g/v;->d:Le/a/p5/c;

    return-void
.end method


# virtual methods
.method public a(Lx3/a0;Ls1/z/b/l;)Le/a/f4/g/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/a0<",
            "Le/a/f4/g/t;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/f4/g/t;",
            "Le/a/f4/g/t;",
            ">;)",
            "Le/a/f4/g/t;"
        }
    .end annotation

    const-string p2, "response"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "key_throttling_bulk_search"

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p2, p1, v0}, Le/a/f4/g/v;->g(Ljava/lang/String;Lx3/a0;Ls1/z/b/l;)Le/a/f4/g/t;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/f4/g/v;->d:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    iget-wide v2, p0, Le/a/f4/g/v;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/f4/g/v;->d:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    iget-wide v2, p0, Le/a/f4/g/v;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/f4/g/v;->d:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    iget-wide v2, p0, Le/a/f4/g/v;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Lx3/a0;Ls1/z/b/l;)Le/a/f4/g/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/a0<",
            "Le/a/f4/g/t;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/f4/g/t;",
            "Le/a/f4/g/t;",
            ">;)",
            "Le/a/f4/g/t;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_throttling_cross_domain_search"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/f4/g/v;->g(Ljava/lang/String;Lx3/a0;Ls1/z/b/l;)Le/a/f4/g/t;

    move-result-object p1

    return-object p1
.end method

.method public f(Lx3/a0;Ls1/z/b/l;)Le/a/f4/g/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/a0<",
            "Le/a/f4/g/t;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/f4/g/t;",
            "Le/a/f4/g/t;",
            ">;)",
            "Le/a/f4/g/t;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_throttling_single_search"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/f4/g/v;->g(Ljava/lang/String;Lx3/a0;Ls1/z/b/l;)Le/a/f4/g/t;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/String;Lx3/a0;Ls1/z/b/l;)Le/a/f4/g/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lx3/a0<",
            "Le/a/f4/g/t;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/f4/g/t;",
            "Le/a/f4/g/t;",
            ">;)",
            "Le/a/f4/g/t;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lx3/a0;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/f4/g/t;

    .line 3
    invoke-virtual {p2}, Lx3/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p3, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f4/g/t;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0

    .line 5
    :cond_1
    iget-object p2, p2, Lx3/a0;->a:Lu3/k0;

    .line 6
    iget p3, p2, Lu3/k0;->e:I

    const/16 v1, 0x1ad

    if-ne p3, v1, :cond_6

    .line 7
    iget-object p2, p2, Lu3/k0;->g:Lu3/z;

    const-string p3, "t"

    .line 8
    invoke-virtual {p2, p3}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 9
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    const-wide/16 p2, 0x0

    :goto_0
    const/16 v1, 0x3e8

    int-to-long v1, v1

    mul-long/2addr p2, v1

    .line 10
    iget-object v1, p0, Le/a/f4/g/v;->d:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const p3, -0x7d395f83

    if-eq p2, p3, :cond_5

    const p3, -0x4b839d34

    if-eq p2, p3, :cond_4

    const p3, 0x7866e287

    if-eq p2, p3, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, "key_throttling_single_search"

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-wide v1, p0, Le/a/f4/g/v;->a:J

    goto :goto_2

    :cond_4
    const-string p2, "key_throttling_cross_domain_search"

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-wide v1, p0, Le/a/f4/g/v;->c:J

    goto :goto_2

    :cond_5
    const-string p2, "key_throttling_bulk_search"

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-wide v1, p0, Le/a/f4/g/v;->b:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 15
    :goto_1
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    :cond_6
    :goto_2
    return-object v0
.end method
