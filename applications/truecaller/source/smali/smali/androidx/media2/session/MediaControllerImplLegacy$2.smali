.class public Landroidx/media2/session/MediaControllerImplLegacy$2;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media2/session/SessionResult;

    invoke-direct {v0, p1, p2}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    const/4 p1, 0x0

    throw p1
.end method
