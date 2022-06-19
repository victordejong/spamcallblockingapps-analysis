.class public final Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;->r()Landroidx/work/ListenableWorker$a;
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
    c = "com.truecaller.bizmon.newBusiness.workers.BizProfileV2FetchWorker$work$1"
    f = "BizProfileV2FetchWorker.kt"
    l = {
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->f:Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;

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

    new-instance p1, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->f:Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;-><init>(Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->f:Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;-><init>(Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->f:Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;

    .line 5
    iget-object p1, p1, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;->c:Le/a/b/a/a/b/d/b;

    if-eqz p1, :cond_9

    .line 6
    iput v3, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->e:I

    .line 7
    new-instance v1, Le/a/b/a/a/b/d/d;

    invoke-direct {v1, p1, v2}, Le/a/b/a/a/b/d/d;-><init>(Le/a/b/a/a/b/d/b;Ls1/w/d;)V

    invoke-static {v1, p0}, Le/a/n/g0;->P(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    check-cast p1, Le/a/b/a/a/b/d/a;

    .line 9
    instance-of v0, p1, Le/a/b/a/a/b/d/a$c;

    const/4 v1, 0x0

    const-string v4, "bizProfileRefreshNotifier"

    const-string v5, "bizProfileLocalFileManager"

    const-string v6, "bizV2GetProfileSuccess"

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->f:Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;

    invoke-virtual {v0}, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;->s()Le/a/b0/o/a;

    move-result-object v0

    invoke-interface {v0, v6, v3}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->f:Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;

    .line 12
    iget-object v0, v0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;->f:Le/a/m4/c/i/a/b;

    if-eqz v0, :cond_4

    .line 13
    check-cast p1, Le/a/b/a/a/b/d/a$c;

    .line 14
    iget-object v3, p1, Le/a/b/a/a/b/d/a$c;->a:Ljava/lang/Object;

    .line 15
    check-cast v3, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    invoke-interface {v0, v3}, Le/a/m4/c/i/a/b;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    .line 16
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->f:Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;

    .line 17
    iget-object v0, v0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;->g:Le/a/m4/c/i/a/e;

    if-eqz v0, :cond_3

    .line 18
    iget-object p1, p1, Le/a/b/a/a/b/d/a$c;->a:Ljava/lang/Object;

    .line 19
    check-cast p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {v0, p1, v1, v3, v2}, Le/a/l4/k;->W(Le/a/m4/c/i/a/e;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_4
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 22
    :cond_5
    instance-of p1, p1, Le/a/b/a/a/b/d/a$b$e;

    if-eqz p1, :cond_8

    .line 23
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->f:Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;->s()Le/a/b0/o/a;

    move-result-object p1

    invoke-interface {p1, v6, v3}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->f:Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;

    .line 25
    iget-object p1, p1, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;->f:Le/a/m4/c/i/a/b;

    if-eqz p1, :cond_7

    .line 26
    invoke-interface {p1}, Le/a/m4/c/i/a/b;->c()Le/a/m4/c/i/a/h;

    .line 27
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->f:Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;

    .line 28
    iget-object p1, p1, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;->g:Le/a/m4/c/i/a/e;

    if-eqz p1, :cond_6

    .line 29
    invoke-static {p1, v2, v3, v3, v2}, Le/a/l4/k;->W(Le/a/m4/c/i/a/e;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    .line 30
    :cond_6
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 31
    :cond_7
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_8
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a;->f:Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;->s()Le/a/b0/o/a;

    move-result-object p1

    invoke-interface {p1, v6, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    :goto_1
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object p1

    :cond_9
    const-string p1, "bizProfileRemoteDataSource"

    .line 34
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
