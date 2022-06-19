.class public final Le/a/i/a/k;
.super Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/ads/ui/VideoFrame;


# direct methods
.method public constructor <init>(Lcom/truecaller/ads/ui/VideoFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/i/a/k;->a:Lcom/truecaller/ads/ui/VideoFrame;

    invoke-direct {p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/a/k;->a:Lcom/truecaller/ads/ui/VideoFrame;

    .line 2
    sget v1, Lcom/truecaller/ads/ui/VideoFrame;->B:I

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/ads/ui/VideoFrame;->i1()V

    return-void
.end method

.method public onVideoMute(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/i/a/k;->a:Lcom/truecaller/ads/ui/VideoFrame;

    .line 2
    sget v0, Lcom/truecaller/ads/ui/VideoFrame;->B:I

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/ads/ui/VideoFrame;->i1()V

    return-void
.end method

.method public onVideoPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/a/k;->a:Lcom/truecaller/ads/ui/VideoFrame;

    .line 2
    sget v1, Lcom/truecaller/ads/ui/VideoFrame;->B:I

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/ads/ui/VideoFrame;->i1()V

    return-void
.end method

.method public onVideoPlay()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/a/k;->a:Lcom/truecaller/ads/ui/VideoFrame;

    .line 2
    sget v1, Lcom/truecaller/ads/ui/VideoFrame;->B:I

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/ads/ui/VideoFrame;->i1()V

    return-void
.end method

.method public onVideoStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/a/k;->a:Lcom/truecaller/ads/ui/VideoFrame;

    .line 2
    sget v1, Lcom/truecaller/ads/ui/VideoFrame;->B:I

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/ads/ui/VideoFrame;->i1()V

    return-void
.end method
