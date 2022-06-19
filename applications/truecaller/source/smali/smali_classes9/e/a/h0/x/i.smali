.class public final Le/a/h0/x/i;
.super Le/a/y2/k;
.source "SourceFile"


# static fields
.field public static final h:J


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h0/t;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/b0/o/a;

.field public final f:Le/a/h0/m;

.field public final g:Le/a/p5/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Le/a/h0/x/i;->h:J

    return-void
.end method

.method public constructor <init>(Lo3/a;Lo3/a;Le/a/b0/o/a;Le/a/h0/m;Le/a/p5/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;",
            "Lo3/a<",
            "Le/a/h0/t;",
            ">;",
            "Le/a/b0/o/a;",
            "Le/a/h0/m;",
            "Le/a/p5/c;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topSpammerRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/h0/x/i;->c:Lo3/a;

    iput-object p2, p0, Le/a/h0/x/i;->d:Lo3/a;

    iput-object p3, p0, Le/a/h0/x/i;->e:Le/a/b0/o/a;

    iput-object p4, p0, Le/a/h0/x/i;->f:Le/a/h0/m;

    iput-object p5, p0, Le/a/h0/x/i;->g:Le/a/p5/c;

    const-string p1, "TopSpammersSyncWorkAction"

    .line 2
    iput-object p1, p0, Le/a/h0/x/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/h0/x/i;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h0/t;

    invoke-interface {v0}, Le/a/h0/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    const-string v1, "Result.retry()"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/x/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/h0/x/i;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Le/a/h0/x/i;->e:Le/a/b0/o/a;

    const-string v3, "key_feature_fetch_top_spammers"

    const-wide/16 v4, 0x0

    .line 3
    invoke-interface {v0, v3, v4, v5}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    sget-wide v8, Le/a/h0/x/i;->h:J

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 5
    :cond_2
    iget-object v0, p0, Le/a/h0/x/i;->f:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->w()J

    move-result-wide v6

    add-long/2addr v8, v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    iget-object v0, p0, Le/a/h0/x/i;->g:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v3

    cmp-long v0, v3, v8

    if-lez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method
