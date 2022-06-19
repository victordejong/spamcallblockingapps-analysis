.class public Ln3/v/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/v/u0$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/v/c0;

.field public final b:Landroid/os/Handler;

.field public c:Ln3/v/u0$a;


# direct methods
.method public constructor <init>(Ln3/v/b0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/v/c0;

    invoke-direct {v0, p1}, Ln3/v/c0;-><init>(Ln3/v/b0;)V

    iput-object v0, p0, Ln3/v/u0;->a:Ln3/v/c0;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ln3/v/u0;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Ln3/v/u$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/v/u0;->c:Ln3/v/u0$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/v/u0$a;->run()V

    .line 3
    :cond_0
    new-instance v0, Ln3/v/u0$a;

    iget-object v1, p0, Ln3/v/u0;->a:Ln3/v/c0;

    invoke-direct {v0, v1, p1}, Ln3/v/u0$a;-><init>(Ln3/v/c0;Ln3/v/u$a;)V

    iput-object v0, p0, Ln3/v/u0;->c:Ln3/v/u0$a;

    .line 4
    iget-object p1, p0, Ln3/v/u0;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
