.class public final Le/a/k/a/k/r$b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/k/r$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/String;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.ui.videoplayer.VideoPlayerPresenter$configureVideoUrl$2$1"
    f = "VideoPlayerPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/k/a/k/r$b;

.field public final synthetic f:Lq3/a/i0;


# direct methods
.method public constructor <init>(Le/a/k/a/k/r$b;Lq3/a/i0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/r$b$a;->e:Le/a/k/a/k/r$b;

    iput-object p2, p0, Le/a/k/a/k/r$b$a;->f:Lq3/a/i0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/a/k/r$b$a;

    iget-object v0, p0, Le/a/k/a/k/r$b$a;->e:Le/a/k/a/k/r$b;

    iget-object v1, p0, Le/a/k/a/k/r$b$a;->f:Lq3/a/i0;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/a/k/r$b$a;-><init>(Le/a/k/a/k/r$b;Lq3/a/i0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/k/a/k/r$b$a;->e:Le/a/k/a/k/r$b;

    iget-object v1, p0, Le/a/k/a/k/r$b$a;->f:Lq3/a/i0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/k/a/k/r$b;->f:Le/a/k/a/k/r;

    .line 5
    iget-object p2, p2, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    .line 6
    iget-object v2, v0, Le/a/k/a/k/r$b;->h:Ljava/lang/String;

    iget-object v0, v0, Le/a/k/a/k/r$b;->i:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    const/4 v3, 0x0

    .line 7
    invoke-interface {p2, v1, v2, v3, v0}, Le/a/k/a/k/z/c;->f(Lq3/a/i0;Ljava/lang/String;Ljava/lang/Long;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/k/a/k/r$b$a;->e:Le/a/k/a/k/r$b;

    iget-object v0, p1, Le/a/k/a/k/r$b;->f:Le/a/k/a/k/r;

    .line 3
    iget-object v0, v0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    .line 4
    iget-object v1, p0, Le/a/k/a/k/r$b$a;->f:Lq3/a/i0;

    iget-object v2, p1, Le/a/k/a/k/r$b;->h:Ljava/lang/String;

    iget-object p1, p1, Le/a/k/a/k/r$b;->i:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    const/4 v3, 0x0

    .line 5
    invoke-interface {v0, v1, v2, v3, p1}, Le/a/k/a/k/z/c;->f(Lq3/a/i0;Ljava/lang/String;Ljava/lang/Long;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
