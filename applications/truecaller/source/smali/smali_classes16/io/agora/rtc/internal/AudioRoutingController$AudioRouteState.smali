.class public interface abstract Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioRouteState"
.end annotation


# virtual methods
.method public abstract btPlugInProcess(II)V
.end method

.method public abstract btPlugOutProcess(II)V
.end method

.method public abstract btScoConnectProcess(II)V
.end method

.method public abstract btScoDisConnectProcess(II)V
.end method

.method public abstract commStreamEvtProcess(II)V
.end method

.method public abstract forceEarpieceProcess(II)V
.end method

.method public abstract forceSpkProcess(II)V
.end method

.method public abstract headSetPlugInProcess(II)V
.end method

.method public abstract headSetPlugOutProcess(II)V
.end method

.method public abstract musicStreamEvtProcess(II)V
.end method

.method public abstract phoneChangeEvtProcess(II)V
.end method

.method public abstract switchtoTargetRoute()V
.end method
