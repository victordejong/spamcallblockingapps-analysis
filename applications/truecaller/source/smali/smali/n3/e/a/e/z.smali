.class public final synthetic Ln3/e/a/e/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/a/e/j1$a;


# instance fields
.field public final synthetic a:Ln3/e/a/e/r1;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/z;->a:Ln3/e/a/e/r1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/CameraCaptureSession;IZ)V
    .locals 1

    iget-object p1, p0, Ln3/e/a/e/z;->a:Ln3/e/a/e/r1;

    .line 1
    iget-object p2, p1, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    iget-object p3, p1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    sget-object v0, Ln3/e/a/e/r1$c;->e:Ln3/e/a/e/r1$c;

    if-ne p3, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ln3/e/a/e/r1;->f()V

    .line 4
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
