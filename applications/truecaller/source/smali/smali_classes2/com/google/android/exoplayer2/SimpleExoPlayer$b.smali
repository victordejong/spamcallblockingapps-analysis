.class public final Lcom/google/android/exoplayer2/SimpleExoPlayer$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/a/c/w0;

.field public c:Le/m/a/c/q1/f;

.field public d:Le/m/a/c/n1/h;

.field public e:Le/m/a/c/i0;

.field public f:Le/m/a/c/p1/f;

.field public g:Le/m/a/c/b1/a;

.field public h:Landroid/os/Looper;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 1
    new-instance v0, Le/m/a/c/a0;

    invoke-direct {v0, p1}, Le/m/a/c/a0;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    new-instance v13, Le/m/a/c/y;

    .line 3
    new-instance v3, Le/m/a/c/p1/o;

    const/4 v2, 0x1

    const/high16 v4, 0x10000

    invoke-direct {v3, v2, v4}, Le/m/a/c/p1/o;-><init>(ZI)V

    const/16 v4, 0x3a98

    const v5, 0xc350

    const v6, 0xc350

    const/16 v7, 0x9c4

    const/16 v8, 0x1388

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v13

    .line 4
    invoke-direct/range {v2 .. v12}, Le/m/a/c/y;-><init>(Le/m/a/c/p1/o;IIIIIIZIZ)V

    .line 5
    sget-object v2, Le/m/a/c/p1/p;->n:Ljava/util/Map;

    const-class v2, Le/m/a/c/p1/p;

    monitor-enter v2

    .line 6
    :try_start_0
    sget-object v3, Le/m/a/c/p1/p;->s:Le/m/a/c/p1/p;

    if-nez v3, :cond_0

    .line 7
    new-instance v3, Le/m/a/c/p1/p$a;

    invoke-direct {v3, p1}, Le/m/a/c/p1/p$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Le/m/a/c/p1/p$a;->a()Le/m/a/c/p1/p;

    move-result-object v3

    sput-object v3, Le/m/a/c/p1/p;->s:Le/m/a/c/p1/p;

    .line 8
    :cond_0
    sget-object v3, Le/m/a/c/p1/p;->s:Le/m/a/c/p1/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 9
    invoke-static {}, Le/m/a/c/q1/d0;->j()Landroid/os/Looper;

    move-result-object v2

    new-instance v4, Le/m/a/c/b1/a;

    sget-object v5, Le/m/a/c/q1/f;->a:Le/m/a/c/q1/f;

    invoke-direct {v4, v5}, Le/m/a/c/b1/a;-><init>(Le/m/a/c/q1/f;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->a:Landroid/content/Context;

    .line 12
    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->b:Le/m/a/c/w0;

    .line 13
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->d:Le/m/a/c/n1/h;

    .line 14
    iput-object v13, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->e:Le/m/a/c/i0;

    .line 15
    iput-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->f:Le/m/a/c/p1/f;

    .line 16
    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->h:Landroid/os/Looper;

    .line 17
    iput-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->g:Le/m/a/c/b1/a;

    .line 18
    iput-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->c:Le/m/a/c/q1/f;

    return-void

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v2

    throw p1
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->i:Z

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->b:Le/m/a/c/w0;

    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->d:Le/m/a/c/n1/h;

    iget-object v6, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->e:Le/m/a/c/i0;

    iget-object v7, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->f:Le/m/a/c/p1/f;

    iget-object v8, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->g:Le/m/a/c/b1/a;

    iget-object v9, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->c:Le/m/a/c/q1/f;

    iget-object v10, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->h:Landroid/os/Looper;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Landroid/content/Context;Le/m/a/c/w0;Le/m/a/c/n1/h;Le/m/a/c/i0;Le/m/a/c/p1/f;Le/m/a/c/b1/a;Le/m/a/c/q1/f;Landroid/os/Looper;)V

    return-object v0
.end method
