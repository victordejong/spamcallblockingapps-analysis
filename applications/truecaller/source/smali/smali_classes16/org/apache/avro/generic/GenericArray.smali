.class public interface abstract Lorg/apache/avro/generic/GenericArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Lorg/apache/avro/generic/GenericContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TT;>;",
        "Lorg/apache/avro/generic/GenericContainer;"
    }
.end annotation


# virtual methods
.method public abstract peek()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract prune()V
.end method

.method public abstract reset()V
.end method

.method public abstract reverse()V
.end method
