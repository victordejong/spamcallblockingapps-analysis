.class public abstract Landroidx/media2/player/MediaPlayer$v;
.super Ln3/h/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/media2/common/SessionPlayer$b;",
        ">",
        "Ln3/h/a/a<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final h:Z

.field public i:Z

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/h/a/f<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/h/a/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media2/player/MediaPlayer$v;->i:Z

    .line 3
    iput-boolean p2, p0, Landroidx/media2/player/MediaPlayer$v;->h:Z

    .line 4
    new-instance p2, Landroidx/media2/player/MediaPlayer$v$a;

    invoke-direct {p2, p0}, Landroidx/media2/player/MediaPlayer$v$a;-><init>(Landroidx/media2/player/MediaPlayer$v;)V

    invoke-virtual {p0, p2, p1}, Ln3/h/a/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroidx/media2/common/SessionPlayer$b;

    .line 2
    invoke-super {p0, p1}, Ln3/h/a/a;->h(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/h/a/a;->i(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$v;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/h/a/f;

    .line 3
    iget-object v2, v1, Ln3/h/a/a;->a:Ljava/lang/Object;

    .line 4
    instance-of v2, v2, Ln3/h/a/a$c;

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ln3/h/a/a;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Ln3/h/a/a;->cancel(Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/media2/player/MediaPlayer$v;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/h/a/a;->a:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Ln3/h/a/a$c;

    if-nez v0, :cond_0

    .line 4
    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer$v;->i:Z

    .line 5
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$v;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer$v;->j:Ljava/util/List;

    .line 6
    :cond_0
    iget-object v0, p0, Ln3/h/a/a;->a:Ljava/lang/Object;

    .line 7
    instance-of v0, v0, Ln3/h/a/a$c;

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p0}, Ln3/h/a/a;->isDone()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v3, v2

    .line 9
    :goto_0
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$v;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 10
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$v;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/h/a/f;

    .line 11
    invoke-virtual {v0}, Ln3/h/a/a;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    iget-object v4, v0, Ln3/h/a/a;->a:Ljava/lang/Object;

    .line 13
    instance-of v4, v4, Ln3/h/a/a$c;

    if-nez v4, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ln3/h/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/SessionPlayer$b;

    .line 15
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer$b;->d()I

    move-result v4

    if-eqz v4, :cond_2

    if-eq v4, v1, :cond_2

    .line 16
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$v;->j()V

    .line 17
    invoke-super {p0, v0}, Ln3/h/a/a;->h(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$v;->j()V

    .line 19
    invoke-super {p0, v0}, Ln3/h/a/a;->i(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 20
    :cond_3
    :try_start_1
    invoke-super {p0, v0}, Ln3/h/a/a;->h(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 21
    invoke-super {p0, v0}, Ln3/h/a/a;->i(Ljava/lang/Throwable;)Z

    .line 22
    :cond_4
    :goto_1
    iget-object v0, p0, Ln3/h/a/a;->a:Ljava/lang/Object;

    .line 23
    instance-of v0, v0, Ln3/h/a/a$c;

    if-nez v0, :cond_6

    .line 24
    invoke-virtual {p0}, Ln3/h/a/a;->isDone()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :cond_6
    :goto_2
    return v1
.end method

.method public abstract l()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln3/h/a/f<",
            "TV;>;>;"
        }
    .end annotation
.end method
