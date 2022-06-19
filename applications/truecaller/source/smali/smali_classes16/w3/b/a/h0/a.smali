.class public abstract Lw3/b/a/h0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/a;->f()Lw3/b/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lw3/b/a/h0/a;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lw3/b/a/c;->c(J)I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lw3/b/a/h0/a;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/a;->f()Lw3/b/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lw3/b/a/h0/a;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/c;->e(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .line 1
    move-object v0, p0

    check-cast v0, Lw3/b/a/s$a;

    .line 2
    iget-object v1, v0, Lw3/b/a/s$a;->b:Lw3/b/a/c;

    .line 3
    iget-object v0, v0, Lw3/b/a/s$a;->a:Lw3/b/a/s;

    .line 4
    iget-wide v2, v0, Lw3/b/a/e0/e;->a:J

    .line 5
    invoke-virtual {v1, v2, v3, p1}, Lw3/b/a/c;->h(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e()Lw3/b/a/a;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The method getChronology() was added in v1.4 and needs to be implemented by subclasses of AbstractReadableInstantFieldProperty"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/h0/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lw3/b/a/h0/a;

    .line 3
    invoke-virtual {p0}, Lw3/b/a/h0/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lw3/b/a/h0/a;->a()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lw3/b/a/h0/a;->g()Lw3/b/a/d;

    move-result-object v1

    invoke-virtual {p1}, Lw3/b/a/h0/a;->g()Lw3/b/a/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lw3/b/a/h0/a;->e()Lw3/b/a/a;

    move-result-object v1

    invoke-virtual {p1}, Lw3/b/a/h0/a;->e()Lw3/b/a/a;

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

.method public abstract f()Lw3/b/a/c;
.end method

.method public g()Lw3/b/a/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/a;->f()Lw3/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object v0

    return-object v0
.end method

.method public abstract h()J
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/a;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Lw3/b/a/h0/a;->g()Lw3/b/a/d;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lw3/b/a/h0/a;->e()Lw3/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Property["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lw3/b/a/h0/a;->f()Lw3/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lw3/b/a/c;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
