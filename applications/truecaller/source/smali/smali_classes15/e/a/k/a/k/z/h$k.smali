.class public final Le/a/k/a/k/z/h$k;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/k/z/h;->q(Le/m/a/c/c0;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/k/c/t;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl$playWithLoopPartly$2"
    f = "VideoPlayingManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/m/a/c/c0;


# direct methods
.method public constructor <init>(Le/m/a/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/z/h$k;->f:Le/m/a/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/a/k/z/h$k;

    iget-object v1, p0, Le/a/k/a/k/z/h$k;->f:Le/m/a/c/c0;

    invoke-direct {v0, v1, p2}, Le/a/k/a/k/z/h$k;-><init>(Le/m/a/c/c0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/a/k/z/h$k;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/k/a/k/z/h$k;->f:Le/m/a/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/k/c/t;

    .line 5
    instance-of p1, p1, Le/a/k/c/t$a;

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    .line 6
    invoke-interface {v0, p1, p2}, Le/m/a/c/q0;->seekTo(J)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 7
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/a/k/z/h$k;->e:Ljava/lang/Object;

    check-cast p1, Le/a/k/c/t;

    .line 2
    instance-of p1, p1, Le/a/k/c/t$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/k/a/k/z/h$k;->f:Le/m/a/c/c0;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Le/m/a/c/q0;->seekTo(J)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
