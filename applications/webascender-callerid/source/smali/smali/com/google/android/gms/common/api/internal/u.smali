.class public final Lcom/google/android/gms/common/api/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/n0;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/q0;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/q0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/u;->b:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/q0;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/u;)Lcom/google/android/gms/common/api/internal/q0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/q0;

    return-object p0
.end method


# virtual methods
.method public final A(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/q0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/q0;->h(Lcom/google/android/gms/common/b;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/q0;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/q0;->n:Lcom/google/android/gms/common/api/internal/f1;

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/u;->b:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/f1;->b(IZ)V

    return-void
.end method

.method public final B(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "R::",
            "Lcom/google/android/gms/common/api/i;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/d<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->D(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/d;

    return-object p1
.end method

.method public final C()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/u;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/q0;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/q0;->m:Lcom/google/android/gms/common/api/internal/l0;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l0;->w:Ljava/util/Set;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/u;->b:Z

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/u1;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/u1;->c()V

    goto :goto_0

    :cond_1
    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/q0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/q0;->h(Lcom/google/android/gms/common/b;)V

    return v2
.end method

.method public final D(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/d<",
            "+",
            "Lcom/google/android/gms/common/api/i;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/q0;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/q0;->m:Lcom/google/android/gms/common/api/internal/l0;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l0;->x:Lcom/google/android/gms/common/api/internal/z1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/z1;->b(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/q0;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/q0;->m:Lcom/google/android/gms/common/api/internal/l0;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/d;->u()Lcom/google/android/gms/common/api/a$c;

    move-result-object v1

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l0;->o:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    const-string v1, "Appropriate Api was not requested."

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/q0;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/q0;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/d;->u()Lcom/google/android/gms/common/api/a$c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/d;->y(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/common/internal/l0;

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/d;->w(Lcom/google/android/gms/common/api/a$b;)V

    goto :goto_0

    .line 9
    :cond_1
    check-cast v0, Lcom/google/android/gms/common/internal/l0;

    invoke-static {}, Lcom/google/android/gms/common/internal/l0;->u0()Lcom/google/android/gms/common/api/a$h;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    .line 10
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/q0;

    new-instance v1, Lcom/google/android/gms/common/api/internal/x;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/x;-><init>(Lcom/google/android/gms/common/api/internal/u;Lcom/google/android/gms/common/api/internal/n0;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/q0;->i(Lcom/google/android/gms/common/api/internal/p0;)V

    :goto_0
    return-object p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method final c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/u;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/u;->b:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/q0;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/q0;->m:Lcom/google/android/gms/common/api/internal/l0;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l0;->x:Lcom/google/android/gms/common/api/internal/z1;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/z1;->a()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->C()Z

    :cond_0
    return-void
.end method

.method public final q(Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/api/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/b;",
            "Lcom/google/android/gms/common/api/a<",
            "*>;Z)V"
        }
    .end annotation

    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/u;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/u;->b:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/q0;

    new-instance v1, Lcom/google/android/gms/common/api/internal/w;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/w;-><init>(Lcom/google/android/gms/common/api/internal/u;Lcom/google/android/gms/common/api/internal/n0;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/q0;->i(Lcom/google/android/gms/common/api/internal/p0;)V

    :cond_0
    return-void
.end method

.method public final s(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
