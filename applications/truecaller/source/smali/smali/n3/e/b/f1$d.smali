.class public Ln3/e/b/f1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/b/f1;->a(Landroid/view/Surface;Ljava/util/concurrent/Executor;Ln3/k/h/b;)V
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
.field public final synthetic a:Ln3/k/h/b;

.field public final synthetic b:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Ln3/e/b/f1;Ln3/k/h/b;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/e/b/f1$d;->a:Ln3/k/h/b;

    iput-object p3, p0, Ln3/e/b/f1$d;->b:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Ln3/e/b/f1$e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera surface session should only fail with request cancellation. Instead failed due to:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 2
    iget-object p1, p0, Ln3/e/b/f1$d;->a:Ln3/k/h/b;

    iget-object v0, p0, Ln3/e/b/f1$d;->b:Landroid/view/Surface;

    .line 3
    new-instance v1, Ln3/e/b/f0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ln3/e/b/f0;-><init>(ILandroid/view/Surface;)V

    .line 4
    invoke-interface {p1, v1}, Ln3/k/h/b;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Ln3/e/b/f1$d;->a:Ln3/k/h/b;

    iget-object v0, p0, Ln3/e/b/f1$d;->b:Landroid/view/Surface;

    .line 3
    new-instance v1, Ln3/e/b/f0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Ln3/e/b/f0;-><init>(ILandroid/view/Surface;)V

    .line 4
    invoke-interface {p1, v1}, Ln3/k/h/b;->accept(Ljava/lang/Object;)V

    return-void
.end method
