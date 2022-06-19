.class public interface abstract Lm/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/f$a;
    }
.end annotation


# virtual methods
.method public abstract M(Lm/g;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract clone()Lm/f;
.end method

.method public abstract execute()Lm/g0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract request()Lm/e0;
.end method

.method public abstract timeout()Ln/e0;
.end method
