.class public final Le/a/a/m/o;
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
    c = "com.truecaller.messaging.promo.InboxCleanerSpamTabPresenter$onBindItem$1"
    f = "PromoPresenter.kt"
    l = {
        0xb3,
        0xb4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/a/m/p;

.field public final synthetic i:Le/a/a/m/n1;


# direct methods
.method public constructor <init>(Le/a/a/m/p;Le/a/a/m/n1;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/m/o;->h:Le/a/a/m/p;

    iput-object p2, p0, Le/a/a/m/o;->i:Le/a/a/m/n1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/m/o;

    iget-object v0, p0, Le/a/a/m/o;->h:Le/a/a/m/p;

    iget-object v1, p0, Le/a/a/m/o;->i:Le/a/a/m/n1;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/m/o;-><init>(Le/a/a/m/p;Le/a/a/m/n1;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/m/o;

    iget-object v0, p0, Le/a/a/m/o;->h:Le/a/a/m/p;

    iget-object v1, p0, Le/a/a/m/o;->i:Le/a/a/m/n1;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/m/o;-><init>(Le/a/a/m/p;Le/a/a/m/n1;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/m/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/m/o;->g:I

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
    iget-object v1, p0, Le/a/a/m/o;->f:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/a0;

    iget-object v3, p0, Le/a/a/m/o;->e:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/a0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ls1/z/c/a0;

    invoke-direct {v1}, Ls1/z/c/a0;-><init>()V

    iget-object p1, p0, Le/a/a/m/o;->h:Le/a/a/m/p;

    .line 5
    iget-object p1, p1, Le/a/a/m/p;->f:Le/a/a/e/m;

    .line 6
    new-instance v4, Lw3/b/a/b;

    invoke-direct {v4}, Lw3/b/a/b;-><init>()V

    const/16 v5, 0x1e

    .line 7
    invoke-virtual {v4, v5}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v4

    const-string v5, "DateTime.now().minusDays(INBOX_CLEANUP_DAYS_30)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide v4, v4, Lw3/b/a/e0/e;->a:J

    .line 9
    iput-object v1, p0, Le/a/a/m/o;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/a/m/o;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/a/m/o;->g:I

    invoke-interface {p1, v4, v5, p0}, Le/a/a/e/m;->f(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, v1

    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v1, Ls1/z/c/a0;->a:I

    .line 10
    iget-object p1, p0, Le/a/a/m/o;->h:Le/a/a/m/p;

    .line 11
    iget-object p1, p1, Le/a/a/m/p;->h:Ls1/w/f;

    .line 12
    new-instance v1, Le/a/a/m/o$a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Le/a/a/m/o$a;-><init>(Le/a/a/m/o;Ls1/z/c/a0;Ls1/w/d;)V

    iput-object v4, p0, Le/a/a/m/o;->e:Ljava/lang/Object;

    iput-object v4, p0, Le/a/a/m/o;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/a/m/o;->g:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 13
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
