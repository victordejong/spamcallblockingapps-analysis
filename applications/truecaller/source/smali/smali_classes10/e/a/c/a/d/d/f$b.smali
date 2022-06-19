.class public final Le/a/c/a/d/d/f$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/d/d/f;->d(Le/a/c/q/f;)Lq3/a/x2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/Long;",
        "Ls1/w/d<",
        "-",
        "Lq3/a/x2/f<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.financepage.domain.FinancePageFlowUseCase$execute$1"
    f = "FinancePageFlowUseCase.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:J

.field public final synthetic f:Le/a/c/a/d/d/f;

.field public final synthetic g:Le/a/c/q/f;


# direct methods
.method public constructor <init>(Le/a/c/a/d/d/f;Le/a/c/q/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/d/f$b;->f:Le/a/c/a/d/d/f;

    iput-object p2, p0, Le/a/c/a/d/d/f$b;->g:Le/a/c/q/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/d/d/f$b;

    iget-object v1, p0, Le/a/c/a/d/d/f$b;->f:Le/a/c/a/d/d/f;

    iget-object v2, p0, Le/a/c/a/d/d/f$b;->g:Le/a/c/q/f;

    invoke-direct {v0, v1, v2, p2}, Le/a/c/a/d/d/f$b;-><init>(Le/a/c/a/d/d/f;Le/a/c/q/f;Ls1/w/d;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iput-wide p1, v0, Le/a/c/a/d/d/f$b;->e:J

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/a/d/d/f$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/a/d/d/f$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/d/d/f$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-wide v0, p0, Le/a/c/a/d/d/f$b;->e:J

    .line 2
    iget-object p1, p0, Le/a/c/a/d/d/f$b;->f:Le/a/c/a/d/d/f;

    iget-object v2, p0, Le/a/c/a/d/d/f$b;->g:Le/a/c/q/f;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "input"

    invoke-static {v2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, v2, Le/a/c/q/f;->d:Lcom/truecaller/insights/insightsui/LoadDirection;

    .line 5
    sget-object v3, Lcom/truecaller/insights/insightsui/LoadDirection;->AFTER:Lcom/truecaller/insights/insightsui/LoadDirection;

    if-ne p1, v3, :cond_0

    .line 6
    iget-wide v3, v2, Le/a/c/q/f;->c:J

    sub-long/2addr v3, v0

    .line 7
    iput-wide v3, v2, Le/a/c/q/f;->c:J

    .line 8
    iget-object p1, v2, Le/a/c/q/f;->e:Le/a/c/q/i;

    .line 9
    iget-wide v0, p1, Le/a/c/q/i;->a:J

    .line 10
    invoke-static {v3, v4, v0, v1}, Ls1/d0/j;->a(JJ)J

    move-result-wide v0

    .line 11
    iput-wide v0, v2, Le/a/c/q/f;->c:J

    goto :goto_0

    .line 12
    :cond_0
    iget-wide v3, v2, Le/a/c/q/f;->c:J

    add-long/2addr v3, v0

    .line 13
    iput-wide v3, v2, Le/a/c/q/f;->c:J

    .line 14
    iget-object p1, v2, Le/a/c/q/f;->e:Le/a/c/q/i;

    .line 15
    iget-wide v0, p1, Le/a/c/q/i;->b:J

    .line 16
    invoke-static {v3, v4, v0, v1}, Ls1/d0/j;->b(JJ)J

    move-result-wide v0

    .line 17
    iput-wide v0, v2, Le/a/c/q/f;->c:J

    .line 18
    :goto_0
    iget-object p1, p0, Le/a/c/a/d/d/f$b;->f:Le/a/c/a/d/d/f;

    .line 19
    iget-object p1, p1, Le/a/c/a/d/d/f;->b:Le/a/c/q/d;

    .line 20
    iget-object v0, p0, Le/a/c/a/d/d/f$b;->g:Le/a/c/q/f;

    invoke-interface {p1, v0}, Le/a/c/q/d;->D(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 21
    new-instance v0, Le/a/c/a/d/d/f$b$b;

    invoke-direct {v0, p1, p0}, Le/a/c/a/d/d/f$b$b;-><init>(Lq3/a/x2/f;Le/a/c/a/d/d/f$b;)V

    .line 22
    new-instance p1, Le/a/c/a/d/d/f$a;

    invoke-direct {p1}, Le/a/c/a/d/d/f$a;-><init>()V

    .line 23
    new-instance v1, Le/a/c/a/d/d/f$b$c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2, p0}, Le/a/c/a/d/d/f$b$c;-><init>(Lq3/a/x2/f;Ljava/lang/Throwable;Ls1/w/d;Le/a/c/a/d/d/f$b;)V

    .line 24
    new-instance v0, Lq3/a/x2/d1;

    invoke-direct {v0, v1}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 25
    new-instance v1, Le/a/c/a/r/c;

    invoke-direct {v1, p1, v2}, Le/a/c/a/r/c;-><init>(Ljava/lang/Throwable;Ls1/w/d;)V

    .line 26
    new-instance p1, Lq3/a/x2/u;

    invoke-direct {p1, v0, v1}, Lq3/a/x2/u;-><init>(Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 27
    new-instance v0, Le/a/c/a/d/d/f$b$a;

    invoke-direct {v0, p1}, Le/a/c/a/d/d/f$b$a;-><init>(Lq3/a/x2/f;)V

    return-object v0
.end method
