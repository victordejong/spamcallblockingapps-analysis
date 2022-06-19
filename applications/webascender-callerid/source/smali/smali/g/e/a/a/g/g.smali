.class public abstract Lg/e/a/a/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/e/a/a/g/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lg/e/a/a/c/g;",
        ">",
        "Ljava/lang/Object;",
        "Lg/e/a/a/g/e;"
    }
.end annotation


# instance fields
.field protected a:Lg/e/a/a/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/e/a/a/g/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/e/a/a/c/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/e/a/a/g/g;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lg/e/a/a/g/g;->a:Lg/e/a/a/c/g;

    return-void
.end method


# virtual methods
.method public a(FF)Lg/e/a/a/g/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lg/e/a/a/g/g;->a:Lg/e/a/a/c/g;

    invoke-virtual {v0, p1, p2}, Lg/e/a/a/c/g;->y(FF)F

    move-result v0

    .line 2
    iget-object v1, p0, Lg/e/a/a/g/g;->a:Lg/e/a/a/c/g;

    invoke-virtual {v1}, Lg/e/a/a/c/g;->getRadius()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-object v2

    .line 3
    :cond_0
    iget-object v0, p0, Lg/e/a/a/g/g;->a:Lg/e/a/a/c/g;

    invoke-virtual {v0, p1, p2}, Lg/e/a/a/c/g;->z(FF)F

    move-result v0

    .line 4
    iget-object v1, p0, Lg/e/a/a/g/g;->a:Lg/e/a/a/c/g;

    instance-of v3, v1, Lg/e/a/a/c/f;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v1}, Lg/e/a/a/c/c;->getAnimator()Lg/e/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lg/e/a/a/a/a;->c()F

    move-result v1

    div-float/2addr v0, v1

    .line 6
    :cond_1
    iget-object v1, p0, Lg/e/a/a/g/g;->a:Lg/e/a/a/c/g;

    invoke-virtual {v1, v0}, Lg/e/a/a/c/g;->A(F)I

    move-result v0

    if-ltz v0, :cond_3

    .line 7
    iget-object v1, p0, Lg/e/a/a/g/g;->a:Lg/e/a/a/c/g;

    invoke-virtual {v1}, Lg/e/a/a/c/c;->getData()Lg/e/a/a/e/g;

    move-result-object v1

    invoke-virtual {v1}, Lg/e/a/a/e/g;->l()Lg/e/a/a/h/b/d;

    move-result-object v1

    invoke-interface {v1}, Lg/e/a/a/h/b/d;->v0()I

    move-result v1

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v0, p1, p2}, Lg/e/a/a/g/g;->b(IFF)Lg/e/a/a/g/c;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v2
.end method

.method protected abstract b(IFF)Lg/e/a/a/g/c;
.end method
