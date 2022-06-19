.class public final Le/a/n/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/j;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/h0/m;

.field public final c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Ln3/m0/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/h0/m;Le/a/r2/f;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/h0/m;",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;>;",
            "Lo3/a<",
            "Ln3/m0/y;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHistoryManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorage"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/k;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/n/k;->b:Le/a/h0/m;

    iput-object p3, p0, Le/a/n/k;->c:Le/a/r2/f;

    iput-object p4, p0, Le/a/n/k;->d:Lo3/a;

    iput-object p5, p0, Le/a/n/k;->e:Lo3/a;

    iput-object p6, p0, Le/a/n/k;->f:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/truecaller/backup/AfterRestoreBehaviorFlag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/n/k;->c:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/c;

    invoke-interface {v0}, Le/a/l0/c;->y()V

    .line 2
    iget-object v0, p0, Le/a/n/k;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/g/m;->b(Z)V

    .line 3
    iget-object v0, p0, Le/a/n/k;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Le/a/a/k/a/a/m;->d(ZZ)V

    if-eqz p1, :cond_4

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/backup/AfterRestoreBehaviorFlag;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/truecaller/backup/worker/BackupWorker;->g:Lcom/truecaller/backup/worker/BackupWorker$a;

    invoke-virtual {v0}, Lcom/truecaller/backup/worker/BackupWorker$a;->d()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Le/a/j4/b/a/c$a;

    iget-object v2, p0, Le/a/n/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Le/a/b0/g/a;

    invoke-direct {v0, v2}, Le/a/j4/b/a/c$a;-><init>(Le/a/b0/g/a;)V

    invoke-virtual {v0}, Le/a/j4/b/a/c$a;->run()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Le/a/n/k;->b:Le/a/h0/m;

    invoke-interface {v0, v1}, Le/a/h0/m;->c(Z)V

    .line 9
    iget-object v0, p0, Le/a/n/k;->a:Landroid/content/Context;

    const-string v2, "context"

    .line 10
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-string v2, "WorkManager.getInstance(context)"

    .line 12
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "workManager"

    .line 13
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v2, Ln3/m0/h;->a:Ln3/m0/h;

    .line 15
    new-instance v3, Ln3/m0/r$a;

    const-class v4, Lcom/truecaller/filters/sync/FilterSettingsUploadWorker;

    invoke-direct {v3, v4}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 16
    new-instance v4, Ln3/m0/d$a;

    invoke-direct {v4}, Ln3/m0/d$a;-><init>()V

    sget-object v5, Ln3/m0/q;->b:Ln3/m0/q;

    .line 17
    iput-object v5, v4, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 18
    new-instance v5, Ln3/m0/d;

    invoke-direct {v5, v4}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 19
    iget-object v4, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v5, v4, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 20
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v3

    check-cast v3, Ln3/m0/r;

    const-string v4, "FilterSettingsUploadWorker"

    .line 21
    invoke-virtual {v0, v4, v2, v3}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    goto :goto_0

    .line 22
    :cond_3
    iget-object v0, p0, Le/a/n/k;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "workManager.get()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ln3/m0/y;

    .line 23
    iget-object v5, p0, Le/a/n/k;->a:Landroid/content/Context;

    const-wide/16 v6, 0xf

    invoke-static {v6, v7}, Le/m/d/y/n;->G0(J)Ls1/k;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const-string v4, "SendPresenceSettingWorkAction"

    invoke-static/range {v3 .. v8}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    goto/16 :goto_0

    :cond_4
    return-void
.end method
