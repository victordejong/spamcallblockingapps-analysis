.class public final Le/a/i/e/a/a/g$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/a/a/g;->Kj()V
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.offline.adtype.leadgen.OfflineLeadGenPresenterImpl$recordConnectionMeasurementPixel$1"
    f = "OfflineLeadGenPresenter.kt"
    l = {
        0xae
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/i/e/a/a/g;


# direct methods
.method public constructor <init>(Le/a/i/e/a/a/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/a/a/g$b;->g:Le/a/i/e/a/a/g;

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

    new-instance v0, Le/a/i/e/a/a/g$b;

    iget-object v1, p0, Le/a/i/e/a/a/g$b;->g:Le/a/i/e/a/a/g;

    invoke-direct {v0, v1, p2}, Le/a/i/e/a/a/g$b;-><init>(Le/a/i/e/a/a/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/i/e/a/a/g$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/i/e/a/a/g$b;

    iget-object v1, p0, Le/a/i/e/a/a/g$b;->g:Le/a/i/e/a/a/g;

    invoke-direct {v0, v1, p2}, Le/a/i/e/a/a/g$b;-><init>(Le/a/i/e/a/a/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/i/e/a/a/g$b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/i/e/a/a/g$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/i/e/a/a/g$b;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    iget-object p1, p0, Le/a/i/e/a/a/g$b;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    :try_start_1
    iget-object p1, p0, Le/a/i/e/a/a/g$b;->g:Le/a/i/e/a/a/g;

    invoke-static {p1}, Le/a/i/e/a/a/g;->Ij(Le/a/i/e/a/a/g;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Le/a/i/e/a/a/g$b;->g:Le/a/i/e/a/a/g;

    .line 5
    iget-object v2, v2, Le/a/i/e/a/a/g;->v:Lo3/a;

    .line 6
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i/c/c/c;

    iput v3, p0, Le/a/i/e/a/a/g$b;->f:I

    invoke-interface {v2, p1, p0}, Le/a/i/c/c/c;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    :goto_1
    instance-of v1, p1, Ls1/l$a;

    xor-int/2addr v1, v3

    if-eqz v1, :cond_4

    .line 9
    check-cast p1, Ls1/s;

    iget-object p1, p0, Le/a/i/e/a/a/g$b;->g:Le/a/i/e/a/a/g;

    .line 10
    iput-boolean v3, p1, Le/a/i/e/a/a/g;->n:Z

    :cond_4
    return-object v0
.end method
