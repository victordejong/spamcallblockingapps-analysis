.class public final Le/a/k/a/k/b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/google/android/exoplayer2/ui/PlayerView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/b;->b:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/a/k/b;->b:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

    .line 2
    iget-object v0, v0, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;->g:Le/a/k/m/p;

    .line 3
    iget-object v0, v0, Le/a/k/m/p;->c:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.google.android.exoplayer2.ui.PlayerView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    return-object v0
.end method
