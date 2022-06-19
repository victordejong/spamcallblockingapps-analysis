.class public final Lu/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lu/j/b;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Lu/f;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lu/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lu/j/b;->f:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lu/j/b;->g:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lu/j/b;->h:Lu/f;

    return-void
.end method


# virtual methods
.method public c(Lu/j/b;)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lu/j/b;->f:Ljava/lang/String;

    iget-object p1, p1, Lu/j/b;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lu/j/b;

    invoke-virtual {p0, p1}, Lu/j/b;->c(Lu/j/b;)I

    move-result p1

    return p1
.end method

.method public d()Lu/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/j/b;->h:Lu/f;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lu/j/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lu/j/b;

    .line 3
    iget-object v1, p0, Lu/j/b;->f:Ljava/lang/String;

    iget-object v3, p1, Lu/j/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lu/j/b;->g:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lu/j/b;->g:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lu/j/b;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lu/j/b;->h:Lu/f;

    iget-object p1, p1, Lu/j/b;->h:Lu/f;

    if-nez v1, :cond_3

    if-nez p1, :cond_4

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {v1, p1}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/j/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lu/j/b;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Lu/j/b;->g:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v1, p0, Lu/j/b;->h:Lu/f;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lu/f;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/j/b;->g:Ljava/lang/String;

    return-object v0
.end method
