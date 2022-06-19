.class public interface abstract Lcom/tenor/android/core/network/IApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(Lcom/tenor/android/core/network/ApiService$Builder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tenor/android/core/network/ApiService$Builder<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getApiKey()Ljava/lang/String;
.end method

.method public abstract getEndpoint()Ljava/lang/String;
.end method
