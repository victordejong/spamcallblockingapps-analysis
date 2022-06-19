.class public final Ln3/e/b/j1/x0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/b/j1/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ln3/e/b/j1/x0$b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ln3/e/b/j1/c1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/c1$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ln3/e/b/j1/c1$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ln3/e/b/j1/c1$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ln3/e/b/j1/x0$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Ln3/e/b/j1/x0$a;->c:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Ln3/e/b/j1/x0$a;->b:Ln3/e/b/j1/c1$a;

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ln3/e/b/j1/x0$b;

    .line 2
    iget-object v0, p0, Ln3/e/b/j1/x0$a;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/b/j1/w0;

    invoke-direct {v1, p0, p1}, Ln3/e/b/j1/w0;-><init>(Ln3/e/b/j1/x0$a;Ln3/e/b/j1/x0$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
