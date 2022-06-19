.class public interface abstract Lcom/tenor/android/core/service/IAaidListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract failure(I)V
    .param p1    # I
        .annotation build Lcom/tenor/android/core/service/AaidInfo$State;
        .end annotation
    .end param
.end method

.method public abstract success(Ljava/lang/String;)V
.end method
