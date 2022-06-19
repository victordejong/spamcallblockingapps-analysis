.class public final Le/a/k/a/k/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/k/c;->d(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.ui.videoplayer.BaseVideoPlayerView$createExoPlayer$2$1"
    f = "BaseVideoPlayerView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field public final synthetic f:Le/a/k/a/k/c;

.field public final synthetic g:Ls1/w/d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Ls1/w/d;Le/a/k/a/k/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/c$a;->e:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iput-object p3, p0, Le/a/k/a/k/c$a;->f:Le/a/k/a/k/c;

    iput-object p4, p0, Le/a/k/a/k/c$a;->g:Ls1/w/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/a/k/c$a;

    iget-object v0, p0, Le/a/k/a/k/c$a;->e:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Le/a/k/a/k/c$a;->f:Le/a/k/a/k/c;

    iget-object v2, p0, Le/a/k/a/k/c$a;->g:Ls1/w/d;

    invoke-direct {p1, v0, p2, v1, v2}, Le/a/k/a/k/c$a;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Ls1/w/d;Le/a/k/a/k/c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/k/a/k/c$a;->e:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Le/a/k/a/k/c$a;->f:Le/a/k/a/k/c;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-string p2, "player"

    .line 4
    invoke-static {v0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Le/a/k/a/k/c;->e(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object p2

    .line 5
    iget-object v0, v1, Le/a/k/a/k/c;->e:Ls1/z/b/l;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/s;

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/k/a/k/c$a;->f:Le/a/k/a/k/c;

    iget-object v0, p0, Le/a/k/a/k/c$a;->e:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-string v1, "player"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Le/a/k/a/k/c;->e(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/a/k/a/k/c$a;->f:Le/a/k/a/k/c;

    .line 4
    iget-object v0, v0, Le/a/k/a/k/c;->e:Ls1/z/b/l;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 6
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
