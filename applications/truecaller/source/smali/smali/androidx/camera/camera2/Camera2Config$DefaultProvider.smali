.class public final Landroidx/camera/camera2/Camera2Config$DefaultProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/q0$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraXConfig()Ln3/e/b/q0;
    .locals 7

    .line 1
    sget-object v0, Ln3/e/a/c;->a:Ln3/e/a/c;

    .line 2
    sget-object v1, Ln3/e/a/b;->a:Ln3/e/a/b;

    .line 3
    sget-object v2, Ln3/e/a/a;->a:Ln3/e/a/a;

    .line 4
    new-instance v3, Ln3/e/b/q0$a;

    invoke-direct {v3}, Ln3/e/b/q0$a;-><init>()V

    .line 5
    iget-object v4, v3, Ln3/e/b/q0$a;->a:Ln3/e/b/j1/a1;

    .line 6
    sget-object v5, Ln3/e/b/q0;->r:Ln3/e/b/j1/j0$a;

    .line 7
    sget-object v6, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    invoke-virtual {v4, v5, v6, v0}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 8
    iget-object v0, v3, Ln3/e/b/q0$a;->a:Ln3/e/b/j1/a1;

    .line 9
    sget-object v4, Ln3/e/b/q0;->s:Ln3/e/b/j1/j0$a;

    .line 10
    invoke-virtual {v0, v4, v6, v1}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 11
    iget-object v0, v3, Ln3/e/b/q0$a;->a:Ln3/e/b/j1/a1;

    .line 12
    sget-object v1, Ln3/e/b/q0;->t:Ln3/e/b/j1/j0$a;

    .line 13
    invoke-virtual {v0, v1, v6, v2}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 14
    new-instance v0, Ln3/e/b/q0;

    iget-object v1, v3, Ln3/e/b/q0$a;->a:Ln3/e/b/j1/a1;

    invoke-static {v1}, Ln3/e/b/j1/d1;->w(Ln3/e/b/j1/j0;)Ln3/e/b/j1/d1;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/e/b/q0;-><init>(Ln3/e/b/j1/d1;)V

    return-object v0
.end method
