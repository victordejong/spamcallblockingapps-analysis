.class public final Le/a/a/e1/c;
.super Le/a/a/e1/b;
.source "SourceFile"


# instance fields
.field public final b:Le/a/p5/a0;

.field public final c:Le/a/p5/g;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/p5/a0;Le/a/p5/g;Ljava/lang/String;)V
    .locals 1

    const-string v0, "permissionUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/a/e1/b;-><init>()V

    iput-object p1, p0, Le/a/a/e1/c;->b:Le/a/p5/a0;

    iput-object p2, p0, Le/a/a/e1/c;->c:Le/a/p5/g;

    iput-object p3, p0, Le/a/a/e1/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Hj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Le/a/a/e1/d;

    .line 2
    iget-object v1, p0, Le/a/a/e1/c;->c:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/a/a/e1/c;->b:Le/a/p5/a0;

    const-string v2, "android.permission.SEND_SMS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/a/e1/d;->t0()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/a/e1/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/a/e1/d;->j2(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResume()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast v0, Le/a/a/e1/d;

    .line 2
    iget-object v1, p0, Le/a/a/e1/c;->b:Le/a/p5/a0;

    const-string v2, "android.permission.READ_SMS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Le/a/a/e1/c;->b:Le/a/p5/a0;

    const-string v2, "android.permission.SEND_SMS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Le/a/a/e1/c;->c:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Le/a/a/e1/d;->A1()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0, v1}, Le/a/a/e1/d;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Le/a/a/e1/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/a/e1/d;->R2(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-interface {v0}, Le/a/a/e1/d;->finish()V

    :cond_1
    return-void

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
