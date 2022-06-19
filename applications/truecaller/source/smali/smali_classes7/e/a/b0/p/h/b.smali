.class public final Le/a/b0/p/h/b;
.super Le/a/y2/k;
.source "SourceFile"


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
            "Le/a/b0/p/d;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/p/d;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/e/f;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/b0/p/h/b;->c:Lo3/a;

    iput-object p2, p0, Le/a/b0/p/h/b;->d:Lo3/a;

    iput-object p3, p0, Le/a/b0/p/h/b;->e:Lo3/a;

    const-string p1, "TagKeywordsDownloadWorkAction"

    .line 2
    iput-object p1, p0, Le/a/b0/p/h/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static final d(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    const-string v0, "WorkManager.getInstance(context)"

    .line 3
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const-string v2, "TagKeywordsDownloadWorkAction"

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/b0/p/h/b;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/p/d;

    invoke-interface {v0}, Le/a/b0/p/d;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "tagsKeywordsFeatureCurrentVersion"

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Le/a/n/g0;->J(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "tagsKeywordsFeatureLastVersion"

    .line 3
    invoke-static {v5, v1, v2}, Le/a/n/g0;->J(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v3, v6

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const-string v3, "tagsPhonebookForcedUpload"

    .line 4
    invoke-static {v3, v4}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    .line 5
    :cond_1
    invoke-static {v0, v1, v2}, Le/a/n/g0;->J(Ljava/lang/String;J)J

    move-result-wide v0

    .line 6
    invoke-static {v5, v0, v1}, Le/a/n/g0;->y0(Ljava/lang/String;J)V

    .line 7
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 8
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_2
    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    const-string v1, "Result.retry()"

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/p/h/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/p/h/b;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "featureAutoTagging"

    .line 2
    invoke-static {v0, v1}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/b0/p/h/b;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
