.class public final Le/a/d0/x0;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/d0/t;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/b0/e/l;

.field public final e:Le/a/p5/g;

.field public final f:Le/a/p5/a0;

.field public final g:Le/a/h5/w;

.field public final h:Le/a/z4/d;

.field public final i:Le/a/b0/q/l0;


# direct methods
.method public constructor <init>(Lo3/a;Le/a/r2/f;Le/a/b0/e/l;Le/a/p5/g;Le/a/p5/a0;Le/a/h5/w;Le/a/z4/d;Le/a/b0/q/l0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Le/a/r2/f<",
            "Le/a/d0/t;",
            ">;",
            "Le/a/b0/e/l;",
            "Le/a/p5/g;",
            "Le/a/p5/a0;",
            "Le/a/h5/w;",
            "Le/a/z4/d;",
            "Le/a/b0/q/l0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationsManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/d0/x0;->b:Lo3/a;

    iput-object p2, p0, Le/a/d0/x0;->c:Le/a/r2/f;

    iput-object p3, p0, Le/a/d0/x0;->d:Le/a/b0/e/l;

    iput-object p4, p0, Le/a/d0/x0;->e:Le/a/p5/g;

    iput-object p5, p0, Le/a/d0/x0;->f:Le/a/p5/a0;

    iput-object p6, p0, Le/a/d0/x0;->g:Le/a/h5/w;

    iput-object p7, p0, Le/a/d0/x0;->h:Le/a/z4/d;

    iput-object p8, p0, Le/a/d0/x0;->i:Le/a/b0/q/l0;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/x0;->f:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->k()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Le/a/d0/x0;->e:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->q()I

    move-result v2

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Le/a/d0/x0;->e:Le/a/p5/g;

    invoke-interface {v2}, Le/a/p5/g;->r()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Le/a/d0/x0;->g:Le/a/h5/w;

    invoke-interface {v3}, Le/a/h5/w;->i()Z

    move-result v3

    xor-int/2addr v1, v3

    const-string v3, "permissionNotificationShownTimestamp"

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    .line 4
    iget-object v0, p0, Le/a/d0/x0;->c:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d0/t;

    invoke-interface {v0}, Le/a/d0/t;->e()V

    .line 5
    iget-object v0, p0, Le/a/d0/x0;->h:Le/a/z4/d;

    iget-object v1, p0, Le/a/d0/x0;->i:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    invoke-interface {v0, v3, v1, v2}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 6
    :cond_2
    :goto_1
    iget-object v0, p0, Le/a/d0/x0;->c:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d0/t;

    invoke-interface {v0}, Le/a/d0/t;->c()V

    .line 7
    iget-object v0, p0, Le/a/d0/x0;->h:Le/a/z4/d;

    iget-object v1, p0, Le/a/d0/x0;->i:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    invoke-interface {v0, v3, v1, v2}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 8
    :cond_3
    :goto_2
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "ListenableWorker.Result.success()"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "RolePermissionWorkAction"

    return-object v0
.end method

.method public c()Z
    .locals 10

    .line 1
    invoke-static {}, Le/a/r/t/c;->ya()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/d0/x0;->d:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/d0/x0;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->n:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/d0/x0;->h:Le/a/z4/d;

    const-wide/16 v1, -0x1

    const-string v3, "permissionNotificationShownTimestamp"

    invoke-interface {v0, v3, v1, v2}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 5
    iget-object v0, p0, Le/a/d0/x0;->h:Le/a/z4/d;

    const-wide/16 v1, 0x2a30

    const-string v3, "permissionNotificationCooldownSeconds"

    invoke-interface {v0, v3, v1, v2}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 6
    iget-object v4, p0, Le/a/d0/x0;->i:Le/a/b0/q/l0;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v4 .. v9}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
