.class public Ln3/r/a/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/d0/c;
.implements Ln3/v/c1;


# instance fields
.field public final a:Ln3/v/b1;

.field public b:Ln3/v/c0;

.field public c:Ln3/d0/b;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ln3/v/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln3/r/a/r0;->b:Ln3/v/c0;

    .line 3
    iput-object p1, p0, Ln3/r/a/r0;->c:Ln3/d0/b;

    .line 4
    iput-object p2, p0, Ln3/r/a/r0;->a:Ln3/v/b1;

    return-void
.end method


# virtual methods
.method public a(Ln3/v/u$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/r/a/r0;->b:Ln3/v/c0;

    const-string v1, "handleLifecycleEvent"

    .line 2
    invoke-virtual {v0, v1}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ln3/v/u$a;->a()Ln3/v/u$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/v/c0;->g(Ln3/v/u$b;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/r0;->b:Ln3/v/c0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/v/c0;

    invoke-direct {v0, p0}, Ln3/v/c0;-><init>(Ln3/v/b0;)V

    iput-object v0, p0, Ln3/r/a/r0;->b:Ln3/v/c0;

    .line 3
    new-instance v0, Ln3/d0/b;

    invoke-direct {v0, p0}, Ln3/d0/b;-><init>(Ln3/d0/c;)V

    .line 4
    iput-object v0, p0, Ln3/r/a/r0;->c:Ln3/d0/b;

    :cond_0
    return-void
.end method

.method public getLifecycle()Ln3/v/u;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/r/a/r0;->b()V

    .line 2
    iget-object v0, p0, Ln3/r/a/r0;->b:Ln3/v/c0;

    return-object v0
.end method

.method public getSavedStateRegistry()Ln3/d0/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/r/a/r0;->b()V

    .line 2
    iget-object v0, p0, Ln3/r/a/r0;->c:Ln3/d0/b;

    .line 3
    iget-object v0, v0, Ln3/d0/b;->b:Ln3/d0/a;

    return-object v0
.end method

.method public getViewModelStore()Ln3/v/b1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/r/a/r0;->b()V

    .line 2
    iget-object v0, p0, Ln3/r/a/r0;->a:Ln3/v/b1;

    return-object v0
.end method
