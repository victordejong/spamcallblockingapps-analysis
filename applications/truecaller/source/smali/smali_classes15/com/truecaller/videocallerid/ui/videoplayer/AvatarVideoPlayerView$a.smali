.class public final Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;->f(Le/a/k/a/k/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

.field public final synthetic c:Le/a/k/a/k/a;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;Le/a/k/a/k/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView$a;->b:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

    iput-object p2, p0, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView$a;->c:Le/a/k/a/k/a;

    iput-object p3, p0, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView$a;->d:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView$a;->b:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

    invoke-virtual {v0}, Le/a/k/a/k/c;->getPresenter$video_caller_id_release()Le/a/k/a/k/w;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView$a;->c:Le/a/k/a/k/a;

    iget-object v2, p0, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView$a;->d:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Le/a/k/a/k/r;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "config"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v1, v3, Le/a/k/a/k/r;->f:Le/a/k/a/k/a;

    const/4 v0, 0x0

    .line 4
    iput-object v0, v3, Le/a/k/a/k/r;->g:Le/a/k/a/k/l;

    .line 5
    iput-object v2, v3, Le/a/k/a/k/r;->e:Ljava/lang/String;

    .line 6
    iput-object v0, v3, Le/a/k/a/k/r;->i:Ljava/lang/Boolean;

    .line 7
    new-instance v6, Le/a/k/a/k/u;

    invoke-direct {v6, v3, v1, v0}, Le/a/k/a/k/u;-><init>(Le/a/k/a/k/r;Le/a/k/a/k/a;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 8
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
