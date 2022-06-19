.class public final Le/a/h4/m;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/h4/n;

.field public final d:Le/a/h4/a;


# direct methods
.method public constructor <init>(Le/a/h4/n;Le/a/h4/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "systemNotificationManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationNotificationChannelProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/h4/m;->c:Le/a/h4/n;

    iput-object p2, p0, Le/a/h4/m;->d:Le/a/h4/a;

    const-string p1, "NotificationCleanupWorkAction"

    .line 2
    iput-object p1, p0, Le/a/h4/m;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h4/m;->c:Le/a/h4/n;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Le/a/h4/n;->k(Z)Z

    move-result v0

    .line 3
    iget-object v1, p0, Le/a/h4/m;->d:Le/a/h4/a;

    invoke-interface {v1}, Le/a/h4/a;->f()V

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "ListenableWorker.Result.success()"

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    const-string v1, "ListenableWorker.Result.retry()"

    .line 6
    :goto_0
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h4/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
