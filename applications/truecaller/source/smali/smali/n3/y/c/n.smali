.class public Ln3/y/c/n;
.super Ln3/y/c/m$k;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ln3/y/c/z0;

.field public final synthetic g:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZLn3/y/c/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/n;->g:Ln3/y/c/m;

    iput-object p4, p0, Ln3/y/c/n;->f:Ln3/y/c/z0;

    invoke-direct {p0, p1, p2, p3}, Ln3/y/c/m$k;-><init>(Ln3/y/c/m;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/y/c/n;->g:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    iget-object v1, p0, Ln3/y/c/n;->f:Ln3/y/c/z0;

    .line 2
    iput-object v1, v0, Ln3/y/c/j0;->t:Ln3/y/c/z0;

    .line 3
    iget-object v2, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 4
    sget-object v3, Ln3/y/c/h0;->a:Ln3/y/b/a/q0/i;

    .line 5
    invoke-virtual {v1}, Ln3/y/c/z0;->a()Ljava/lang/Float;

    move-result-object v3

    .line 6
    :try_start_0
    iget-object v1, v1, Ln3/y/c/z0;->a:Landroid/media/PlaybackParams;

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    new-instance v4, Ln3/y/b/a/e0;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v5

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :cond_1
    const/4 v1, 0x0

    .line 8
    invoke-direct {v4, v3, v5, v1}, Ln3/y/b/a/e0;-><init>(FFZ)V

    .line 9
    invoke-virtual {v2}, Ln3/y/b/a/k0;->n()V

    .line 10
    iget-object v1, v2, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, v1, Ln3/y/b/a/t;->q:Ln3/y/b/a/e0;

    invoke-virtual {v2, v4}, Ln3/y/b/a/e0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    iget v2, v1, Ln3/y/b/a/t;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ln3/y/b/a/t;->p:I

    .line 14
    iput-object v4, v1, Ln3/y/b/a/t;->q:Ln3/y/b/a/e0;

    .line 15
    iget-object v2, v1, Ln3/y/b/a/t;->f:Ln3/y/b/a/v;

    .line 16
    iget-object v2, v2, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v4}, Ln3/y/b/a/x0/t;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 17
    new-instance v2, Ln3/y/b/a/i;

    invoke-direct {v2, v4}, Ln3/y/b/a/i;-><init>(Ln3/y/b/a/e0;)V

    invoke-virtual {v1, v2}, Ln3/y/b/a/t;->g(Ln3/y/b/a/a$b;)V

    .line 18
    :goto_2
    invoke-virtual {v0}, Ln3/y/c/j0;->c()I

    move-result v1

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_3

    .line 19
    iget-object v1, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    invoke-virtual {v0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-virtual {v0}, Ln3/y/c/j0;->d()Ln3/y/c/y0;

    move-result-object v0

    check-cast v1, Ln3/y/c/m;

    invoke-virtual {v1, v2, v0}, Ln3/y/c/m;->j(Landroidx/media2/common/MediaItem;Ln3/y/c/y0;)V

    :cond_3
    return-void
.end method
