.class public abstract Le/a/a/c/r8/d;
.super Ln3/k/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/a/a/c/r8/c;",
        ">",
        "Ln3/k/h/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/k/h/f;-><init>(I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Le/a/a/c/r8/d;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/r8/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/a/a/c/r8/d;->c:I

    .line 2
    invoke-super {p0}, Ln3/k/h/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/r8/c;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/a/c/r8/d;->e()Le/a/a/c/r8/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Le/a/a/c/r8/c;

    .line 2
    iget v0, p0, Le/a/a/c/r8/d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le/a/a/c/r8/d;->c:I

    .line 3
    invoke-super {p0, p1}, Ln3/k/h/f;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Le/a/a/c/r8/d;->d(Le/a/a/c/r8/c;)V

    :cond_0
    return v0
.end method

.method public c()Le/a/a/c/r8/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/a/c/r8/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/a/a/c/r8/d;->c:I

    .line 2
    invoke-super {p0}, Ln3/k/h/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/r8/c;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/a/c/r8/d;->e()Le/a/a/c/r8/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract d(Le/a/a/c/r8/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract e()Le/a/a/c/r8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public f(Le/a/a/c/r8/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/a/c/r8/d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le/a/a/c/r8/d;->c:I

    .line 2
    invoke-super {p0, p1}, Ln3/k/h/f;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Le/a/a/c/r8/d;->d(Le/a/a/c/r8/c;)V

    :cond_0
    return v0
.end method
