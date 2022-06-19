.class public abstract Lw3/b/a/e0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public S1()Lw3/b/a/n;
    .locals 3

    .line 1
    new-instance v0, Lw3/b/a/n;

    invoke-interface {p0}, Lw3/b/a/z;->k()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/n;-><init>(J)V

    return-object v0
.end method

.method public a(Lw3/b/a/z;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p1}, Lw3/b/a/z;->k()J

    move-result-wide v1

    .line 2
    invoke-interface {p0}, Lw3/b/a/z;->k()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public c()Lw3/b/a/g;
    .locals 1

    .line 1
    invoke-interface {p0}, Lw3/b/a/z;->l()Lw3/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lw3/b/a/a;->s()Lw3/b/a/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lw3/b/a/z;

    invoke-virtual {p0, p1}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result p1

    return p1
.end method

.method public e(J)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lw3/b/a/z;->k()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/z;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lw3/b/a/z;

    .line 3
    invoke-interface {p0}, Lw3/b/a/z;->k()J

    move-result-wide v3

    invoke-interface {p1}, Lw3/b/a/z;->k()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-interface {p0}, Lw3/b/a/z;->l()Lw3/b/a/a;

    move-result-object v1

    invoke-interface {p1}, Lw3/b/a/z;->l()Lw3/b/a/a;

    move-result-object p1

    invoke-static {v1, p1}, Ls1/a/a/a/v0/f/d;->J0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f(Lw3/b/a/z;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lw3/b/a/e;->c(Lw3/b/a/z;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lw3/b/a/e0/c;->e(J)Z

    move-result p1

    return p1
.end method

.method public g()Z
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/e;->a:Lw3/b/a/e$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lw3/b/a/e0/c;->e(J)Z

    move-result v0

    return v0
.end method

.method public h(J)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lw3/b/a/z;->k()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-interface {p0}, Lw3/b/a/z;->k()J

    move-result-wide v0

    invoke-interface {p0}, Lw3/b/a/z;->k()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p0}, Lw3/b/a/z;->l()Lw3/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public i(Lw3/b/a/z;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lw3/b/a/e;->c(Lw3/b/a/z;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lw3/b/a/e0/c;->h(J)Z

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/e;->a:Lw3/b/a/e$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lw3/b/a/e0/c;->h(J)Z

    move-result v0

    return v0
.end method

.method public m(Lw3/b/a/z;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lw3/b/a/e;->c(Lw3/b/a/z;)J

    move-result-wide v0

    .line 2
    invoke-interface {p0}, Lw3/b/a/z;->k()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n()Ljava/util/Date;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-interface {p0}, Lw3/b/a/z;->k()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public o()Lw3/b/a/b;
    .locals 4

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-interface {p0}, Lw3/b/a/z;->k()J

    move-result-wide v1

    invoke-virtual {p0}, Lw3/b/a/e0/c;->c()Lw3/b/a/g;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lw3/b/a/b;-><init>(JLw3/b/a/g;)V

    return-object v0
.end method

.method public p(Lw3/b/a/i0/b;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/e0/c;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 1
    sget-object v0, Lw3/b/a/i0/i;->E:Lw3/b/a/i0/b;

    .line 2
    invoke-virtual {v0, p0}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
