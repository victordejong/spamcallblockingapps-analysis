.class public final synthetic Ln3/e/d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/d/x;

.field public final synthetic b:Ln3/e/b/f1;


# direct methods
.method public synthetic constructor <init>(Ln3/e/d/x;Ln3/e/b/f1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/d/h;->a:Ln3/e/d/x;

    iput-object p2, p0, Ln3/e/d/h;->b:Ln3/e/b/f1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ln3/e/d/h;->a:Ln3/e/d/x;

    iget-object v1, p0, Ln3/e/d/h;->b:Ln3/e/b/f1;

    .line 1
    iget-object v0, v0, Ln3/e/d/x;->f:Ln3/e/d/x$b;

    .line 2
    invoke-virtual {v0}, Ln3/e/d/x$b;->a()V

    .line 3
    iput-object v1, v0, Ln3/e/d/x$b;->b:Ln3/e/b/f1;

    .line 4
    iget-object v1, v1, Ln3/e/b/f1;->a:Landroid/util/Size;

    .line 5
    iput-object v1, v0, Ln3/e/d/x$b;->a:Landroid/util/Size;

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Ln3/e/d/x$b;->d:Z

    .line 7
    invoke-virtual {v0}, Ln3/e/d/x$b;->b()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const-string v3, "SurfaceViewImpl"

    const-string v4, "Wait for new Surface creation."

    .line 8
    invoke-static {v3, v4, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, v0, Ln3/e/d/x$b;->e:Ln3/e/d/x;

    iget-object v0, v0, Ln3/e/d/x;->e:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 10
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 11
    invoke-interface {v0, v2, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method
