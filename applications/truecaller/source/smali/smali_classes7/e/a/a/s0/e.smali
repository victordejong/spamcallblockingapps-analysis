.class public final Le/a/a/s0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/s0/d;


# instance fields
.field public a:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Le/a/p5/g;

.field public final d:Le/a/h5/w;

.field public final e:Le/a/h5/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/g;Le/a/h5/w;Le/a/h5/y;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionsUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionsView"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/s0/e;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/s0/e;->c:Le/a/p5/g;

    iput-object p3, p0, Le/a/a/s0/e;->d:Le/a/h5/w;

    iput-object p4, p0, Le/a/a/s0/e;->e:Le/a/h5/y;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;IZLs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    instance-of v0, p4, Le/a/a/s0/e$a;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/a/s0/e$a;

    iget v1, v0, Le/a/a/s0/e$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/s0/e$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/s0/e$a;

    invoke-direct {v0, p0, p4}, Le/a/a/s0/e$a;-><init>(Le/a/a/s0/e;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/a/s0/e$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/s0/e$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p2, v0, Le/a/a/s0/e$a;->h:I

    iget-object p1, v0, Le/a/a/s0/e$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/a/s0/e;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p3, :cond_4

    move p3, v5

    goto :goto_1

    :cond_4
    move p3, v3

    .line 4
    :goto_1
    iput-object p0, v0, Le/a/a/s0/e$a;->g:Ljava/lang/Object;

    iput p2, v0, Le/a/a/s0/e$a;->h:I

    iput v5, v0, Le/a/a/s0/e$a;->e:I

    invoke-virtual {p0, p1, p2, p3, v0}, Le/a/a/s0/e;->c(Ljava/lang/String;IZLs1/w/d;)Ljava/lang/Object;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p4, v1, :cond_5

    .line 5
    monitor-exit p0

    return-object v1

    :cond_5
    move-object p1, p0

    .line 6
    :goto_2
    :try_start_1
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 p3, 0x0

    .line 7
    iput-object p3, v0, Le/a/a/s0/e$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/a/s0/e$a;->e:I

    invoke-virtual {p1, p2, v0}, Le/a/a/s0/e;->d(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p4, v1, :cond_6

    .line 8
    monitor-exit p0

    return-object v1

    .line 9
    :cond_6
    :goto_3
    :try_start_2
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    move v3, v5

    .line 10
    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/a/s0/e;->a:Ls1/z/b/l;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/a/a/s0/e;->a:Ls1/z/b/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Ljava/lang/String;IZLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/s0/e;->c:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Le/a/a/s0/e;->b:Landroid/content/Context;

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 4
    :goto_0
    iget-object p3, p0, Le/a/a/s0/e;->b:Landroid/content/Context;

    .line 5
    sget v1, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->b:I

    .line 6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;

    invoke-direct {v1, p3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "AppUserInteraction.Context"

    .line 7
    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "DEFAULT_SMS_APP_URI_CONTEXT"

    .line 8
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "PREP_MESSAGE"

    .line 9
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 10
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "DefaultSmsActivity.creat\u2026t.FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Le/a/a/s0/e;->b:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 12
    new-instance p1, Lq3/a/o;

    invoke-static {p4}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 13
    invoke-virtual {p1}, Lq3/a/o;->z()V

    .line 14
    new-instance p2, Le/a/a/s0/e$b;

    invoke-direct {p2, p1}, Le/a/a/s0/e$b;-><init>(Lq3/a/n;)V

    .line 15
    iput-object p2, p0, Le/a/a/s0/e;->a:Ls1/z/b/l;

    .line 16
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    .line 17
    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_2

    const-string p2, "frame"

    .line 18
    invoke-static {p4, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public final d(ILs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/a/s0/e$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/a/s0/e$c;

    iget v1, v0, Le/a/a/s0/e$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/s0/e$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/s0/e$c;

    invoke-direct {v0, p0, p2}, Le/a/a/s0/e$c;-><init>(Le/a/a/s0/e;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/a/s0/e$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/s0/e$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/a/s0/e;->e:Le/a/h5/y;

    .line 5
    new-instance v2, Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    .line 6
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 p1, 0x3

    const/4 v5, 0x0

    .line 7
    invoke-direct {v2, v5, v5, v4, p1}, Lcom/truecaller/tcpermissions/PermissionRequestOptions;-><init>(ZZLjava/lang/Integer;I)V

    iget-object p1, p0, Le/a/a/s0/e;->d:Le/a/h5/w;

    invoke-interface {p1}, Le/a/h5/w;->a()[Ljava/lang/String;

    move-result-object p1

    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput v3, v0, Le/a/a/s0/e$c;->e:I

    .line 8
    invoke-interface {p2, v2, p1, v0}, Le/a/h5/y;->b(Lcom/truecaller/tcpermissions/PermissionRequestOptions;[Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 9
    :cond_3
    :goto_1
    check-cast p2, Le/a/h5/l;

    .line 10
    iget-boolean p1, p2, Le/a/h5/l;->a:Z

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
