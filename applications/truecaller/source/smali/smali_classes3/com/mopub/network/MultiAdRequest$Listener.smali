.class public interface abstract Lcom/mopub/network/MultiAdRequest$Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/MultiAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract synthetic onErrorResponse(Lcom/mopub/volley/VolleyError;)V
.end method

.method public abstract onSuccessResponse(Lcom/mopub/network/MultiAdResponse;)V
.end method
