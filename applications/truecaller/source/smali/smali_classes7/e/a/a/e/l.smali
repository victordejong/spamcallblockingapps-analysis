.class public final Le/a/a/e/l;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/a/e/m;

.field public final d:Le/a/a/i0;


# direct methods
.method public constructor <init>(Le/a/a/e/m;Le/a/a/i0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "inboxCleaner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/a/e/l;->c:Le/a/a/e/m;

    iput-object p2, p0, Le/a/a/e/l;->d:Le/a/a/i0;

    const-string p1, "InboxAutoCleanerWorkAction"

    .line 2
    iput-object p1, p0, Le/a/a/e/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 1
    new-instance v0, Le/a/a/e/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/a/e/l$a;-><init>(Le/a/a/e/l;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

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
    iget-object v0, p0, Le/a/a/e/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/e/l;->c:Le/a/a/e/m;

    invoke-interface {v0}, Le/a/a/e/m;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/e/l;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
