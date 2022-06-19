.class public Ln3/e/b/f1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/b/f1;-><init>(Landroid/util/Size;Ln3/e/b/j1/b0;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/t1/c/d<",
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic b:Ln3/h/a/b;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ln3/e/b/f1;Lcom/google/common/util/concurrent/ListenableFuture;Ln3/h/a/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/e/b/f1$c;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Ln3/e/b/f1$c;->b:Ln3/h/a/b;

    iput-object p4, p0, Ln3/e/b/f1$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/e/b/f1$c;->b:Ln3/h/a/b;

    new-instance v2, Ln3/e/b/f1$e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ln3/e/b/f1$c;->c:Ljava/lang/String;

    const-string v5, " cancelled."

    invoke-static {v3, v4, v5}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ln3/e/b/f1$e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    move-result p1

    .line 3
    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Ln3/e/b/f1$c;->b:Ln3/h/a/b;

    invoke-virtual {p1, v1}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/view/Surface;

    .line 2
    iget-object p1, p0, Ln3/e/b/f1$c;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v0, p0, Ln3/e/b/f1$c;->b:Ln3/h/a/b;

    invoke-static {p1, v0}, Ln3/e/b/j1/t1/c/g;->e(Lcom/google/common/util/concurrent/ListenableFuture;Ln3/h/a/b;)V

    return-void
.end method
