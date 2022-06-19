.class public final Ln3/z/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/z/y2;
.implements Lq3/a/i0;
.implements Lq3/a/w2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/z/y2<",
        "TT;>;",
        "Lq3/a/i0;",
        "Lq3/a/w2/d0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lq3/a/w2/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/d0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Lq3/a/w2/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Lq3/a/w2/d0<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/z/z2;->b:Lq3/a/i0;

    iput-object p2, p0, Ln3/z/z2;->a:Lq3/a/w2/d0;

    return-void
.end method


# virtual methods
.method public a(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ln3/z/z2;->a:Lq3/a/w2/d0;

    invoke-interface {v0, p1}, Lq3/a/w2/d0;->a(Ls1/z/b/l;)V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Ln3/z/z2;->b:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Ln3/z/z2;->a:Lq3/a/w2/d0;

    invoke-interface {v0}, Lq3/a/w2/d0;->i()Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Ln3/z/z2;->a:Lq3/a/w2/d0;

    invoke-interface {v0, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public u(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Ln3/z/z2;->a:Lq3/a/w2/d0;

    invoke-interface {v0, p1}, Lq3/a/w2/d0;->u(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Ln3/z/z2;->a:Lq3/a/w2/d0;

    invoke-interface {v0, p1, p2}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
