.class public final Lu/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lu/j/a;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final f:J

.field final g:Ljava/lang/String;

.field final h:Lu/f;


# direct methods
.method constructor <init>(JLjava/lang/String;Lu/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lu/j/a;->f:J

    const-string p1, "value == null"

    .line 3
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lu/j/a;->g:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lu/j/a;->h:Lu/f;

    return-void
.end method

.method public static d(JLjava/lang/String;Lu/f;)Lu/j/a;
    .locals 1

    .line 1
    new-instance v0, Lu/j/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lu/j/a;-><init>(JLjava/lang/String;Lu/f;)V

    return-object v0
.end method


# virtual methods
.method public c(Lu/j/a;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lu/j/a;->f:J

    iget-wide v3, p1, Lu/j/a;->f:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    return v0

    .line 2
    :cond_3
    iget-object v0, p0, Lu/j/a;->g:Ljava/lang/String;

    iget-object p1, p1, Lu/j/a;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lu/j/a;

    invoke-virtual {p0, p1}, Lu/j/a;->c(Lu/j/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lu/j/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lu/j/a;

    .line 3
    iget-wide v3, p0, Lu/j/a;->f:J

    iget-wide v5, p1, Lu/j/a;->f:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-object v1, p0, Lu/j/a;->g:Ljava/lang/String;

    iget-object v3, p1, Lu/j/a;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lu/j/a;->h:Lu/f;

    iget-object p1, p1, Lu/j/a;->h:Lu/f;

    if-nez v1, :cond_2

    if-nez p1, :cond_3

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v1, p1}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Lu/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/j/a;->h:Lu/f;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    const v0, 0xf4243

    int-to-long v1, v0

    .line 1
    iget-wide v3, p0, Lu/j/a;->f:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int v1, v0, v2

    mul-int v1, v1, v0

    .line 2
    iget-object v2, p0, Lu/j/a;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 3
    iget-object v0, p0, Lu/j/a;->h:Lu/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lu/f;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu/j/a;->f:J

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/j/a;->g:Ljava/lang/String;

    return-object v0
.end method
