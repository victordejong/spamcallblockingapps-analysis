.class public final Le/a/l/e2;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/o5/f0;

.field public final d:Le/a/l/p2/r0;

.field public final e:Le/a/l/p2/k0;

.field public final f:Le/a/l/n2/e;

.field public final g:Le/a/o5/x1;

.field public final h:Le/a/l/o2/d;

.field public final i:Le/a/l/p2/f;

.field public final j:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Le/a/l/p2/r0;Le/a/l/p2/k0;Le/a/l/n2/e;Le/a/o5/x1;Le/a/l/o2/d;Le/a/l/p2/f;Le/a/l/p2/v0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumProductIdsFetcher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inAppBilling"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usageChecker"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumablePurchaseManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freePremiumPromo"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/l/e2;->c:Le/a/o5/f0;

    iput-object p2, p0, Le/a/l/e2;->d:Le/a/l/p2/r0;

    iput-object p3, p0, Le/a/l/e2;->e:Le/a/l/p2/k0;

    iput-object p4, p0, Le/a/l/e2;->f:Le/a/l/n2/e;

    iput-object p5, p0, Le/a/l/e2;->g:Le/a/o5/x1;

    iput-object p6, p0, Le/a/l/e2;->h:Le/a/l/o2/d;

    iput-object p7, p0, Le/a/l/e2;->i:Le/a/l/p2/f;

    iput-object p8, p0, Le/a/l/e2;->j:Le/a/l/p2/v0;

    const-string p1, "PremiumStatusWorkAction"

    .line 2
    iput-object p1, p0, Le/a/l/e2;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 5

    .line 1
    new-instance v0, Ls1/z/c/y;

    invoke-direct {v0}, Ls1/z/c/y;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Ls1/z/c/y;->a:Z

    .line 2
    new-instance v2, Le/a/l/e2$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Le/a/l/e2$a;-><init>(Le/a/l/e2;Ls1/w/d;)V

    const/4 v4, 0x1

    invoke-static {v3, v2, v4, v3}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Le/a/l/e2;->j:Le/a/l/p2/v0;

    invoke-interface {v2}, Le/a/l/p2/v0;->H()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Le/a/l/e2;->j:Le/a/l/p2/v0;

    invoke-interface {v2}, Le/a/l/p2/v0;->C()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    :cond_0
    new-instance v2, Le/a/l/e2$c;

    invoke-direct {v2, p0, v3}, Le/a/l/e2$c;-><init>(Le/a/l/e2;Ls1/w/d;)V

    invoke-static {v3, v2, v4, v3}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/k;

    .line 5
    iget-object v2, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 6
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    :cond_1
    iput-boolean v1, v0, Ls1/z/c/y;->a:Z

    .line 7
    :cond_2
    iget-object v1, p0, Le/a/l/e2;->j:Le/a/l/p2/v0;

    invoke-interface {v1}, Le/a/l/p2/v0;->H()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    iget-object v1, p0, Le/a/l/e2;->i:Le/a/l/p2/f;

    invoke-virtual {v1}, Le/a/l/p2/f;->b()V

    .line 9
    new-instance v1, Le/a/l/e2$b;

    invoke-direct {v1, p0, v0, v3}, Le/a/l/e2$b;-><init>(Le/a/l/e2;Ls1/z/c/y;Ls1/w/d;)V

    invoke-static {v3, v1, v4, v3}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    iget-boolean v0, v0, Ls1/z/c/y;->a:Z

    if-eqz v0, :cond_4

    .line 11
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "ListenableWorker.Result.success()"

    .line 12
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_4
    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    const-string v1, "ListenableWorker.Result.retry()"

    .line 14
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/e2;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/e2;->c:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    return v0
.end method
