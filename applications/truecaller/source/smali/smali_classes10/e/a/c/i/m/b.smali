.class public final Le/a/c/i/m/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/m/a;


# instance fields
.field public final a:Le/a/c/c/d/d0;

.field public final b:Le/a/b0/o/a;

.field public final c:Le/a/c/c/d/c;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/c/d/d0;Le/a/b0/o/a;Le/a/c/c/d/c;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "pdoDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountModelDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/m/b;->a:Le/a/c/c/d/d0;

    iput-object p2, p0, Le/a/c/i/m/b;->b:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/c/i/m/b;->c:Le/a/c/c/d/c;

    iput-object p4, p0, Le/a/c/i/m/b;->d:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/c/i/m/b;->b:Le/a/b0/o/a;

    const-string v1, "deleteBackupDuplicates"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/truecaller/insights/workers/InsightsReSyncWorker;->g:Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;

    const/4 v1, 0x1

    const/4 v3, 0x2

    const-string v4, "re_run_context_restore"

    invoke-static {v0, v4, v2, v1, v3}, Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;->c(Lcom/truecaller/insights/workers/InsightsReSyncWorker$a;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public b(Ljava/util/List;ILs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/i/m/b;->d:Ls1/w/f;

    new-instance v1, Le/a/c/i/m/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/c/i/m/b$b;-><init>(Le/a/c/i/m/b;Ljava/util/List;ILs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public c(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messageIds"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/i/m/b;->d:Ls1/w/f;

    new-instance v1, Le/a/c/i/m/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/c/i/m/b$a;-><init>(Le/a/c/i/m/b;Ljava/util/Set;Ls1/w/d;)V

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->b3(Ls1/w/f;Ls1/z/b/p;)Ljava/lang/Object;

    return-void
.end method
