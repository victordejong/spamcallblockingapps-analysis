.class public Ln3/e/b/f1$a;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/h/a/b;

.field public final synthetic b:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Ln3/e/b/f1;Ln3/h/a/b;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/e/b/f1$a;->a:Ln3/h/a/b;

    iput-object p3, p0, Ln3/e/b/f1$a;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    instance-of p1, p1, Ln3/e/b/f1$e;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/e/b/f1$a;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1

    .line 3
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Ln3/e/b/f1$a;->a:Ln3/h/a/b;

    invoke-virtual {p1, v0}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    move-result p1

    .line 5
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Ln3/e/b/f1$a;->a:Ln3/h/a/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    move-result p1

    .line 3
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    return-void
.end method
