.class public final Le/a/d/c0/x1/i;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;


# instance fields
.field public a:Z

.field public b:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public final d:Lq3/a/y;

.field public final e:Ls1/w/f;

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;)V
    .locals 1

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Le/a/d/c0/x1/i;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c0/x1/i;->f:Landroid/content/Context;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c0/x1/i;->d:Lq3/a/y;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/i;->f:Landroid/content/Context;

    invoke-static {v0}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    const-string v1, "devices"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    const-string v6, "it"

    .line 3
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    const/16 v7, 0x16

    if-eq v6, v7, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    move v6, v4

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    move v2, v4

    .line 4
    :cond_3
    iput-boolean v2, p0, Le/a/d/c0/x1/i;->a:Z

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/i;->e:Ls1/w/f;

    iget-object v1, p0, Le/a/d/c0/x1/i;->d:Lq3/a/y;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/a/d/c0/x1/i;->a()V

    .line 2
    iget-object p1, p0, Le/a/d/c0/x1/i;->b:Ls1/z/b/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    new-instance v3, Le/a/d/c0/x1/i$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/d/c0/x1/i$a;-><init>(Le/a/d/c0/x1/i;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
