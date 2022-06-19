.class public final Le/a/k/a/k/z/h$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/k/z/h;->k(Lq3/a/i0;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/k/q/b;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl$playFirstFrameAndWaitTillFullyDownloaded$2"
    f = "VideoPlayingManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/k/a/k/z/h;

.field public final synthetic g:Le/m/a/c/c0;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/k/a/k/z/h;Le/m/a/c/c0;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/z/h$e;->f:Le/a/k/a/k/z/h;

    iput-object p2, p0, Le/a/k/a/k/z/h$e;->g:Le/m/a/c/c0;

    iput-object p3, p0, Le/a/k/a/k/z/h$e;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    new-instance v0, Le/a/k/a/k/z/h$e;

    iget-object v1, p0, Le/a/k/a/k/z/h$e;->f:Le/a/k/a/k/z/h;

    iget-object v2, p0, Le/a/k/a/k/z/h$e;->g:Le/m/a/c/c0;

    iget-object v3, p0, Le/a/k/a/k/z/h$e;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/k/a/k/z/h$e;-><init>(Le/a/k/a/k/z/h;Le/m/a/c/c0;Ljava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/a/k/z/h$e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/k/a/k/z/h$e;->f:Le/a/k/a/k/z/h;

    iget-object v2, p0, Le/a/k/a/k/z/h$e;->g:Le/m/a/c/c0;

    iget-object v3, p0, Le/a/k/a/k/z/h$e;->h:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/k/q/b;

    .line 4
    instance-of p2, p1, Le/a/k/q/b$a;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 5
    invoke-interface {v2, p2}, Le/m/a/c/q0;->setPlayWhenReady(Z)V

    const/4 p2, 0x2

    .line 6
    invoke-interface {v2, p2}, Le/m/a/c/q0;->setRepeatMode(I)V

    .line 7
    iget-object p2, v1, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 8
    new-instance v1, Le/a/k/a/k/z/b$e;

    check-cast p1, Le/a/k/q/b$a;

    .line 9
    iget p1, p1, Le/a/k/q/b$a;->a:F

    float-to-int p1, p1

    .line 10
    invoke-direct {v1, p1}, Le/a/k/a/k/z/b$e;-><init>(I)V

    invoke-interface {p2, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    instance-of p2, p1, Le/a/k/q/b$b;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    instance-of p1, p1, Le/a/k/q/b$c;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {v1, v2, v3}, Le/a/k/a/k/z/h;->l(Le/m/a/c/c0;Ljava/lang/String;)V

    .line 14
    iget-object p1, v1, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 15
    sget-object p2, Le/a/k/a/k/z/b$a;->a:Le/a/k/a/k/z/b$a;

    invoke-interface {p1, p2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/a/k/z/h$e;->e:Ljava/lang/Object;

    check-cast p1, Le/a/k/q/b;

    .line 2
    instance-of v0, p1, Le/a/k/q/b$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/k/a/k/z/h$e;->g:Le/m/a/c/c0;

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Le/m/a/c/q0;->setPlayWhenReady(Z)V

    const/4 v1, 0x2

    .line 5
    invoke-interface {v0, v1}, Le/m/a/c/q0;->setRepeatMode(I)V

    .line 6
    iget-object v0, p0, Le/a/k/a/k/z/h$e;->f:Le/a/k/a/k/z/h;

    .line 7
    iget-object v0, v0, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 8
    new-instance v1, Le/a/k/a/k/z/b$e;

    check-cast p1, Le/a/k/q/b$a;

    .line 9
    iget p1, p1, Le/a/k/q/b$a;->a:F

    float-to-int p1, p1

    .line 10
    invoke-direct {v1, p1}, Le/a/k/a/k/z/b$e;-><init>(I)V

    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    instance-of v0, p1, Le/a/k/q/b$b;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    instance-of p1, p1, Le/a/k/q/b$c;

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Le/a/k/a/k/z/h$e;->f:Le/a/k/a/k/z/h;

    iget-object v0, p0, Le/a/k/a/k/z/h$e;->g:Le/m/a/c/c0;

    iget-object v1, p0, Le/a/k/a/k/z/h$e;->h:Ljava/lang/String;

    .line 14
    invoke-virtual {p1, v0, v1}, Le/a/k/a/k/z/h;->l(Le/m/a/c/c0;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Le/a/k/a/k/z/h$e;->f:Le/a/k/a/k/z/h;

    .line 16
    iget-object p1, p1, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 17
    sget-object v0, Le/a/k/a/k/z/b$a;->a:Le/a/k/a/k/z/b$a;

    invoke-interface {p1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 18
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
