.class public Ln3/y/c/d0;
.super Ln3/y/c/m$k;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/d0;->f:Ln3/y/c/m;

    invoke-direct {p0, p1, p2, p3}, Ln3/y/c/m$k;-><init>(Ln3/y/c/m;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 1
    iget-object v0, p0, Ln3/y/c/d0;->f:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    .line 2
    iget-boolean v1, v0, Ln3/y/c/j0;->n:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 4
    iget-object v0, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    .line 5
    iget-object v1, v0, Ln3/y/c/j0$e;->c:Ln3/y/b/a/k0;

    iget-object v0, v0, Ln3/y/c/j0$e;->e:Ln3/y/b/a/t0/j;

    .line 6
    invoke-virtual {v1}, Ln3/y/b/a/k0;->n()V

    .line 7
    iget-object v3, v1, Ln3/y/b/a/k0;->u:Ln3/y/b/a/t0/t;

    if-eqz v3, :cond_0

    .line 8
    iget-object v4, v1, Ln3/y/b/a/k0;->l:Ln3/y/b/a/m0/a;

    invoke-interface {v3, v4}, Ln3/y/b/a/t0/t;->h(Ln3/y/b/a/t0/c0;)V

    .line 9
    iget-object v3, v1, Ln3/y/b/a/k0;->l:Ln3/y/b/a/m0/a;

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v3, Ln3/y/b/a/m0/a;->d:Ln3/y/b/a/m0/a$b;

    .line 12
    iget-object v5, v5, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    .line 13
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/y/b/a/m0/a$a;

    .line 15
    iget v6, v5, Ln3/y/b/a/m0/a$a;->c:I

    iget-object v5, v5, Ln3/y/b/a/m0/a$a;->a:Ln3/y/b/a/t0/t$a;

    invoke-virtual {v3, v6, v5}, Ln3/y/b/a/m0/a;->r(ILn3/y/b/a/t0/t$a;)V

    goto :goto_0

    .line 16
    :cond_0
    iput-object v0, v1, Ln3/y/b/a/k0;->u:Ln3/y/b/a/t0/t;

    .line 17
    iget-object v3, v1, Ln3/y/b/a/k0;->d:Landroid/os/Handler;

    iget-object v4, v1, Ln3/y/b/a/k0;->l:Ln3/y/b/a/m0/a;

    invoke-virtual {v0, v3, v4}, Ln3/y/b/a/t0/b;->g(Landroid/os/Handler;Ln3/y/b/a/t0/c0;)V

    .line 18
    iget-object v3, v1, Ln3/y/b/a/k0;->m:Ln3/y/b/a/n0/e;

    invoke-virtual {v1}, Ln3/y/b/a/k0;->d()Z

    move-result v4

    .line 19
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 20
    invoke-virtual {v3}, Ln3/y/b/a/n0/e;->b()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    .line 21
    :goto_1
    invoke-virtual {v1}, Ln3/y/b/a/k0;->d()Z

    move-result v4

    invoke-virtual {v1, v4, v3}, Ln3/y/b/a/k0;->m(ZI)V

    .line 22
    iget-object v5, v1, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 23
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 24
    invoke-virtual {v5, v2, v2, v2, v1}, Ln3/y/b/a/t;->d(ZZZI)Ln3/y/b/a/d0;

    move-result-object v6

    .line 25
    iput-boolean v2, v5, Ln3/y/b/a/t;->n:Z

    .line 26
    iget v1, v5, Ln3/y/b/a/t;->m:I

    add-int/2addr v1, v2

    iput v1, v5, Ln3/y/b/a/t;->m:I

    .line 27
    iget-object v1, v5, Ln3/y/b/a/t;->f:Ln3/y/b/a/v;

    .line 28
    iget-object v1, v1, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    .line 29
    iget-object v1, v1, Ln3/y/b/a/x0/t;->a:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 31
    invoke-virtual/range {v5 .. v10}, Ln3/y/b/a/t;->l(Ln3/y/b/a/d0;ZIIZ)V

    return-void
.end method
