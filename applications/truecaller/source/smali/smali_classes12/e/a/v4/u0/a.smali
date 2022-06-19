.class public abstract Le/a/v4/u0/a;
.super Le/a/v4/u0/h;
.source "SourceFile"

# interfaces
.implements Le/a/v4/u0/g;
.implements Lx3/d;


# instance fields
.field public i:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/l;Le/a/v4/v;)V
    .locals 1

    const-string v0, "extras"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTrackerHolder"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkAccountManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p5}, Le/a/v4/u0/h;-><init>(Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/l;Le/a/v4/v;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/v4/u0/a;->i:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/v4/u0/a;->i:Z

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Le/a/v4/u0/h;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 3
    invoke-interface {p0, v0, v1}, Le/a/v4/u0/g;->x(II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    const/4 v1, -0x1

    .line 5
    invoke-interface {v0, v1}, Le/a/v4/u0/k/a;->c(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Le/a/v4/w0/b;->V1()V

    :cond_1
    return-void
.end method

.method public onFailure(Lx3/b;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    const/4 p2, -0x1

    .line 2
    invoke-interface {p1, p2}, Le/a/v4/u0/k/a;->c(I)V

    .line 3
    iget-object p1, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/v4/w0/b;->V1()V

    :cond_0
    return-void
.end method

.method public onResponse(Lx3/b;Lx3/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Ljava/lang/Void;",
            ">;",
            "Lx3/a0<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    const/4 p2, -0x1

    .line 2
    invoke-interface {p1, p2}, Le/a/v4/u0/k/a;->c(I)V

    .line 3
    iget-object p1, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/v4/w0/b;->V1()V

    :cond_0
    return-void
.end method
