.class public Lg/e/a/a/c/e;
.super Lg/e/a/a/c/b;
.source "SourceFile"

# interfaces
.implements Lg/e/a/a/h/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/e/a/a/c/b<",
        "Lg/e/a/a/e/j;",
        ">;",
        "Lg/e/a/a/h/a/d;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/e/a/a/c/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getLineData()Lg/e/a/a/e/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v0, Lg/e/a/a/e/j;

    return-object v0
.end method

.method protected o()V
    .locals 3

    .line 1
    invoke-super {p0}, Lg/e/a/a/c/b;->o()V

    .line 2
    new-instance v0, Lg/e/a/a/k/g;

    iget-object v1, p0, Lg/e/a/a/c/c;->z:Lg/e/a/a/a/a;

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-direct {v0, p0, v1, v2}, Lg/e/a/a/k/g;-><init>(Lg/e/a/a/h/a/d;Lg/e/a/a/a/a;Lg/e/a/a/l/j;)V

    iput-object v0, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lg/e/a/a/k/g;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lg/e/a/a/k/g;

    invoke-virtual {v0}, Lg/e/a/a/k/g;->w()V

    .line 3
    :cond_0
    invoke-super {p0}, Lg/e/a/a/c/c;->onDetachedFromWindow()V

    return-void
.end method
