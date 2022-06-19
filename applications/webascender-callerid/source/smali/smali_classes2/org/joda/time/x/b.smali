.class public abstract Lorg/joda/time/x/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/r;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Lorg/joda/time/r;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/joda/time/e;->g(Lorg/joda/time/r;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/x/b;->k(J)Z

    move-result p1

    return p1
.end method

.method public C()Lorg/joda/time/k;
    .locals 3

    .line 1
    new-instance v0, Lorg/joda/time/k;

    invoke-interface {p0}, Lorg/joda/time/r;->e()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/k;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/joda/time/r;

    invoke-virtual {p0, p1}, Lorg/joda/time/x/b;->d(Lorg/joda/time/r;)I

    move-result p1

    return p1
.end method

.method public d(Lorg/joda/time/r;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/r;->e()J

    move-result-wide v1

    .line 2
    invoke-interface {p0}, Lorg/joda/time/r;->e()J

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

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/joda/time/r;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/joda/time/r;

    .line 3
    invoke-interface {p0}, Lorg/joda/time/r;->e()J

    move-result-wide v3

    invoke-interface {p1}, Lorg/joda/time/r;->e()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-interface {p0}, Lorg/joda/time/r;->f()Lorg/joda/time/a;

    move-result-object v1

    invoke-interface {p1}, Lorg/joda/time/r;->f()Lorg/joda/time/a;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/joda/time/a0/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Lorg/joda/time/f;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/joda/time/r;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->o()Lorg/joda/time/f;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-interface {p0}, Lorg/joda/time/r;->e()J

    move-result-wide v0

    invoke-interface {p0}, Lorg/joda/time/r;->e()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    invoke-interface {p0}, Lorg/joda/time/r;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public k(J)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/joda/time/r;->e()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l()Lorg/joda/time/b;
    .locals 4

    .line 1
    new-instance v0, Lorg/joda/time/b;

    invoke-interface {p0}, Lorg/joda/time/r;->e()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/x/b;->h()Lorg/joda/time/f;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/b;-><init>(JLorg/joda/time/f;)V

    return-object v0
.end method

.method public m()Lorg/joda/time/n;
    .locals 4

    .line 1
    new-instance v0, Lorg/joda/time/n;

    invoke-interface {p0}, Lorg/joda/time/r;->e()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/x/b;->h()Lorg/joda/time/f;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/n;-><init>(JLorg/joda/time/f;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 1
    invoke-static {}, Lorg/joda/time/b0/j;->b()Lorg/joda/time/b0/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/b0/b;->g(Lorg/joda/time/r;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
