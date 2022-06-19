.class public final Lorg/joda/time/m;
.super Lorg/joda/time/x/e;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/t;
.implements Ljava/io/Serializable;


# instance fields
.field private final f:J

.field private final g:Lorg/joda/time/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/joda/time/e;->b()J

    move-result-wide v0

    invoke-static {}, Lorg/joda/time/y/u;->W()Lorg/joda/time/y/u;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/m;-><init>(JLorg/joda/time/a;)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/joda/time/x/e;-><init>()V

    .line 3
    invoke-static {p3}, Lorg/joda/time/e;->c(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object p3

    .line 4
    invoke-virtual {p3}, Lorg/joda/time/a;->o()Lorg/joda/time/f;

    move-result-object v0

    sget-object v1, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    invoke-virtual {v0, v1, p1, p2}, Lorg/joda/time/f;->o(Lorg/joda/time/f;J)J

    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lorg/joda/time/m;->f:J

    .line 6
    invoke-virtual {p3}, Lorg/joda/time/a;->M()Lorg/joda/time/a;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/m;->g:Lorg/joda/time/a;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/joda/time/m;->g:Lorg/joda/time/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/joda/time/m;

    iget-wide v1, p0, Lorg/joda/time/m;->f:J

    invoke-static {}, Lorg/joda/time/y/u;->Y()Lorg/joda/time/y/u;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/m;-><init>(JLorg/joda/time/a;)V

    return-object v0

    .line 3
    :cond_0
    sget-object v1, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    invoke-virtual {v0}, Lorg/joda/time/a;->o()Lorg/joda/time/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/joda/time/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lorg/joda/time/m;

    iget-wide v1, p0, Lorg/joda/time/m;->f:J

    iget-object v3, p0, Lorg/joda/time/m;->g:Lorg/joda/time/a;

    invoke-virtual {v3}, Lorg/joda/time/a;->M()Lorg/joda/time/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/m;-><init>(JLorg/joda/time/a;)V

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public N(Lorg/joda/time/d;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/m;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/d;->F(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/c;->z()Z

    move-result p1

    return p1
.end method

.method public Y(Lorg/joda/time/d;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/m;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/d;->F(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/m;->h()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/c;->c(J)I

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The DateTimeFieldType must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lorg/joda/time/t;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/joda/time/m;

    if-eqz v1, :cond_3

    .line 2
    move-object v1, p1

    check-cast v1, Lorg/joda/time/m;

    .line 3
    iget-object v2, p0, Lorg/joda/time/m;->g:Lorg/joda/time/a;

    iget-object v3, v1, Lorg/joda/time/m;->g:Lorg/joda/time/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-wide v2, p0, Lorg/joda/time/m;->f:J

    iget-wide v4, v1, Lorg/joda/time/m;->f:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 5
    :cond_3
    invoke-super {p0, p1}, Lorg/joda/time/x/c;->c(Lorg/joda/time/t;)I

    move-result p1

    return p1
.end method

.method protected d(ILorg/joda/time/a;)Lorg/joda/time/c;
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Lorg/joda/time/a;->v()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    invoke-virtual {p2}, Lorg/joda/time/a;->e()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    invoke-virtual {p2}, Lorg/joda/time/a;->A()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    invoke-virtual {p2}, Lorg/joda/time/a;->O()Lorg/joda/time/c;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/joda/time/m;

    if-eqz v1, :cond_2

    .line 2
    move-object v1, p1

    check-cast v1, Lorg/joda/time/m;

    .line 3
    iget-object v2, p0, Lorg/joda/time/m;->g:Lorg/joda/time/a;

    iget-object v3, v1, Lorg/joda/time/m;->g:Lorg/joda/time/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-wide v2, p0, Lorg/joda/time/m;->f:J

    iget-wide v4, v1, Lorg/joda/time/m;->f:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5
    :cond_2
    invoke-super {p0, p1}, Lorg/joda/time/x/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Lorg/joda/time/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/m;->g:Lorg/joda/time/a;

    return-object v0
.end method

.method protected h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/joda/time/m;->f:J

    return-wide v0
.end method

.method public i(I)I
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/m;->f()Lorg/joda/time/a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/a;->v()Lorg/joda/time/c;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/m;->h()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/c;->c(J)I

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/m;->f()Lorg/joda/time/a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/a;->e()Lorg/joda/time/c;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/m;->h()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/c;->c(J)I

    move-result p1

    return p1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/m;->f()Lorg/joda/time/a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/a;->A()Lorg/joda/time/c;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/m;->h()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/c;->c(J)I

    move-result p1

    return p1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/m;->f()Lorg/joda/time/a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/a;->O()Lorg/joda/time/c;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/m;->h()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/c;->c(J)I

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 1
    invoke-static {}, Lorg/joda/time/b0/j;->b()Lorg/joda/time/b0/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/b0/b;->h(Lorg/joda/time/t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
