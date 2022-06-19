.class public final Le/a/a/k/a/a0;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/a/k/a/l1;

.field public final d:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/b0/e/l;

.field public final f:Le/a/a/k/a/r0;


# direct methods
.method public constructor <init>(Le/a/a/k/a/l1;Le/a/r2/f;Le/a/b0/e/l;Le/a/a/k/a/r0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/a/l1;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;",
            "Le/a/b0/e/l;",
            "Le/a/a/k/a/r0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "joinedImUsersManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unreadRemindersManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/a0;->c:Le/a/a/k/a/l1;

    iput-object p2, p0, Le/a/a/k/a/a0;->d:Le/a/r2/f;

    iput-object p3, p0, Le/a/a/k/a/a0;->e:Le/a/b0/e/l;

    iput-object p4, p0, Le/a/a/k/a/a0;->f:Le/a/a/k/a/r0;

    const-string p1, "ImNotificationsWorkAction"

    .line 2
    iput-object p1, p0, Le/a/a/k/a/a0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a0;->c:Le/a/a/k/a/l1;

    invoke-interface {v0}, Le/a/a/k/a/l1;->a()V

    .line 2
    iget-object v0, p0, Le/a/a/k/a/a0;->d:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    invoke-interface {v0}, Le/a/a/k/a/a/m;->u()Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Le/a/a/k/a/a0;->f:Le/a/a/k/a/r0;

    invoke-interface {v0}, Le/a/a/k/a/r0;->b()V

    .line 4
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a0;->e:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    return v0
.end method
