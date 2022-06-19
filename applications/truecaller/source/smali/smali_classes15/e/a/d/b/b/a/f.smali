.class public final Le/a/d/b/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Le/a/d/b/b/a/a;


# direct methods
.method public constructor <init>(Le/a/d/b/b/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/b/b/a/f;->a:Le/a/d/b/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string p1, "binder"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p2, Le/a/d/b/b/d;

    .line 2
    iget-object p1, p0, Le/a/d/b/b/a/f;->a:Le/a/d/b/b/a/a;

    invoke-virtual {p1}, Le/a/d/b/b/a/a;->RA()Le/a/d/b/b/a/j;

    move-result-object p1

    .line 3
    iget-object p2, p2, Le/a/d/b/b/d;->a:Le/a/d/b/b/f;

    .line 4
    check-cast p1, Le/a/d/b/b/a/l;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "binderPresenter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p2, p1, Le/a/d/b/b/a/l;->d:Le/a/d/b/b/f;

    .line 7
    invoke-interface {p2}, Le/a/d/b/b/f;->getState()Le/a/d/l;

    move-result-object v0

    .line 8
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/a/k;

    if-eqz v1, :cond_0

    .line 9
    iget v2, v0, Le/a/d/l;->d:I

    .line 10
    invoke-virtual {v0}, Le/a/d/l;->b()I

    move-result v3

    invoke-virtual {v0}, Le/a/d/l;->c()Z

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Le/a/d/b/b/a/k;->jr(IIZ)V

    .line 11
    :cond_0
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/a/k;

    if-eqz v1, :cond_1

    .line 12
    iget-object v0, v0, Le/a/d/l;->g:Ljava/lang/String;

    .line 13
    invoke-interface {v1, v0}, Le/a/d/b/b/a/k;->as(Ljava/lang/String;)V

    .line 14
    :cond_1
    invoke-interface {p2, p1}, Le/a/d/b/b/f;->T9(Le/a/d/b/b/g;)V

    .line 15
    invoke-interface {p2}, Le/a/d/b/b/f;->J0()Lq3/a/w2/h;

    move-result-object p2

    new-instance v0, Le/a/d/b/b/a/m;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/a/d/b/b/a/m;-><init>(Le/a/d/b/b/a/l;Ls1/w/d;)V

    invoke-static {p1, p2, v0}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 16
    iget-object p2, p1, Le/a/d/b/b/a/l;->d:Le/a/d/b/b/f;

    if-nez p2, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    iget-boolean p2, p1, Le/a/d/b/b/a/l;->f:Z

    if-eqz p2, :cond_3

    .line 18
    invoke-virtual {p1}, Le/a/d/b/b/a/l;->Jj()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/d/b/b/a/f;->a:Le/a/d/b/b/a/a;

    invoke-virtual {p1}, Le/a/d/b/b/a/a;->RA()Le/a/d/b/b/a/j;

    move-result-object p1

    check-cast p1, Le/a/d/b/b/a/l;

    .line 2
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/b/b/a/k;->t()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Le/a/d/b/b/a/l;->d:Le/a/d/b/b/f;

    return-void
.end method
