.class final Lcom/google/common/util/concurrent/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final f:Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/a<",
            "TV;>;"
        }
    .end annotation
.end field

.field final g:Lcom/google/common/util/concurrent/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c<",
            "+TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$g;->f:Lcom/google/common/util/concurrent/a;

    invoke-static {v0}, Lcom/google/common/util/concurrent/a;->e(Lcom/google/common/util/concurrent/a;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$g;->g:Lcom/google/common/util/concurrent/c;

    invoke-static {v0}, Lcom/google/common/util/concurrent/a;->g(Lcom/google/common/util/concurrent/c;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/a;->b()Lcom/google/common/util/concurrent/a$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/a$g;->f:Lcom/google/common/util/concurrent/a;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/common/util/concurrent/a$b;->b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$g;->f:Lcom/google/common/util/concurrent/a;

    invoke-static {v0}, Lcom/google/common/util/concurrent/a;->h(Lcom/google/common/util/concurrent/a;)V

    :cond_1
    return-void
.end method
