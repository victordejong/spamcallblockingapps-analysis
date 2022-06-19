.class public final Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->q(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$bindCameraUseCases$2"
    f = "CameraViewManager.kt"
    l = {
        0x17a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;

    invoke-direct {v0, p2}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;-><init>(Ls1/w/d;)V

    iput-object p1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;

    invoke-direct {v0, p2}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;-><init>(Ls1/w/d;)V

    iput-object p1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->j:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->i:Ljava/lang/Object;

    check-cast v0, Ln3/e/b/c1;

    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->h:Ljava/lang/Object;

    check-cast v1, Ln3/e/b/c1;

    iget-object v3, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->g:Ljava/lang/Object;

    check-cast v3, Ln3/e/b/m0;

    iget-object v4, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->f:Ljava/lang/Object;

    check-cast v4, Ln3/e/c/c;

    iget-object v5, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->e:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->e:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 4
    invoke-static {v5}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->o(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :cond_2
    iget-object v4, v5, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->d:Ln3/e/c/c;

    if-eqz v4, :cond_4

    .line 7
    iget-object p1, v5, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->o:Landroidx/camera/view/PreviewView;

    .line 8
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object p1

    const-string v1, "previewView.display"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 9
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 10
    iget v3, v5, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->f:I

    .line 11
    new-instance v6, Ln3/e/b/j1/t0;

    invoke-direct {v6, v3}, Ln3/e/b/j1/t0;-><init>(I)V

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v3, Ln3/e/b/m0;

    invoke-direct {v3, v1}, Ln3/e/b/m0;-><init>(Ljava/util/LinkedHashSet;)V

    const-string v1, "CameraSelector.Builder()\u2026ing)\n            .build()"

    .line 13
    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v1, Ln3/e/b/c1$b;

    invoke-direct {v1}, Ln3/e/b/c1$b;-><init>()V

    .line 15
    sget-object v6, Le/a/k/c/o;->a:Landroid/util/Size;

    .line 16
    iget-object v7, v1, Ln3/e/b/c1$b;->a:Ln3/e/b/j1/a1;

    .line 17
    sget-object v8, Ln3/e/b/j1/q0;->d:Ln3/e/b/j1/j0$a;

    .line 18
    sget-object v9, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    invoke-virtual {v7, v8, v9, v6}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 19
    iget-object v7, v1, Ln3/e/b/c1$b;->a:Ln3/e/b/j1/a1;

    .line 20
    sget-object v10, Ln3/e/b/j1/q0;->c:Ln3/e/b/j1/j0$a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 21
    invoke-virtual {v7, v10, v9, v11}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v1}, Ln3/e/b/c1$b;->a()Ln3/e/b/c1;

    move-result-object v1

    const-string v7, "Preview.Builder()\n      \u2026ion)\n            .build()"

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v11, Ln3/e/b/c1$b;

    invoke-direct {v11}, Ln3/e/b/c1$b;-><init>()V

    .line 24
    iget-object v12, v11, Ln3/e/b/c1$b;->a:Ln3/e/b/j1/a1;

    .line 25
    invoke-virtual {v12, v8, v9, v6}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 26
    iget-object v6, v11, Ln3/e/b/c1$b;->a:Ln3/e/b/j1/a1;

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 28
    invoke-virtual {v6, v10, v9, p1}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v11}, Ln3/e/b/c1$b;->a()Ln3/e/b/c1;

    move-result-object p1

    invoke-static {p1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object v5, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->e:Ljava/lang/Object;

    iput-object v4, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->f:Ljava/lang/Object;

    iput-object v3, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->g:Ljava/lang/Object;

    iput-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->h:Ljava/lang/Object;

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->i:Ljava/lang/Object;

    iput v2, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$c;->j:I

    invoke-virtual {v5, p0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->u(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    :goto_0
    const/4 p1, 0x0

    .line 31
    :try_start_0
    iget-object v6, v5, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->o:Landroidx/camera/view/PreviewView;

    invoke-virtual {v6}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Ln3/e/b/c1$d;

    move-result-object v6

    invoke-virtual {v1, v6}, Ln3/e/b/c1;->r(Ln3/e/b/c1$d;)V

    .line 32
    new-instance v6, Le/a/k/c/i;

    invoke-direct {v6, v5}, Le/a/k/c/i;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;)V

    .line 33
    invoke-virtual {v0, v6}, Ln3/e/b/c1;->r(Ln3/e/b/c1$d;)V

    .line 34
    iget-object v6, v5, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->p:Landroidx/fragment/app/Fragment;

    const/4 v7, 0x2

    new-array v7, v7, [Ln3/e/b/g1;

    aput-object v1, v7, p1

    aput-object v0, v7, v2

    .line 35
    invoke-virtual {v4, v6, v3, v7}, Ln3/e/c/c;->a(Ln3/v/b0;Ln3/e/b/m0;[Ln3/e/b/g1;)Ln3/e/b/h0;

    move-result-object v0

    .line 36
    iput-object v0, v5, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->e:Ln3/e/b/h0;

    .line 37
    iput-boolean v2, v5, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v2, p1

    .line 38
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 39
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
