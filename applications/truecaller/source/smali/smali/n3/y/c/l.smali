.class public Ln3/y/c/l;
.super Ln3/y/c/m$k;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroidx/media/AudioAttributesCompat;

.field public final synthetic g:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZLandroidx/media/AudioAttributesCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/l;->g:Ln3/y/c/m;

    iput-object p4, p0, Ln3/y/c/l;->f:Landroidx/media/AudioAttributesCompat;

    invoke-direct {p0, p1, p2, p3}, Ln3/y/c/m$k;-><init>(Ln3/y/c/m;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .line 1
    iget-object v0, p0, Ln3/y/c/l;->g:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    iget-object v1, p0, Ln3/y/c/l;->f:Landroidx/media/AudioAttributesCompat;

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v0, Ln3/y/c/j0;->l:Z

    .line 3
    iget-object v3, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 4
    sget-object v4, Ln3/y/c/h0;->a:Ln3/y/b/a/q0/i;

    .line 5
    invoke-virtual {v1}, Landroidx/media/AudioAttributesCompat;->getContentType()I

    move-result v4

    .line 6
    iget-object v5, v1, Landroidx/media/AudioAttributesCompat;->a:Landroidx/media/AudioAttributesImpl;

    invoke-interface {v5}, Landroidx/media/AudioAttributesImpl;->a()I

    move-result v5

    .line 7
    invoke-virtual {v1}, Landroidx/media/AudioAttributesCompat;->b()I

    move-result v1

    .line 8
    new-instance v6, Ln3/y/b/a/n0/c;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v5, v1, v7}, Ln3/y/b/a/n0/c;-><init>(IIILn3/y/b/a/n0/c$a;)V

    .line 9
    invoke-virtual {v3}, Ln3/y/b/a/k0;->n()V

    .line 10
    iget-object v1, v3, Ln3/y/b/a/k0;->s:Ln3/y/b/a/n0/c;

    invoke-static {v1, v6}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-nez v1, :cond_2

    .line 11
    iput-object v6, v3, Ln3/y/b/a/k0;->s:Ln3/y/b/a/n0/c;

    .line 12
    iget-object v1, v3, Ln3/y/b/a/k0;->b:[Ln3/y/b/a/h0;

    array-length v8, v1

    move v9, v5

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v1, v9

    .line 13
    invoke-interface {v10}, Ln3/y/b/a/h0;->p()I

    move-result v11

    if-ne v11, v2, :cond_0

    .line 14
    iget-object v11, v3, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 15
    invoke-virtual {v11, v10}, Ln3/y/b/a/t;->a(Ln3/y/b/a/g0$b;)Ln3/y/b/a/g0;

    move-result-object v10

    .line 16
    invoke-virtual {v10, v4}, Ln3/y/b/a/g0;->e(I)Ln3/y/b/a/g0;

    .line 17
    iget-boolean v11, v10, Ln3/y/b/a/g0;->h:Z

    xor-int/2addr v11, v2

    invoke-static {v11}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 18
    iput-object v6, v10, Ln3/y/b/a/g0;->e:Ljava/lang/Object;

    .line 19
    invoke-virtual {v10}, Ln3/y/b/a/g0;->c()Ln3/y/b/a/g0;

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, v3, Ln3/y/b/a/k0;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln3/y/b/a/n0/f;

    .line 21
    invoke-interface {v8, v6}, Ln3/y/b/a/n0/f;->p(Ln3/y/b/a/n0/c;)V

    goto :goto_1

    .line 22
    :cond_2
    iget-object v1, v3, Ln3/y/b/a/k0;->m:Ln3/y/b/a/n0/e;

    .line 23
    invoke-virtual {v3}, Ln3/y/b/a/k0;->d()Z

    move-result v6

    invoke-virtual {v3}, Ln3/y/b/a/k0;->e()I

    move-result v8

    .line 24
    iget-object v9, v1, Ln3/y/b/a/n0/e;->d:Ln3/y/b/a/n0/c;

    invoke-static {v9, v7}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 25
    iput-object v7, v1, Ln3/y/b/a/n0/e;->d:Ln3/y/b/a/n0/c;

    const/4 v7, 0x2

    .line 26
    iput v5, v1, Ln3/y/b/a/n0/e;->f:I

    const-string v5, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 27
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->q(ZLjava/lang/Object;)V

    if-eqz v6, :cond_4

    if-eq v8, v7, :cond_3

    if-ne v8, v4, :cond_4

    .line 28
    :cond_3
    invoke-virtual {v1}, Ln3/y/b/a/n0/e;->b()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v4, -0x1

    if-ne v8, v2, :cond_5

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    .line 29
    invoke-virtual {v1}, Ln3/y/b/a/n0/e;->b()I

    move-result v2

    goto :goto_2

    :cond_6
    move v2, v4

    :goto_2
    move v1, v2

    .line 30
    :goto_3
    invoke-virtual {v3}, Ln3/y/b/a/k0;->d()Z

    move-result v2

    invoke-virtual {v3, v2, v1}, Ln3/y/b/a/k0;->m(ZI)V

    .line 31
    iget v1, v0, Ln3/y/c/j0;->m:I

    if-eqz v1, :cond_7

    .line 32
    iget-object v2, v0, Ln3/y/c/j0;->h:Landroid/os/Handler;

    iget-object v0, v0, Ln3/y/c/j0;->i:Ln3/y/b/a/n0/u;

    .line 33
    new-instance v3, Ln3/y/c/i0;

    invoke-direct {v3, v0, v1}, Ln3/y/c/i0;-><init>(Ln3/y/b/a/n0/u;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method
