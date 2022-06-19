.class public final Le/a/i/c/a/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/a/q;->setVideoAd(Le/a/i/c/a/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/VideoView;

.field public final synthetic b:Le/a/i/c/a/q;


# direct methods
.method public constructor <init>(Landroid/widget/VideoView;Le/a/i/c/a/q;IILandroid/widget/MediaController;Le/a/i/c/a/n;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/a/q$a;->a:Landroid/widget/VideoView;

    iput-object p2, p0, Le/a/i/c/a/q$a;->b:Le/a/i/c/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/i/c/a/q$a;->b:Le/a/i/c/a/q;

    .line 2
    iget-object p1, p1, Le/a/i/c/a/q;->p:Le/a/i/h0/n;

    .line 3
    invoke-virtual {p1}, Le/a/i/h0/n;->a()Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/i/c/a/q$a;->a:Landroid/widget/VideoView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 5
    iget-object p1, p0, Le/a/i/c/a/q$a;->b:Le/a/i/c/a/q;

    invoke-virtual {p1}, Le/a/i/c/a/q;->getAdVideoPlayPause()Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/truecaller/ads/R$drawable;->ic_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
