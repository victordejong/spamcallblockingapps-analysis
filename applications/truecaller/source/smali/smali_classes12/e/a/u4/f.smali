.class public Le/a/u4/f;
.super Le/a/u4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/u4/f$a;
    }
.end annotation


# instance fields
.field public final b:Le/a/p5/c0;

.field public final c:Landroid/os/Handler;

.field public d:Le/a/u4/f$a;


# direct methods
.method public constructor <init>(Le/a/p5/c0;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/u4/e;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Le/a/u4/f;->c:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Le/a/u4/f;->b:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public Hj(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Le/a/u4/f$a;

    check-cast v0, Le/a/u4/g;

    invoke-direct {v1, v0, p1}, Le/a/u4/f$a;-><init>(Le/a/u4/g;Ljava/util/List;)V

    iput-object v1, p0, Le/a/u4/f;->d:Le/a/u4/f$a;

    .line 3
    iget-object p1, p0, Le/a/u4/f;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/u4/g;

    invoke-interface {p1}, Le/a/u4/g;->L0()V

    :cond_0
    return-void
.end method

.method public Ij(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2
    check-cast v0, Le/a/u4/g;

    const-string p1, "android.permission.CAMERA"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Le/a/u4/g;->g([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/a/u4/f;->d:Le/a/u4/f$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/u4/f;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Le/a/u4/g;

    invoke-interface {v0}, Le/a/u4/g;->close()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 2
    array-length p2, p3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    aget p2, p3, v0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    check-cast p1, Le/a/u4/g;

    invoke-interface {p1}, Le/a/u4/g;->H8()V

    goto :goto_1

    .line 4
    :cond_1
    check-cast p1, Le/a/u4/g;

    iget-object p2, p0, Le/a/u4/f;->b:Le/a/p5/c0;

    const p3, 0x7f120ee6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, p3, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/u4/g;->l(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/u4/g;

    invoke-interface {p1}, Le/a/u4/g;->close()V

    :cond_2
    :goto_1
    return-void
.end method

.method public r3()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Le/a/u4/g;

    iget-object v1, p0, Le/a/u4/f;->b:Le/a/p5/c0;

    const v2, 0x7f120ee8

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/u4/g;->l(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/u4/g;

    invoke-interface {v0}, Le/a/u4/g;->close()V

    :cond_0
    return-void
.end method
