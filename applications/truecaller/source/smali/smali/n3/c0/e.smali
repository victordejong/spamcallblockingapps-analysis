.class public final Ln3/c0/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Throwable;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq3/a/p1;

.field public final synthetic c:Ls1/w/e;

.field public final synthetic d:Ljava/util/concurrent/Callable;

.field public final synthetic e:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Lq3/a/p1;Ls1/w/e;Ljava/util/concurrent/Callable;Landroid/os/CancellationSignal;)V
    .locals 0

    iput-object p1, p0, Ln3/c0/e;->b:Lq3/a/p1;

    iput-object p2, p0, Ln3/c0/e;->c:Ls1/w/e;

    iput-object p3, p0, Ln3/c0/e;->d:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Ln3/c0/e;->e:Landroid/os/CancellationSignal;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Ln3/c0/e;->e:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 3
    iget-object p1, p0, Ln3/c0/e;->b:Lq3/a/p1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
