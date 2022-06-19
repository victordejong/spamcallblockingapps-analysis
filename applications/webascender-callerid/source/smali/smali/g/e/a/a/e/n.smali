.class public Lg/e/a/a/e/n;
.super Lg/e/a/a/e/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/e/a/a/e/g<",
        "Lg/e/a/a/h/b/h;",
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

.method public constructor <init>(Lg/e/a/a/h/b/h;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lg/e/a/a/h/b/h;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-direct {p0, v0}, Lg/e/a/a/e/g;-><init>([Lg/e/a/a/h/b/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(I)Lg/e/a/a/h/b/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/e/a/a/e/n;->v(I)Lg/e/a/a/h/b/h;

    move-result-object p1

    return-object p1
.end method

.method public i(Lg/e/a/a/g/c;)Lg/e/a/a/e/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/e/n;->u()Lg/e/a/a/h/b/h;

    move-result-object v0

    invoke-virtual {p1}, Lg/e/a/a/g/c;->g()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v0, p1}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object p1

    return-object p1
.end method

.method public u()Lg/e/a/a/h/b/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/g;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/e/a/a/h/b/h;

    return-object v0
.end method

.method public v(I)Lg/e/a/a/h/b/h;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/e/n;->u()Lg/e/a/a/h/b/h;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public w()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lg/e/a/a/e/n;->u()Lg/e/a/a/h/b/h;

    move-result-object v2

    invoke-interface {v2}, Lg/e/a/a/h/b/d;->v0()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lg/e/a/a/e/n;->u()Lg/e/a/a/h/b/h;

    move-result-object v2

    invoke-interface {v2, v1}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v2

    check-cast v2, Lg/e/a/a/e/p;

    invoke-virtual {v2}, Lg/e/a/a/e/f;->c()F

    move-result v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
