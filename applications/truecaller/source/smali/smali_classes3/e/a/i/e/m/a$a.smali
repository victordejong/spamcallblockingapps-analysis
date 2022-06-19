.class public final Le/a/i/e/m/a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/m/a;->a()Landroidx/work/ListenableWorker$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Landroidx/work/ListenableWorker$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.offline.worker.OfflineAdsDataUploadWorkAction$execute$1"
    f = "OfflineAdsDataUploadWorkAction.kt"
    l = {
        0x1e,
        0x1f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/i/e/m/a;


# direct methods
.method public constructor <init>(Le/a/i/e/m/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/m/a$a;->i:Le/a/i/e/m/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/e/m/a$a;

    iget-object v0, p0, Le/a/i/e/m/a$a;->i:Le/a/i/e/m/a;

    invoke-direct {p1, v0, p2}, Le/a/i/e/m/a$a;-><init>(Le/a/i/e/m/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/e/m/a$a;

    iget-object v0, p0, Le/a/i/e/m/a$a;->i:Le/a/i/e/m/a;

    invoke-direct {p1, v0, p2}, Le/a/i/e/m/a$a;-><init>(Le/a/i/e/m/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/e/m/a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/e/m/a$a;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/a/i/e/m/a$a;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Le/a/i/e/m/a$a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/i/e/m/a$a;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v5, p0, Le/a/i/e/m/a$a;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Le/a/i/e/m/a$a;->e:Ljava/lang/Object;

    check-cast v6, Le/a/i/e/k/a;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, v5

    move-object v5, v1

    move-object v1, v7

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/e/m/a$a;->i:Le/a/i/e/m/a;

    .line 5
    iget-object p1, p1, Le/a/i/e/m/a;->c:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Le/a/i/e/k/a;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iput-object v6, p0, Le/a/i/e/m/a$a;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/i/e/m/a$a;->f:Ljava/lang/Object;

    iput-object v1, p0, Le/a/i/e/m/a$a;->g:Ljava/lang/Object;

    iput v4, p0, Le/a/i/e/m/a$a;->h:I

    invoke-interface {v6, p0}, Le/a/i/e/k/a;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v5, v1

    :goto_0
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iput-object v1, p0, Le/a/i/e/m/a$a;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/i/e/m/a$a;->f:Ljava/lang/Object;

    iput-object v2, p0, Le/a/i/e/m/a$a;->g:Ljava/lang/Object;

    iput v3, p0, Le/a/i/e/m/a$a;->h:I

    invoke-interface {v6, p0}, Le/a/i/e/k/a;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v1

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v4

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v2, v0

    .line 13
    :cond_6
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    .line 14
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    goto :goto_2

    .line 16
    :cond_7
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    :goto_2
    const-string v0, "uploadTaskResultList.fir\u2026leWorker.Result.success()"

    .line 17
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
