.class public interface abstract Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageListener"
.end annotation


# virtual methods
.method public abstract synthetic onErrorResponse(Lcom/mopub/volley/VolleyError;)V
.end method

.method public abstract onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end method
