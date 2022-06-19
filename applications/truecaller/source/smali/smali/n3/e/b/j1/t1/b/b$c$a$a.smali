.class public Ln3/e/b/j1/t1/b/b$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/b/j1/t1/b/b$c$a;->a(Ln3/h/a/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/e/b/j1/t1/b/b$c$a;


# direct methods
.method public constructor <init>(Ln3/e/b/j1/t1/b/b$c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/j1/t1/b/b$c$a$a;->a:Ln3/e/b/j1/t1/b/b$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/t1/b/b$c$a$a;->a:Ln3/e/b/j1/t1/b/b$c$a;

    iget-object v0, v0, Ln3/e/b/j1/t1/b/b$c$a;->c:Ln3/e/b/j1/t1/b/b$c;

    iget-object v0, v0, Ln3/e/b/j1/t1/b/b$c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/e/b/j1/t1/b/b$c$a$a;->a:Ln3/e/b/j1/t1/b/b$c$a;

    iget-object v1, v0, Ln3/e/b/j1/t1/b/b$c$a;->a:Landroid/os/Handler;

    iget-object v0, v0, Ln3/e/b/j1/t1/b/b$c$a;->c:Ln3/e/b/j1/t1/b/b$c;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
