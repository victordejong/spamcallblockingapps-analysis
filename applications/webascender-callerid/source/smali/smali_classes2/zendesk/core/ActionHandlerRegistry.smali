.class public interface abstract Lzendesk/core/ActionHandlerRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract add(Lzendesk/core/ActionHandler;)V
.end method

.method public abstract handlerByAction(Ljava/lang/String;)Lzendesk/core/ActionHandler;
.end method

.method public abstract remove(Lzendesk/core/ActionHandler;)V
.end method

.method public abstract updateSettings(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/l;",
            ">;)V"
        }
    .end annotation
.end method
