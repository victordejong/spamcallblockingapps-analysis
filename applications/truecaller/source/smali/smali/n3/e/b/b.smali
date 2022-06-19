.class public final synthetic Ln3/e/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Ln3/e/b/c0;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Ln3/e/b/j1/r0$a;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/c0;Ljava/util/concurrent/Executor;Ln3/e/b/j1/r0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/b;->a:Ln3/e/b/c0;

    iput-object p2, p0, Ln3/e/b/b;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Ln3/e/b/b;->c:Ln3/e/b/j1/r0$a;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    iget-object p1, p0, Ln3/e/b/b;->a:Ln3/e/b/c0;

    iget-object v0, p0, Ln3/e/b/b;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ln3/e/b/b;->c:Ln3/e/b/j1/r0$a;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Ln3/e/b/c;

    invoke-direct {v2, p1, v1}, Ln3/e/b/c;-><init>(Ln3/e/b/c0;Ln3/e/b/j1/r0$a;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
