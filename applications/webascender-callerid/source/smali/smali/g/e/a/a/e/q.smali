.class public Lg/e/a/a/e/q;
.super Lg/e/a/a/e/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/e/a/a/e/g<",
        "Lg/e/a/a/h/b/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/e/a/a/e/g;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lg/e/a/a/g/c;)Lg/e/a/a/e/i;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lg/e/a/a/g/c;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lg/e/a/a/e/g;->e(I)Lg/e/a/a/h/b/d;

    move-result-object v0

    check-cast v0, Lg/e/a/a/h/b/i;

    invoke-virtual {p1}, Lg/e/a/a/g/c;->g()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v0, p1}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object p1

    return-object p1
.end method
