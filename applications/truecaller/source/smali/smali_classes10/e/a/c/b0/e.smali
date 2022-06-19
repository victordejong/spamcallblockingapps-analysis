.class public final Le/a/c/b0/e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/models/pdo/SmsBackup;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Lq3/a/x2/f<",
        "+",
        "Ljava/util/List<",
        "+",
        "Le/a/c/q/k;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.updates.UpdatesRepositoryImpl$filterAndConvertToUpdates$1"
    f = "UpdatesRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/c/b0/f;


# direct methods
.method public constructor <init>(Le/a/c/b0/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/b0/e;->f:Le/a/c/b0/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/b0/e;

    iget-object v1, p0, Le/a/c/b0/e;->f:Le/a/c/b0/f;

    invoke-direct {v0, v1, p2}, Le/a/c/b0/e;-><init>(Le/a/c/b0/f;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/b0/e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/b0/e;

    iget-object v1, p0, Le/a/c/b0/e;->f:Le/a/c/b0/f;

    invoke-direct {v0, v1, p2}, Le/a/c/b0/e;-><init>(Le/a/c/b0/f;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/b0/e;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/b0/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/b0/e;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/c/b0/e;->f:Le/a/c/b0/f;

    .line 3
    iget-object v0, v0, Le/a/c/b0/f;->c:Le/a/c/n/d;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 7
    invoke-virtual {v3}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessageID()J

    move-result-wide v3

    .line 8
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 9
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Le/a/c/n/d;->k(Ljava/util/List;)Lq3/a/x2/f;

    move-result-object v0

    .line 10
    new-instance v1, Le/a/c/b0/e$a;

    invoke-direct {v1, v0, p0, p1}, Le/a/c/b0/e$a;-><init>(Lq3/a/x2/f;Le/a/c/b0/e;Ljava/util/List;)V

    return-object v1
.end method
