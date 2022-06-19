.class public final synthetic Ln3/e/a/e/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/h2;

.field public final synthetic b:Ln3/h/a/b;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/h2;Ln3/h/a/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/s0;->a:Ln3/e/a/e/h2;

    iput-object p2, p0, Ln3/e/a/e/s0;->b:Ln3/h/a/b;

    iput-boolean p3, p0, Ln3/e/a/e/s0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ln3/e/a/e/s0;->a:Ln3/e/a/e/h2;

    iget-object v1, p0, Ln3/e/a/e/s0;->b:Ln3/h/a/b;

    iget-boolean v2, p0, Ln3/e/a/e/s0;->c:Z

    .line 1
    iget-boolean v3, v0, Ln3/e/a/e/h2;->e:Z

    if-nez v3, :cond_0

    .line 2
    iget-object v2, v0, Ln3/e/a/e/h2;->b:Ln3/v/k0;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln3/e/a/e/h2;->a(Ln3/v/k0;Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ln3/e/b/i0$a;

    const-string v2, "Camera is not active."

    invoke-direct {v0, v2}, Ln3/e/b/i0$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v2, v0, Ln3/e/a/e/h2;->g:Z

    .line 5
    iget-object v3, v0, Ln3/e/a/e/h2;->a:Ln3/e/a/e/z0;

    invoke-virtual {v3, v2}, Ln3/e/a/e/z0;->j(Z)V

    .line 6
    iget-object v3, v0, Ln3/e/a/e/h2;->b:Ln3/v/k0;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ln3/e/a/e/h2;->a(Ln3/v/k0;Ljava/lang/Object;)V

    .line 7
    iget-object v2, v0, Ln3/e/a/e/h2;->f:Ln3/h/a/b;

    if-eqz v2, :cond_1

    const-string v3, "There is a new enableTorch being set"

    .line 8
    invoke-static {v3, v2}, Le/d/c/a/a;->F0(Ljava/lang/String;Ln3/h/a/b;)V

    .line 9
    :cond_1
    iput-object v1, v0, Ln3/e/a/e/h2;->f:Ln3/h/a/b;

    :goto_0
    return-void
.end method
