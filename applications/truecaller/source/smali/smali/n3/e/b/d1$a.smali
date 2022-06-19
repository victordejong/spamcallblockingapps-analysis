.class public Ln3/e/b/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/b/d1;-><init>(IIILandroid/os/Handler;Ln3/e/b/j1/i0;Ln3/e/b/j1/h0;Ln3/e/b/j1/k0;Ljava/lang/String;)V
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
.field public final synthetic a:Ln3/e/b/d1;


# direct methods
.method public constructor <init>(Ln3/e/b/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/d1$a;->a:Ln3/e/b/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "ProcessingSurfaceTextur"

    const-string v1, "Failed to extract Listenable<Surface>."

    .line 1
    invoke-static {v0, v1, p1}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/view/Surface;

    .line 2
    iget-object v0, p0, Ln3/e/b/d1$a;->a:Ln3/e/b/d1;

    iget-object v0, v0, Ln3/e/b/d1;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Ln3/e/b/d1$a;->a:Ln3/e/b/d1;

    iget-object v1, v1, Ln3/e/b/d1;->q:Ln3/e/b/j1/h0;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Ln3/e/b/j1/h0;->a(Landroid/view/Surface;I)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
