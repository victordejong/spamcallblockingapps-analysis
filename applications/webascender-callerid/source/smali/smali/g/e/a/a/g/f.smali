.class public Lg/e/a/a/g/f;
.super Lg/e/a/a/g/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/e/a/a/g/g<",
        "Lg/e/a/a/c/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lg/e/a/a/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/e/a/a/g/g;-><init>(Lg/e/a/a/c/g;)V

    return-void
.end method


# virtual methods
.method protected b(IFF)Lg/e/a/a/g/c;
    .locals 10

    .line 1
    iget-object v0, p0, Lg/e/a/a/g/g;->a:Lg/e/a/a/c/g;

    check-cast v0, Lg/e/a/a/c/f;

    invoke-virtual {v0}, Lg/e/a/a/c/c;->getData()Lg/e/a/a/e/g;

    move-result-object v0

    check-cast v0, Lg/e/a/a/e/n;

    invoke-virtual {v0}, Lg/e/a/a/e/n;->u()Lg/e/a/a/h/b/h;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v1

    .line 3
    new-instance v9, Lg/e/a/a/g/c;

    int-to-float v3, p1

    invoke-virtual {v1}, Lg/e/a/a/e/f;->c()F

    move-result v4

    invoke-interface {v0}, Lg/e/a/a/h/b/d;->t0()Lg/e/a/a/d/i$a;

    move-result-object v8

    const/4 v7, 0x0

    move-object v2, v9

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lg/e/a/a/g/c;-><init>(FFFFILg/e/a/a/d/i$a;)V

    return-object v9
.end method
