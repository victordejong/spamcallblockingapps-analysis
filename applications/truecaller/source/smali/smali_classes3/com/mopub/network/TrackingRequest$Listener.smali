.class public interface abstract Lcom/mopub/network/TrackingRequest$Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/TrackingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract synthetic onErrorResponse(Lcom/mopub/volley/VolleyError;)V
.end method

.method public abstract onResponse(Ljava/lang/String;)V
.end method
