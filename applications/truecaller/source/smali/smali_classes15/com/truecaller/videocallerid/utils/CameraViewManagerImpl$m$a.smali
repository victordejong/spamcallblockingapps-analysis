.class public final Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$startRecording$1$1"
    f = "CameraViewManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;


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

    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m$a;

    invoke-direct {v0, p2}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m$a;-><init>(Ls1/w/d;)V

    iput-object p1, v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 5
    iget-object p2, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->g:Landroid/media/MediaRecorder;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/media/MediaRecorder;->start()V

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->a:Z

    .line 8
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$m$a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 2
    iget-object v0, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->g:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->a:Z

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
