.class abstract Lio/realm/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lio/realm/a;

.field final b:Lio/realm/internal/OsList;

.field final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/a;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/p;->a:Lio/realm/a;

    .line 3
    iput-object p3, p0, Lio/realm/p;->c:Ljava/lang/Class;

    .line 4
    iput-object p2, p0, Lio/realm/p;->b:Lio/realm/internal/OsList;

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->h()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/p;->d(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lio/realm/p;->b()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lio/realm/p;->c(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected abstract c(Ljava/lang/Object;)V
.end method

.method protected abstract d(Ljava/lang/Object;)V
.end method

.method public abstract e(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lio/realm/p;->d(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/p;->g(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/realm/p;->h(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected g(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->u(J)V

    return-void
.end method

.method protected abstract h(ILjava/lang/Object;)V
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->x()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->y()Z

    move-result v0

    return v0
.end method

.method final k(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->z(J)V

    return-void
.end method

.method final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->A()V

    return-void
.end method

.method public final m(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lio/realm/p;->d(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/p;->e(I)Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/p;->n(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/realm/p;->o(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method protected n(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->I(J)V

    return-void
.end method

.method protected abstract o(ILjava/lang/Object;)V
.end method

.method public final p()I
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/p;->b:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->L()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    return v1
.end method
