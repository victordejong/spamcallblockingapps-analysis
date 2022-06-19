.class public Ln3/y/c/g0;
.super Ln3/y/c/m$k;
.source "SourceFile"


# instance fields
.field public final synthetic f:J

.field public final synthetic g:I

.field public final synthetic h:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/g0;->h:Ln3/y/c/m;

    iput-wide p4, p0, Ln3/y/c/g0;->f:J

    iput p6, p0, Ln3/y/c/g0;->g:I

    invoke-direct {p0, p1, p2, p3}, Ln3/y/c/m$k;-><init>(Ln3/y/c/m;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/y/c/g0;->h:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    iget-wide v1, p0, Ln3/y/c/g0;->f:J

    iget v3, p0, Ln3/y/c/g0;->g:I

    .line 2
    iget-object v4, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 3
    sget-object v5, Ln3/y/c/h0;->a:Ln3/y/b/a/q0/i;

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 4
    sget-object v3, Ln3/y/b/a/j0;->c:Ln3/y/b/a/j0;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 6
    :cond_1
    sget-object v3, Ln3/y/b/a/j0;->d:Ln3/y/b/a/j0;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v3, Ln3/y/b/a/j0;->f:Ln3/y/b/a/j0;

    goto :goto_0

    .line 8
    :cond_3
    sget-object v3, Ln3/y/b/a/j0;->e:Ln3/y/b/a/j0;

    .line 9
    :goto_0
    invoke-virtual {v4}, Ln3/y/b/a/k0;->n()V

    .line 10
    iget-object v4, v4, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    .line 11
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 12
    sget-object v3, Ln3/y/b/a/j0;->g:Ln3/y/b/a/j0;

    .line 13
    :cond_4
    iget-object v5, v4, Ln3/y/b/a/t;->r:Ln3/y/b/a/j0;

    invoke-virtual {v5, v3}, Ln3/y/b/a/j0;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 14
    iput-object v3, v4, Ln3/y/b/a/t;->r:Ln3/y/b/a/j0;

    .line 15
    iget-object v4, v4, Ln3/y/b/a/t;->f:Ln3/y/b/a/v;

    .line 16
    iget-object v4, v4, Ln3/y/b/a/v;->g:Ln3/y/b/a/x0/t;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v3}, Ln3/y/b/a/x0/t;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 17
    :cond_5
    iget-object v0, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    .line 18
    invoke-virtual {v0}, Ln3/y/b/a/k0;->getCurrentWindowIndex()I

    move-result v3

    invoke-virtual {v0, v3, v1, v2}, Ln3/y/b/a/k0;->i(IJ)V

    return-void
.end method
