.class public final synthetic Ln3/e/d/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/d/z;

.field public final synthetic b:Landroid/view/Surface;

.field public final synthetic c:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic d:Ln3/e/b/f1;


# direct methods
.method public synthetic constructor <init>(Ln3/e/d/z;Landroid/view/Surface;Lcom/google/common/util/concurrent/ListenableFuture;Ln3/e/b/f1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/d/m;->a:Ln3/e/d/z;

    iput-object p2, p0, Ln3/e/d/m;->b:Landroid/view/Surface;

    iput-object p3, p0, Ln3/e/d/m;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p4, p0, Ln3/e/d/m;->d:Ln3/e/b/f1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Ln3/e/d/m;->a:Ln3/e/d/z;

    iget-object v1, p0, Ln3/e/d/m;->b:Landroid/view/Surface;

    iget-object v2, p0, Ln3/e/d/m;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v3, p0, Ln3/e/d/m;->d:Ln3/e/b/f1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TextureViewImpl"

    const-string v6, "Safe to release surface."

    .line 2
    invoke-static {v5, v6, v4}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v5, v0, Ln3/e/d/z;->l:Ln3/e/d/v$a;

    if-eqz v5, :cond_0

    .line 4
    check-cast v5, Ln3/e/d/d;

    invoke-virtual {v5}, Ln3/e/d/d;->a()V

    .line 5
    iput-object v4, v0, Ln3/e/d/z;->l:Ln3/e/d/v$a;

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 7
    iget-object v1, v0, Ln3/e/d/z;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    if-ne v1, v2, :cond_1

    .line 8
    iput-object v4, v0, Ln3/e/d/z;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    :cond_1
    iget-object v1, v0, Ln3/e/d/z;->h:Ln3/e/b/f1;

    if-ne v1, v3, :cond_2

    .line 10
    iput-object v4, v0, Ln3/e/d/z;->h:Ln3/e/b/f1;

    :cond_2
    return-void
.end method
