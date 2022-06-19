.class public final Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->startRecording()Lq3/a/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$startRecording$1"
    f = "CameraViewManager.kt"
    l = {
        0x96
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;->f:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;

    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;->f:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    invoke-direct {v0, v1, p1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;

    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;->f:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    invoke-direct {v0, v1, p1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;->f:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 5
    iget-boolean p1, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->a:Z

    if-eqz p1, :cond_2

    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;->f:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    new-instance v1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m$a;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m$a;-><init>(Ls1/w/d;)V

    iput v2, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;->e:I

    invoke-virtual {p1, p1, v1, p0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->s(Ljava/lang/Object;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 8
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
