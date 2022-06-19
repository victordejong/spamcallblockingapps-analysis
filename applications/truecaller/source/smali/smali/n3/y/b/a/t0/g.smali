.class public abstract Ln3/y/b/a/t0/g;
.super Ln3/y/b/a/t0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/t0/g$a;,
        Ln3/y/b/a/t0/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/y/b/a/t0/b;"
    }
.end annotation


# instance fields
.field public final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Ln3/y/b/a/t0/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/os/Handler;

.field public h:Ln3/y/b/a/w0/e0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/y/b/a/t0/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/t0/g;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/g$b;

    .line 2
    iget-object v1, v1, Ln3/y/b/a/t0/g$b;->a:Ln3/y/b/a/t0/t;

    invoke-interface {v1}, Ln3/y/b/a/t0/t;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/g$b;

    .line 2
    iget-object v2, v1, Ln3/y/b/a/t0/g$b;->a:Ln3/y/b/a/t0/t;

    iget-object v1, v1, Ln3/y/b/a/t0/g$b;->b:Ln3/y/b/a/t0/t$b;

    invoke-interface {v2, v1}, Ln3/y/b/a/t0/t;->d(Ln3/y/b/a/t0/t$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/g$b;

    .line 2
    iget-object v2, v1, Ln3/y/b/a/t0/g$b;->a:Ln3/y/b/a/t0/t;

    iget-object v1, v1, Ln3/y/b/a/t0/g$b;->b:Ln3/y/b/a/t0/t$b;

    invoke-interface {v2, v1}, Ln3/y/b/a/t0/t;->i(Ln3/y/b/a/t0/t$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/g$b;

    .line 2
    iget-object v2, v1, Ln3/y/b/a/t0/g$b;->a:Ln3/y/b/a/t0/t;

    iget-object v3, v1, Ln3/y/b/a/t0/g$b;->b:Ln3/y/b/a/t0/t$b;

    invoke-interface {v2, v3}, Ln3/y/b/a/t0/t;->f(Ln3/y/b/a/t0/t$b;)V

    .line 3
    iget-object v2, v1, Ln3/y/b/a/t0/g$b;->a:Ln3/y/b/a/t0/t;

    iget-object v1, v1, Ln3/y/b/a/t0/g$b;->c:Ln3/y/b/a/t0/c0;

    invoke-interface {v2, v1}, Ln3/y/b/a/t0/t;->h(Ln3/y/b/a/t0/c0;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t0/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public p(Ljava/lang/Object;Ln3/y/b/a/t0/t$a;)Ln3/y/b/a/t0/t$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ln3/y/b/a/t0/t$a;",
            ")",
            "Ln3/y/b/a/t0/t$a;"
        }
    .end annotation

    return-object p2
.end method

.method public q(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    return-wide p2
.end method

.method public r(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    return p2
.end method

.method public abstract s(Ljava/lang/Object;Ln3/y/b/a/t0/t;Ln3/y/b/a/l0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ln3/y/b/a/t0/t;",
            "Ln3/y/b/a/l0;",
            ")V"
        }
    .end annotation
.end method

.method public final t(Ljava/lang/Object;Ln3/y/b/a/t0/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ln3/y/b/a/t0/t;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 2
    new-instance v0, Ln3/y/b/a/t0/f;

    invoke-direct {v0, p0, p1}, Ln3/y/b/a/t0/f;-><init>(Ln3/y/b/a/t0/g;Ljava/lang/Object;)V

    .line 3
    new-instance v1, Ln3/y/b/a/t0/g$a;

    invoke-direct {v1, p0, p1}, Ln3/y/b/a/t0/g$a;-><init>(Ln3/y/b/a/t0/g;Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Ln3/y/b/a/t0/g;->f:Ljava/util/HashMap;

    new-instance v3, Ln3/y/b/a/t0/g$b;

    invoke-direct {v3, p2, v0, v1}, Ln3/y/b/a/t0/g$b;-><init>(Ln3/y/b/a/t0/t;Ln3/y/b/a/t0/t$b;Ln3/y/b/a/t0/c0;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Ln3/y/b/a/t0/g;->g:Landroid/os/Handler;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p2, p1, v1}, Ln3/y/b/a/t0/t;->g(Landroid/os/Handler;Ln3/y/b/a/t0/c0;)V

    .line 8
    iget-object p1, p0, Ln3/y/b/a/t0/g;->h:Ln3/y/b/a/w0/e0;

    invoke-interface {p2, v0, p1}, Ln3/y/b/a/t0/t;->b(Ln3/y/b/a/t0/t$b;Ln3/y/b/a/w0/e0;)V

    .line 9
    iget-object p1, p0, Ln3/y/b/a/t0/b;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 10
    invoke-interface {p2, v0}, Ln3/y/b/a/t0/t;->d(Ln3/y/b/a/t0/t$b;)V

    :cond_0
    return-void
.end method

.method public u(Ln3/y/b/a/t0/t$a;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
