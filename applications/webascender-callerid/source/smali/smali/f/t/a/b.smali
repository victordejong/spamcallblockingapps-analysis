.class public interface abstract Lf/t/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract G(Ljava/lang/String;)Lf/t/a/f;
.end method

.method public abstract L0(Lf/t/a/e;)Landroid/database/Cursor;
.end method

.method public abstract R0()Z
.end method

.method public abstract W(Lf/t/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end method

.method public abstract beginTransaction()V
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract h0()V
.end method

.method public abstract i0(Ljava/lang/String;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method

.method public abstract r0(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract t()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract w(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract z0()V
.end method
