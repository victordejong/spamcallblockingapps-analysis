.class public final Le/a/d0/t0;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/o5/f0;

.field public final d:Le/a/p5/g;

.field public final e:Le/a/z4/d;

.field public final f:Le/a/d0/t;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Le/a/p5/g;Le/a/z4/d;Le/a/d0/t;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callNotificationsManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/d0/t0;->c:Le/a/o5/f0;

    iput-object p2, p0, Le/a/d0/t0;->d:Le/a/p5/g;

    iput-object p3, p0, Le/a/d0/t0;->e:Le/a/z4/d;

    iput-object p4, p0, Le/a/d0/t0;->f:Le/a/d0/t;

    const-string p1, "DisableBatteryOptimizationWorkAction"

    .line 2
    iput-object p1, p0, Le/a/d0/t0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d0/t0;->f:Le/a/d0/t;

    invoke-interface {v0}, Le/a/d0/t;->a()V

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "ListenableWorker.Result.success()"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d0/t0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d0/t0;->c:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/d0/t0;->e:Le/a/z4/d;

    const-string v2, "never_ask_again_disable_ignore_battery_optimizations"

    invoke-interface {v0, v2, v1}, Le/a/z4/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/d0/t0;->d:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
