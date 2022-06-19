.class public final Ln3/y/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/x0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/e$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/x0/r;

.field public final b:Ln3/y/b/a/e$a;

.field public c:Ln3/y/b/a/h0;

.field public d:Ln3/y/b/a/x0/i;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ln3/y/b/a/e$a;Ln3/y/b/a/x0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/e;->b:Ln3/y/b/a/e$a;

    .line 3
    new-instance p1, Ln3/y/b/a/x0/r;

    invoke-direct {p1, p2}, Ln3/y/b/a/x0/r;-><init>(Ln3/y/b/a/x0/a;)V

    iput-object p1, p0, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Ln3/y/b/a/e;->e:Z

    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Ln3/y/b/a/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/e;->d:Ln3/y/b/a/x0/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ln3/y/b/a/x0/i;->getPlaybackParameters()Ln3/y/b/a/e0;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    .line 4
    iget-object v0, v0, Ln3/y/b/a/x0/r;->e:Ln3/y/b/a/e0;

    :goto_0
    return-object v0
.end method

.method public r()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/e;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    invoke-virtual {v0}, Ln3/y/b/a/x0/r;->r()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln3/y/b/a/e;->d:Ln3/y/b/a/x0/i;

    invoke-interface {v0}, Ln3/y/b/a/x0/i;->r()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public u(Ln3/y/b/a/e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/e;->d:Ln3/y/b/a/x0/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ln3/y/b/a/x0/i;->u(Ln3/y/b/a/e0;)V

    .line 3
    iget-object p1, p0, Ln3/y/b/a/e;->d:Ln3/y/b/a/x0/i;

    invoke-interface {p1}, Ln3/y/b/a/x0/i;->getPlaybackParameters()Ln3/y/b/a/e0;

    move-result-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/e;->a:Ln3/y/b/a/x0/r;

    invoke-virtual {v0, p1}, Ln3/y/b/a/x0/r;->u(Ln3/y/b/a/e0;)V

    return-void
.end method
