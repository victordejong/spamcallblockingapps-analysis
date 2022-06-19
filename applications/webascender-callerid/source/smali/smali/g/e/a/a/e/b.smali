.class public Lg/e/a/a/e/b;
.super Lg/e/a/a/e/i;
.source "SourceFile"


# instance fields
.field private j:[F

.field private k:[Lg/e/a/a/g/i;

.field private l:F

.field private m:F


# virtual methods
.method public c()F
    .locals 1

    .line 1
    invoke-super {p0}, Lg/e/a/a/e/f;->c()F

    move-result v0

    return v0
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/b;->l:F

    return v0
.end method

.method public h()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/b;->m:F

    return v0
.end method

.method public i()[Lg/e/a/a/g/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/b;->k:[Lg/e/a/a/g/i;

    return-object v0
.end method

.method public j()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/b;->j:[F

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/b;->j:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
