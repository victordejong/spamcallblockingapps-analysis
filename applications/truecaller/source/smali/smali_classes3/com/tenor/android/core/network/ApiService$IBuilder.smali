.class public interface abstract Lcom/tenor/android/core/network/ApiService$IBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenor/android/core/network/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract apiKey(Ljava/lang/String;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract build()Lcom/tenor/android/core/network/IApiService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tenor/android/core/network/IApiService<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract endpoint(Ljava/lang/String;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract gson(Le/m/e/k;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/k;",
            ")",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract interceptor(Lu3/b0;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/b0;",
            ")",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract interceptors(Ljava/util/List;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu3/b0;",
            ">;)",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract protocol(Ljava/lang/String;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/tenor/android/core/network/constant/Protocol;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract server(Ljava/lang/String;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract timeout(I)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation
.end method
