.class public abstract Lq3/b/k/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Element:",
        "Ljava/lang/Object;",
        "Collection:",
        "Ljava/lang/Object;",
        "Builder:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq3/b/b<",
        "TCollection;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lq3/b/j/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/j/d;",
            ")TCollection;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lq3/b/k/a;->f()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lq3/b/k/a;->g(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-interface {p0}, Lq3/b/b;->a()Lq3/b/i/d;

    move-result-object v2

    invoke-interface {p1, v2}, Lq3/b/j/d;->a(Lq3/b/i/d;)Lq3/b/j/b;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lq3/b/j/b;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {p0}, Lq3/b/b;->a()Lq3/b/i/d;

    move-result-object v2

    invoke-interface {p1, v2}, Lq3/b/j/b;->p(Lq3/b/i/d;)I

    move-result v2

    .line 7
    invoke-virtual {p0, v0, v2}, Lq3/b/k/a;->h(Ljava/lang/Object;I)V

    .line 8
    invoke-virtual {p0, p1, v0, v1, v2}, Lq3/b/k/a;->i(Lq3/b/j/b;Ljava/lang/Object;II)V

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Lq3/b/b;->a()Lq3/b/i/d;

    move-result-object v2

    invoke-interface {p1, v2}, Lq3/b/j/b;->q(Lq3/b/i/d;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 10
    :goto_1
    invoke-interface {p0}, Lq3/b/b;->a()Lq3/b/i/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lq3/b/j/b;->b(Lq3/b/i/d;)V

    .line 11
    invoke-virtual {p0, v0}, Lq3/b/k/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/2addr v2, v1

    const/4 v3, 0x1

    .line 12
    invoke-virtual {p0, p1, v2, v0, v3}, Lq3/b/k/a;->j(Lq3/b/j/b;ILjava/lang/Object;Z)V

    goto :goto_0
.end method

.method public abstract f()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilder;"
        }
    .end annotation
.end method

.method public abstract g(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuilder;)I"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuilder;I)V"
        }
    .end annotation
.end method

.method public abstract i(Lq3/b/j/b;Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/j/b;",
            "TBuilder;II)V"
        }
    .end annotation
.end method

.method public abstract j(Lq3/b/j/b;ILjava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/j/b;",
            "ITBuilder;Z)V"
        }
    .end annotation
.end method

.method public abstract k(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuilder;)TCollection;"
        }
    .end annotation
.end method
