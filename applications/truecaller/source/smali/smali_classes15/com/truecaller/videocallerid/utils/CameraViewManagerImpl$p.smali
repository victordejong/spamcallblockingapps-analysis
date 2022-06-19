.class public final Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->u(Ls1/w/d;)Ljava/lang/Object;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$unbindCameraUseCases$2"
    f = "CameraViewManager.kt"
    l = {
        0x18d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I


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

    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;

    invoke-direct {v0, p2}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;-><init>(Ls1/w/d;)V

    iput-object p1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;

    invoke-direct {v0, p2}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;-><init>(Ls1/w/d;)V

    iput-object p1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;->e:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 4
    iget-object v2, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->d:Ln3/e/c/c;

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2}, Ln3/e/c/c;->c()V

    :cond_2
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->j:Z

    .line 7
    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;->e:Ljava/lang/Object;

    iput v3, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$p;->f:I

    .line 8
    iget-object v2, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->m:Ls1/w/f;

    new-instance v4, Le/a/k/c/k;

    invoke-direct {v4, p1}, Le/a/k/c/k;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;)V

    invoke-static {v2, v4, p0}, Lq3/a/j;->a(Ls1/w/f;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v1, p1

    .line 9
    :goto_1
    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 10
    iput-object p1, v1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->i:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method
