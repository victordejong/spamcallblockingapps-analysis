.class public Ln3/m0/c0/t/x/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/m0/c0/t/x/a;


# instance fields
.field public final a:Ln3/m0/c0/t/k;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ln3/m0/c0/t/x/b;->b:Landroid/os/Handler;

    .line 3
    new-instance v0, Ln3/m0/c0/t/x/b$a;

    invoke-direct {v0, p0}, Ln3/m0/c0/t/x/b$a;-><init>(Ln3/m0/c0/t/x/b;)V

    iput-object v0, p0, Ln3/m0/c0/t/x/b;->c:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Ln3/m0/c0/t/k;

    invoke-direct {v0, p1}, Ln3/m0/c0/t/k;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    return-void
.end method
