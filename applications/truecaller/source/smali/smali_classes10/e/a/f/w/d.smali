.class public final Le/a/f/w/d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.incallui.data.InCallUIRepositoryImpl$searchCaller$1"
    f = "CallerInfoRepository.kt"
    l = {
        0x47,
        0x80
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/f/w/e;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/truecaller/incallui/utils/InCallUISearchDirection;


# direct methods
.method public constructor <init>(Le/a/f/w/e;Ljava/lang/String;Lcom/truecaller/incallui/utils/InCallUISearchDirection;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/w/d;->f:Le/a/f/w/e;

    iput-object p2, p0, Le/a/f/w/d;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/f/w/d;->h:Lcom/truecaller/incallui/utils/InCallUISearchDirection;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/f/w/d;

    iget-object v0, p0, Le/a/f/w/d;->f:Le/a/f/w/e;

    iget-object v1, p0, Le/a/f/w/d;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/f/w/d;->h:Lcom/truecaller/incallui/utils/InCallUISearchDirection;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/f/w/d;-><init>(Le/a/f/w/e;Ljava/lang/String;Lcom/truecaller/incallui/utils/InCallUISearchDirection;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/w/d;

    iget-object v0, p0, Le/a/f/w/d;->f:Le/a/f/w/e;

    iget-object v1, p0, Le/a/f/w/d;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/f/w/d;->h:Lcom/truecaller/incallui/utils/InCallUISearchDirection;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/f/w/d;-><init>(Le/a/f/w/e;Ljava/lang/String;Lcom/truecaller/incallui/utils/InCallUISearchDirection;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/w/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/w/d;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

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
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/f/w/d;->f:Le/a/f/w/e;

    .line 5
    iget-object p1, p1, Le/a/f/w/e;->d:Le/a/f/z/k;

    .line 6
    iget-object v1, p0, Le/a/f/w/d;->g:Ljava/lang/String;

    iget-object v4, p0, Le/a/f/w/d;->h:Lcom/truecaller/incallui/utils/InCallUISearchDirection;

    iput v3, p0, Le/a/f/w/d;->e:I

    check-cast p1, Le/a/f/g;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v3, Le/a/f/j;

    const/4 v5, 0x0

    invoke-direct {v3, p1, v1, v4, v5}, Le/a/f/j;-><init>(Le/a/f/g;Ljava/lang/String;Lcom/truecaller/incallui/utils/InCallUISearchDirection;Ls1/w/d;)V

    .line 9
    new-instance p1, Lq3/a/x2/d1;

    invoke-direct {p1, v3}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    if-ne p1, v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    :goto_0
    check-cast p1, Lq3/a/x2/f;

    .line 11
    iget-object v1, p0, Le/a/f/w/d;->f:Le/a/f/w/e;

    .line 12
    iget-object v1, v1, Le/a/f/w/e;->f:Ls1/w/f;

    .line 13
    invoke-static {p1, v1}, Ls1/a/a/a/v0/f/d;->X0(Lq3/a/x2/f;Ls1/w/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 14
    new-instance v1, Le/a/f/w/d$a;

    invoke-direct {v1, p0}, Le/a/f/w/d$a;-><init>(Le/a/f/w/d;)V

    iput v2, p0, Le/a/f/w/d;->e:I

    invoke-interface {p1, v1, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 15
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
