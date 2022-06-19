.class public Le/a/c/d0/e;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/c/c/f/n;

.field public final d:Le/a/c/v/a;

.field public final e:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/c/f/n;Le/a/c/v/a;Le/a/c/b/j;)V
    .locals 1

    const-string v0, "stateUseCases"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reminderManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/c/d0/e;->c:Le/a/c/c/f/n;

    iput-object p2, p0, Le/a/c/d0/e;->d:Le/a/c/v/a;

    iput-object p3, p0, Le/a/c/d0/e;->e:Le/a/c/b/j;

    const-string p1, "InsightsRemindersWorkAction"

    .line 2
    iput-object p1, p0, Le/a/c/d0/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 1
    new-instance v0, Le/a/c/d0/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/c/d0/e$a;-><init>(Le/a/c/d0/e;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

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
    iget-object v0, p0, Le/a/c/d0/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/d0/e;->e:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
