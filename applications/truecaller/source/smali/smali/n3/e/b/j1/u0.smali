.class public Ln3/e/b/j1/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/j1/x0$a;

.field public final synthetic b:Ln3/e/b/j1/x0$a;

.field public final synthetic c:Ln3/e/b/j1/x0;


# direct methods
.method public constructor <init>(Ln3/e/b/j1/x0;Ln3/e/b/j1/x0$a;Ln3/e/b/j1/x0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/j1/u0;->c:Ln3/e/b/j1/x0;

    iput-object p2, p0, Ln3/e/b/j1/u0;->a:Ln3/e/b/j1/x0$a;

    iput-object p3, p0, Ln3/e/b/j1/u0;->b:Ln3/e/b/j1/x0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/u0;->c:Ln3/e/b/j1/x0;

    iget-object v0, v0, Ln3/e/b/j1/x0;->a:Ln3/v/k0;

    iget-object v1, p0, Ln3/e/b/j1/u0;->a:Ln3/e/b/j1/x0$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->k(Ln3/v/l0;)V

    .line 2
    iget-object v0, p0, Ln3/e/b/j1/u0;->c:Ln3/e/b/j1/x0;

    iget-object v0, v0, Ln3/e/b/j1/x0;->a:Ln3/v/k0;

    iget-object v1, p0, Ln3/e/b/j1/u0;->b:Ln3/e/b/j1/x0$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->g(Ln3/v/l0;)V

    return-void
.end method
