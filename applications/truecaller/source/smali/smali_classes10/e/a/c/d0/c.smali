.class public final Le/a/c/d0/c;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/c/b/j;

.field public final d:Le/a/c/e/c;


# direct methods
.method public constructor <init>(Le/a/c/b/j;Le/a/c/e/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsStatusProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/c/d0/c;->c:Le/a/c/b/j;

    iput-object p2, p0, Le/a/c/d0/c;->d:Le/a/c/e/c;

    const-string p1, "InsightsEventClearWorkAction"

    .line 2
    iput-object p1, p0, Le/a/c/d0/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/d0/c;->d:Le/a/c/e/c;

    invoke-interface {v0}, Le/a/c/e/c;->d()V

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/d0/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/d0/c;->c:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->X()Z

    move-result v0

    return v0
.end method
