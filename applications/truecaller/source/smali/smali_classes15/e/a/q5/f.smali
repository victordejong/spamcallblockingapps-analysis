.class public final Le/a/q5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q5/d;


# instance fields
.field public final a:Ls1/a/g;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/l/p2/v0;

.field public final d:Le/a/p5/g;

.field public final e:Le/a/p5/a0;

.field public final f:Le/a/q5/i;

.field public final g:Le/a/c0/h;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/l/p2/v0;Le/a/p5/g;Le/a/p5/a0;Le/a/q5/i;Le/a/c0/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q5/f;->b:Le/a/u3/g;

    iput-object p2, p0, Le/a/q5/f;->c:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/q5/f;->d:Le/a/p5/g;

    iput-object p4, p0, Le/a/q5/f;->e:Le/a/p5/a0;

    iput-object p5, p0, Le/a/q5/f;->f:Le/a/q5/i;

    iput-object p6, p0, Le/a/q5/f;->g:Le/a/c0/h;

    .line 2
    new-instance p1, Le/a/q5/e;

    invoke-direct {p1, p5}, Le/a/q5/e;-><init>(Le/a/q5/i;)V

    iput-object p1, p0, Le/a/q5/f;->a:Ls1/a/g;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q5/f;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->z:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Le/a/q5/f;->a:Ls1/a/g;

    invoke-interface {v0}, Ls1/a/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public q(I)V
    .locals 1

    iget-object v0, p0, Le/a/q5/f;->a:Ls1/a/g;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/a/g;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public r()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/q5/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/q5/f;->g:Le/a/c0/h;

    .line 2
    iget-object v0, v0, Le/a/c0/h;->c:Le/a/c0/c;

    .line 3
    invoke-virtual {v0}, Le/a/c0/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s(Z)V
    .locals 1

    const-string v0, "enhancedNotificationsEnabled"

    .line 1
    invoke-static {v0, p1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/q5/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/q5/f;->g:Le/a/c0/h;

    .line 3
    iget-object v0, v0, Le/a/c0/h;->c:Le/a/c0/c;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v1, v3, v2, v3}, Le/a/c0/f;->d(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public u()Le/a/q5/c;
    .locals 4

    .line 1
    sget-object v0, Le/a/q5/c$b;->a:Le/a/q5/c$b;

    iget-object v1, p0, Le/a/q5/f;->e:Le/a/p5/a0;

    invoke-interface {v1}, Le/a/p5/a0;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v1, Le/a/q5/c$c;->a:Le/a/q5/c$c;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/q5/f;->v()Z

    move-result v1

    const-string v3, "enhancedNotificationsEnabled"

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-static {v3, v1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 4
    :cond_1
    invoke-static {v3}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    if-nez v1, :cond_4

    .line 5
    sget-object v1, Le/a/q5/c$a;->a:Le/a/q5/c$a;

    .line 6
    :goto_0
    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/q5/f;->f:Le/a/q5/i;

    invoke-interface {v0}, Le/a/q5/i;->J1()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Le/a/q5/f;->f:Le/a/q5/i;

    invoke-interface {v0, v2}, Le/a/q5/i;->T(Z)V

    :cond_3
    return-object v1

    .line 8
    :cond_4
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method

.method public v()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/q5/f;->r()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/q5/f;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Le/a/l4/k;->T()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/q5/f;->d:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public w()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/q5/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/q5/f;->g:Le/a/c0/h;

    .line 3
    iget-object v0, v0, Le/a/c0/h;->c:Le/a/c0/c;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v1, v3, v2, v3}, Le/a/c0/f;->e(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
