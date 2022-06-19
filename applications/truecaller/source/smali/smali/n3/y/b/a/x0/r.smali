.class public final Ln3/y/b/a/x0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/x0/i;


# instance fields
.field public final a:Ln3/y/b/a/x0/a;

.field public b:Z

.field public c:J

.field public d:J

.field public e:Ln3/y/b/a/e0;


# direct methods
.method public constructor <init>(Ln3/y/b/a/x0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/x0/r;->a:Ln3/y/b/a/x0/a;

    .line 3
    sget-object p1, Ln3/y/b/a/e0;->e:Ln3/y/b/a/e0;

    iput-object p1, p0, Ln3/y/b/a/x0/r;->e:Ln3/y/b/a/e0;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ln3/y/b/a/x0/r;->c:J

    .line 2
    iget-boolean p1, p0, Ln3/y/b/a/x0/r;->b:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Ln3/y/b/a/x0/r;->a:Ln3/y/b/a/x0/a;

    invoke-interface {p1}, Ln3/y/b/a/x0/a;->a()J

    move-result-wide p1

    iput-wide p1, p0, Ln3/y/b/a/x0/r;->d:J

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/x0/r;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/x0/r;->a:Ln3/y/b/a/x0/a;

    invoke-interface {v0}, Ln3/y/b/a/x0/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Ln3/y/b/a/x0/r;->d:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ln3/y/b/a/x0/r;->b:Z

    :cond_0
    return-void
.end method

.method public getPlaybackParameters()Ln3/y/b/a/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/x0/r;->e:Ln3/y/b/a/e0;

    return-object v0
.end method

.method public r()J
    .locals 7

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/x0/r;->c:J

    .line 2
    iget-boolean v2, p0, Ln3/y/b/a/x0/r;->b:Z

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Ln3/y/b/a/x0/r;->a:Ln3/y/b/a/x0/a;

    invoke-interface {v2}, Ln3/y/b/a/x0/a;->a()J

    move-result-wide v2

    iget-wide v4, p0, Ln3/y/b/a/x0/r;->d:J

    sub-long/2addr v2, v4

    .line 4
    iget-object v4, p0, Ln3/y/b/a/x0/r;->e:Ln3/y/b/a/e0;

    iget v5, v4, Ln3/y/b/a/e0;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 5
    invoke-static {v2, v3}, Ln3/y/b/a/c;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 6
    :cond_0
    iget v4, v4, Ln3/y/b/a/e0;->d:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public u(Ln3/y/b/a/e0;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/x0/r;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/x0/r;->r()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ln3/y/b/a/x0/r;->a(J)V

    .line 3
    :cond_0
    iput-object p1, p0, Ln3/y/b/a/x0/r;->e:Ln3/y/b/a/e0;

    return-void
.end method
