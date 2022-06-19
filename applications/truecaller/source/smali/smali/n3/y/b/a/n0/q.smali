.class public final Ln3/y/b/a/n0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/n0/q$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/n0/q$a;

.field public final b:[J

.field public c:Landroid/media/AudioTrack;

.field public d:I

.field public e:I

.field public f:Ln3/y/b/a/n0/p;

.field public g:I

.field public h:Z

.field public i:J

.field public j:J

.field public k:J

.field public l:Ljava/lang/reflect/Method;

.field public m:J

.field public n:Z

.field public o:Z

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:I

.field public u:I

.field public v:J

.field public w:J

.field public x:J

.field public y:J


# direct methods
.method public constructor <init>(Ln3/y/b/a/n0/q$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/n0/q;->a:Ln3/y/b/a/n0/q$a;

    .line 3
    sget p1, Ln3/y/b/a/x0/x;->a:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_0

    .line 4
    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/n0/q;->l:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 5
    iput-object p1, p0, Ln3/y/b/a/n0/q;->b:[J

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/q;->g:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final b()J
    .locals 11

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/q;->c:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Ln3/y/b/a/n0/q;->v:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Ln3/y/b/a/n0/q;->v:J

    sub-long/2addr v0, v2

    .line 5
    iget v2, p0, Ln3/y/b/a/n0/q;->g:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 6
    iget-wide v2, p0, Ln3/y/b/a/n0/q;->y:J

    iget-wide v4, p0, Ln3/y/b/a/n0/q;->x:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_1

    return-wide v5

    :cond_1
    const-wide v7, 0xffffffffL

    .line 8
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v9, v0

    and-long/2addr v7, v9

    .line 9
    iget-boolean v0, p0, Ln3/y/b/a/n0/q;->h:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    .line 10
    iget-wide v9, p0, Ln3/y/b/a/n0/q;->q:J

    iput-wide v9, p0, Ln3/y/b/a/n0/q;->s:J

    .line 11
    :cond_2
    iget-wide v9, p0, Ln3/y/b/a/n0/q;->s:J

    add-long/2addr v7, v9

    .line 12
    :cond_3
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_6

    cmp-long v0, v7, v5

    if-nez v0, :cond_5

    .line 13
    iget-wide v9, p0, Ln3/y/b/a/n0/q;->q:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_5

    const/4 v0, 0x3

    if-ne v1, v0, :cond_5

    .line 14
    iget-wide v0, p0, Ln3/y/b/a/n0/q;->w:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ln3/y/b/a/n0/q;->w:J

    .line 16
    :cond_4
    iget-wide v0, p0, Ln3/y/b/a/n0/q;->q:J

    return-wide v0

    .line 17
    :cond_5
    iput-wide v3, p0, Ln3/y/b/a/n0/q;->w:J

    .line 18
    :cond_6
    iget-wide v0, p0, Ln3/y/b/a/n0/q;->q:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_7

    .line 19
    iget-wide v0, p0, Ln3/y/b/a/n0/q;->r:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ln3/y/b/a/n0/q;->r:J

    .line 20
    :cond_7
    iput-wide v7, p0, Ln3/y/b/a/n0/q;->q:J

    .line 21
    iget-wide v0, p0, Ln3/y/b/a/n0/q;->r:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v7, v0

    return-wide v7
.end method

.method public c(J)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/n0/q;->b()J

    move-result-wide v0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-gtz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Ln3/y/b/a/n0/q;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ln3/y/b/a/n0/q;->c:Landroid/media/AudioTrack;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Ln3/y/b/a/n0/q;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-eqz p1, :cond_2

    :cond_1
    move p2, v0

    :cond_2
    return p2
.end method
