.class public final Le/a/a/k/a/f;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/a/k/a/l;


# direct methods
.method public constructor <init>(Le/a/a/k/a/l;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "imContactFetcher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/f;->c:Le/a/a/k/a/l;

    const-string p1, "FetchImContactsWorkAction"

    .line 2
    iput-object p1, p0, Le/a/a/k/a/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/k/a/f;->c:Le/a/a/k/a/l;

    invoke-interface {v0}, Le/a/a/k/a/l;->a()V

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
    iget-object v0, p0, Le/a/a/k/a/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a/f;->c:Le/a/a/k/a/l;

    invoke-interface {v0}, Le/a/a/k/a/l;->isEnabled()Z

    move-result v0

    return v0
.end method
