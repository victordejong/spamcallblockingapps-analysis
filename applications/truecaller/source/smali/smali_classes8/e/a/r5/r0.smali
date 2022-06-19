.class public final Le/a/r5/r0;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/r5/i0;

.field public final d:Le/a/u3/g;

.field public final e:Le/a/l/p2/v0;

.field public final f:Le/a/p5/c0;

.field public final g:Le/a/r5/l0;


# direct methods
.method public constructor <init>(Le/a/r5/i0;Le/a/u3/g;Le/a/l/p2/v0;Le/a/p5/c0;Le/a/r5/l0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "whoViewedMeManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whoViewedMeNotifier"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/r5/r0;->c:Le/a/r5/i0;

    iput-object p2, p0, Le/a/r5/r0;->d:Le/a/u3/g;

    iput-object p3, p0, Le/a/r5/r0;->e:Le/a/l/p2/v0;

    iput-object p4, p0, Le/a/r5/r0;->f:Le/a/p5/c0;

    iput-object p5, p0, Le/a/r5/r0;->g:Le/a/r5/l0;

    const-string p1, "WhoViewedMeWeeklySummaryWorkAction"

    .line 2
    iput-object p1, p0, Le/a/r5/r0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 1
    new-instance v0, Le/a/r5/r0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/r5/r0$a;-><init>(Le/a/r5/r0;Ls1/w/d;)V

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
    iget-object v0, p0, Le/a/r5/r0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r5/r0;->d:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->S5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x16a

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/r5/r0;->e:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/r5/r0;->c:Le/a/r5/i0;

    invoke-interface {v0}, Le/a/r5/i0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/r5/r0;->c:Le/a/r5/i0;

    invoke-interface {v1}, Le/a/r5/i0;->r()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v0

    const-string v1, "DateTime(whoViewedMeMana\u2026tTimestamp()).plusDays(7)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/e0/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
