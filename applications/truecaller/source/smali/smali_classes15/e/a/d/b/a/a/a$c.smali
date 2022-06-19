.class public final Le/a/d/b/a/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/b/a/a/a;


# direct methods
.method public constructor <init>(Le/a/d/b/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/b/a/a/a$c;->a:Le/a/d/b/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string v0, "className"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "binder"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p2, Le/a/d/b/a/s;

    .line 2
    iget-object p1, p0, Le/a/d/b/a/a/a$c;->a:Le/a/d/b/a/a/a;

    invoke-virtual {p1}, Le/a/d/b/a/a/a;->QA()Le/a/d/b/a/a/h;

    move-result-object p1

    .line 3
    iget-object p2, p2, Le/a/d/b/a/s;->a:Le/a/d/b/a/d;

    .line 4
    check-cast p1, Le/a/d/b/a/a/j;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "binderView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Le/a/d/b/a/a/j;->f:Le/a/d/b/a/a/j$a;

    invoke-interface {p2, v0}, Le/a/d/b/a/d;->L1(Le/a/d/b/a/e;)V

    .line 7
    invoke-interface {p2}, Le/a/d/b/a/d;->J0()Lq3/a/w2/h;

    move-result-object v0

    new-instance v1, Le/a/d/b/a/a/l;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Le/a/d/b/a/a/l;-><init>(Le/a/d/b/a/a/j;Le/a/d/b/a/d;Ls1/w/d;)V

    invoke-static {p1, v0, v1}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 8
    invoke-interface {p2}, Le/a/d/b/a/d;->P1()Lq3/a/w2/h;

    move-result-object v0

    new-instance v1, Le/a/d/b/a/a/k;

    invoke-direct {v1, p1, v2}, Le/a/d/b/a/a/k;-><init>(Le/a/d/b/a/a/j;Ls1/w/d;)V

    invoke-static {p1, v0, v1}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 9
    invoke-interface {p2}, Le/a/d/b/a/d;->getState()Le/a/d/l;

    move-result-object v0

    .line 10
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/a/i;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Le/a/d/l;->e()I

    move-result v2

    invoke-virtual {v0}, Le/a/d/l;->b()I

    move-result v3

    invoke-virtual {v0}, Le/a/d/l;->c()Z

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Le/a/d/b/a/a/i;->ke(IIZ)V

    .line 11
    :cond_0
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/a/i;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Le/a/d/l;->d()Z

    move-result v2

    invoke-interface {p2}, Le/a/d/b/a/d;->N1()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Le/a/d/b/a/a/i;->l3(ZJ)V

    .line 12
    :cond_1
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/a/i;

    if-eqz v1, :cond_2

    .line 13
    iget-object v0, v0, Le/a/d/l;->g:Ljava/lang/String;

    .line 14
    invoke-interface {v1, v0}, Le/a/d/b/a/a/i;->T6(Ljava/lang/String;)V

    .line 15
    :cond_2
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/a/i;

    if-eqz v0, :cond_4

    const-string v1, "Call encryption is "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Le/a/d/b/a/d;->T1()Le/a/d/x/p;

    move-result-object v2

    .line 16
    iget-boolean v2, v2, Le/a/d/x/p;->d:Z

    if-eqz v2, :cond_3

    const-string v2, "enabled"

    goto :goto_0

    :cond_3
    const-string v2, "disabled"

    .line 17
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/d/b/a/a/i;->T6(Ljava/lang/String;)V

    .line 18
    :cond_4
    iput-object p2, p1, Le/a/d/b/a/a/j;->d:Le/a/d/b/a/d;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "className"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/d/b/a/a/a$c;->a:Le/a/d/b/a/a/a;

    invoke-virtual {p1}, Le/a/d/b/a/a/a;->QA()Le/a/d/b/a/a/h;

    move-result-object p1

    check-cast p1, Le/a/d/b/a/a/j;

    .line 2
    iget-object v0, p1, Le/a/d/b/a/a/j;->d:Le/a/d/b/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Le/a/d/b/a/d;->L1(Le/a/d/b/a/e;)V

    .line 3
    :cond_0
    iput-object v1, p1, Le/a/d/b/a/a/j;->d:Le/a/d/b/a/d;

    return-void
.end method
