.class public abstract Lg/e/a/a/k/c;
.super Lg/e/a/a/k/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e/a/a/k/c$a;
    }
.end annotation


# instance fields
.field protected f:Lg/e/a/a/k/c$a;


# direct methods
.method public constructor <init>(Lg/e/a/a/a/a;Lg/e/a/a/l/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lg/e/a/a/k/d;-><init>(Lg/e/a/a/a/a;Lg/e/a/a/l/j;)V

    .line 2
    new-instance p1, Lg/e/a/a/k/c$a;

    invoke-direct {p1, p0}, Lg/e/a/a/k/c$a;-><init>(Lg/e/a/a/k/c;)V

    iput-object p1, p0, Lg/e/a/a/k/c;->f:Lg/e/a/a/k/c$a;

    return-void
.end method


# virtual methods
.method protected h(Lg/e/a/a/e/i;Lg/e/a/a/h/b/b;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p2, p1}, Lg/e/a/a/h/b/d;->l(Lg/e/a/a/e/i;)I

    move-result v1

    int-to-float v1, v1

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p2}, Lg/e/a/a/h/b/d;->v0()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    invoke-virtual {p2}, Lg/e/a/a/a/a;->b()F

    move-result p2

    mul-float p1, p1, p2

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method protected i(Lg/e/a/a/h/b/d;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lg/e/a/a/h/b/d;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lg/e/a/a/h/b/d;->o0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lg/e/a/a/h/b/d;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
