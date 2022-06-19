.class public final Le/a/v4/u0/d;
.super Le/a/v4/u0/h;
.source "SourceFile"


# instance fields
.field public final i:Le/a/t/b/c/c;

.field public final j:Landroid/os/Bundle;


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

    iput-object p1, p0, Le/a/v4/u0/d;->j:Landroid/os/Bundle;

    .line 2
    new-instance p1, Le/a/t/b/c/c;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p1, p2, p2, p3}, Le/a/t/b/c/c;-><init>(IILcom/truecaller/android/sdk/clients/CustomDataBundle;)V

    iput-object p1, p0, Le/a/v4/u0/d;->i:Le/a/t/b/c/c;

    return-void
.end method


# virtual methods
.method public B()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/d;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method public C()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/v4/u0/h;->b:Z

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Le/a/v4/u0/d;->x(II)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "in_app"

    return-object v0
.end method

.method public e()V
    .locals 3

    .line 1
    new-instance v0, Ls1/j;

    const-string v1, "An operation is not implemented: "

    const-string v2, "not implemented"

    invoke-static {v1, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.0"

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    .line 2
    invoke-interface {v0}, Le/a/v4/u0/k/a;->d()V

    .line 3
    iget-object v0, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Le/a/v4/w0/b;->M3()V

    :cond_0
    return-void
.end method

.method public m()Le/a/t/b/c/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/d;->i:Le/a/t/b/c/c;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/v4/u0/d;->x(II)V

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const-string v0, "inAppKey"

    return-object v0
.end method

.method public x(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/u0/h;->c:Le/a/v4/u0/k/a;

    .line 2
    invoke-interface {v0, p2}, Le/a/v4/u0/k/a;->c(I)V

    .line 3
    iget-object p2, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz p2, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p2, p1, v0}, Le/a/v4/w0/b;->U1(ILandroid/content/Intent;)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/v4/u0/h;->a:Le/a/v4/w0/b;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Le/a/v4/w0/b;->V1()V

    :cond_1
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/v4/u0/d;->j:Landroid/os/Bundle;

    const-string v1, "partnerName"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extras.getString(PARTNER_NAME, \"\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
