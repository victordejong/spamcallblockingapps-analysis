.class public final Le/a/b/o/e/d$a$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/o/e/d$a$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.bizmon.governmentServices.mvp.DistrictListPresenter$loadDataFromDB$2$1$1$1"
    f = "DistrictListMvp.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/b/o/e/d$a$a;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/b/o/e/d$a$a;)V
    .locals 0

    iput-object p2, p0, Le/a/b/o/e/d$a$a$a;->e:Le/a/b/o/e/d$a$a;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/b/o/e/d$a$a$a;

    iget-object v0, p0, Le/a/b/o/e/d$a$a$a;->e:Le/a/b/o/e/d$a$a;

    invoke-direct {p1, p2, v0}, Le/a/b/o/e/d$a$a$a;-><init>(Ls1/w/d;Le/a/b/o/e/d$a$a;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/o/e/d$a$a$a;

    iget-object v0, p0, Le/a/b/o/e/d$a$a$a;->e:Le/a/b/o/e/d$a$a;

    invoke-direct {p1, p2, v0}, Le/a/b/o/e/d$a$a$a;-><init>(Ls1/w/d;Le/a/b/o/e/d$a$a;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/o/e/d$a$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/b/o/e/d$a$a$a;->e:Le/a/b/o/e/d$a$a;

    iget-object p1, p1, Le/a/b/o/e/d$a$a;->b:Le/a/b/o/e/d$a;

    iget-object p1, p1, Le/a/b/o/e/d$a;->b:Le/a/b/o/e/d;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/o/e/b;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Le/a/b/o/e/b;->Y1()V

    .line 5
    iget-object v0, p0, Le/a/b/o/e/d$a$a$a;->e:Le/a/b/o/e/d$a$a;

    iget-object v0, v0, Le/a/b/o/e/d$a$a;->b:Le/a/b/o/e/d$a;

    iget-object v1, v0, Le/a/b/o/e/d$a;->b:Le/a/b/o/e/d;

    .line 6
    iget-object v1, v1, Le/a/b/o/e/d;->k:Le/a/p5/c0;

    .line 7
    sget v2, Lcom/truecaller/bizmon/R$string;->biz_govt_show_results_header:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v0, v0, Le/a/b/o/e/d$a;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v1, v2, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026esults_header, stateName)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/b/o/e/b;->s2(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Le/a/b/o/e/b;->O2()V

    .line 9
    iget-object v0, p0, Le/a/b/o/e/d$a$a$a;->e:Le/a/b/o/e/d$a$a;

    iget-object v0, v0, Le/a/b/o/e/d$a$a;->b:Le/a/b/o/e/d$a;

    iget-object v0, v0, Le/a/b/o/e/d$a;->b:Le/a/b/o/e/d;

    .line 10
    iget-object v0, v0, Le/a/b/o/e/d;->o:Le/a/u3/g;

    .line 11
    iget-object v1, v0, Le/a/u3/g;->a4:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x108

    aget-object v2, v2, v4

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b/o/e/d$a$a$a;->e:Le/a/b/o/e/d$a$a;

    iget-object v0, v0, Le/a/b/o/e/d$a$a;->b:Le/a/b/o/e/d$a;

    iget-object v0, v0, Le/a/b/o/e/d$a;->b:Le/a/b/o/e/d;

    .line 13
    iget v1, v0, Le/a/b/o/e/d;->g:I

    if-lez v1, :cond_0

    .line 14
    iget-wide v0, v0, Le/a/b/o/e/d;->e:J

    .line 15
    invoke-interface {p1, v0, v1}, Le/a/b/o/e/b;->Yz(J)V

    .line 16
    invoke-interface {p1}, Le/a/b/o/e/b;->Br()V

    .line 17
    iget-object v0, p0, Le/a/b/o/e/d$a$a$a;->e:Le/a/b/o/e/d$a$a;

    iget-object v0, v0, Le/a/b/o/e/d$a$a;->b:Le/a/b/o/e/d$a;

    iget-object v0, v0, Le/a/b/o/e/d$a;->b:Le/a/b/o/e/d;

    .line 18
    iget-object v1, v0, Le/a/b/o/e/d;->k:Le/a/p5/c0;

    .line 19
    sget v2, Lcom/truecaller/bizmon/R$plurals;->biz_govt_contacts_count:I

    .line 20
    iget v0, v0, Le/a/b/o/e/d;->g:I

    new-array v4, v3, [Ljava/lang/Object;

    .line 21
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 22
    invoke-interface {v1, v2, v0, v4}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getQuan\u2026                        )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p1, v0}, Le/a/b/o/e/b;->v8(Ljava/lang/String;)V

    .line 24
    :cond_0
    iget-object v0, p0, Le/a/b/o/e/d$a$a$a;->e:Le/a/b/o/e/d$a$a;

    iget-object v0, v0, Le/a/b/o/e/d$a$a;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 25
    invoke-interface {p1}, Le/a/b/o/e/b;->y4()V

    .line 26
    iget-object v0, p0, Le/a/b/o/e/d$a$a$a;->e:Le/a/b/o/e/d$a$a;

    iget-object v0, v0, Le/a/b/o/e/d$a$a;->a:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Le/a/b/o/e/b;->X2(Ljava/util/ArrayList;)V

    .line 27
    invoke-interface {p1}, Le/a/b/o/e/b;->G1()V

    .line 28
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
