.class public interface abstract Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/MultiAdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServerOverrideListener"
.end annotation


# virtual methods
.method public abstract onForceExplicitNo(Ljava/lang/String;)V
.end method

.method public abstract onForceGdprApplies()V
.end method

.method public abstract onInvalidateConsent(Ljava/lang/String;)V
.end method

.method public abstract onReacquireConsent(Ljava/lang/String;)V
.end method

.method public abstract onRequestSuccess(Ljava/lang/String;)V
.end method
