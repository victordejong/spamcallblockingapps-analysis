.class public final Le/a/c/a/n/b/e$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/n/b/e;->e(Le/a/c/q/f;)Lq3/a/x2/f;
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
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.reminders.domain.RemindersPageFlowUseCase$execute$1"
    f = "RemindersPageFlowUseCase.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:J

.field public final synthetic f:Le/a/c/a/n/b/e;

.field public final synthetic g:Le/a/c/q/f;


# direct methods
.method public constructor <init>(Le/a/c/a/n/b/e;Le/a/c/q/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/n/b/e$b;->f:Le/a/c/a/n/b/e;

    iput-object p2, p0, Le/a/c/a/n/b/e$b;->g:Le/a/c/q/f;

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

    new-instance v0, Le/a/c/a/n/b/e$b;

    iget-object v1, p0, Le/a/c/a/n/b/e$b;->f:Le/a/c/a/n/b/e;

    iget-object v2, p0, Le/a/c/a/n/b/e$b;->g:Le/a/c/q/f;

    invoke-direct {v0, v1, v2, p2}, Le/a/c/a/n/b/e$b;-><init>(Le/a/c/a/n/b/e;Le/a/c/q/f;Ls1/w/d;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iput-wide p1, v0, Le/a/c/a/n/b/e$b;->e:J

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/a/n/b/e$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/a/n/b/e$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/n/b/e$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-wide v0, p0, Le/a/c/a/n/b/e$b;->e:J

    .line 2
    iget-object p1, p0, Le/a/c/a/n/b/e$b;->f:Le/a/c/a/n/b/e;

    iget-object v2, p0, Le/a/c/a/n/b/e$b;->g:Le/a/c/q/f;

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

    .line 12
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1, v0, v1}, Lw3/b/a/b;-><init>(J)V

    .line 13
    invoke-virtual {p1}, Lw3/b/a/e0/a;->q()I

    move-result v0

    invoke-virtual {p1, v0}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object p1

    const-string v0, "dateTime.minusDays(dateT\u2026h).withTimeAtStartOfDay()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-wide v0, p1, Lw3/b/a/e0/e;->a:J

    .line 15
    iput-wide v0, v2, Le/a/c/q/f;->c:J

    goto :goto_0

    .line 16
    :cond_0
    iget-wide v3, v2, Le/a/c/q/f;->c:J

    add-long/2addr v3, v0

    .line 17
    iput-wide v3, v2, Le/a/c/q/f;->c:J

    .line 18
    iget-object p1, v2, Le/a/c/q/f;->e:Le/a/c/q/i;

    .line 19
    iget-wide v0, p1, Le/a/c/q/i;->b:J

    .line 20
    invoke-static {v3, v4, v0, v1}, Ls1/d0/j;->b(JJ)J

    move-result-wide v0

    .line 21
    iput-wide v0, v2, Le/a/c/q/f;->c:J

    .line 22
    :goto_0
    iget-object p1, p0, Le/a/c/a/n/b/e$b;->g:Le/a/c/q/f;

    .line 23
    iget-boolean v0, p1, Le/a/c/q/f;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 24
    iget-object p1, p0, Le/a/c/a/n/b/e$b;->f:Le/a/c/a/n/b/e;

    .line 25
    iget-object p1, p1, Le/a/c/a/n/b/e;->b:Ljava/util/Set;

    .line 26
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 27
    iget-object p1, p0, Le/a/c/a/n/b/e$b;->f:Le/a/c/a/n/b/e;

    iget-object v0, p0, Le/a/c/a/n/b/e$b;->g:Le/a/c/q/f;

    .line 28
    iget-object v2, p1, Le/a/c/a/n/b/e;->d:Le/a/c/q/d;

    invoke-interface {v2, v0}, Le/a/c/q/d;->v(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object v0

    .line 29
    new-instance v2, Le/a/c/a/n/b/g;

    invoke-direct {v2, v0, p1}, Le/a/c/a/n/b/g;-><init>(Lq3/a/x2/f;Le/a/c/a/n/b/e;)V

    .line 30
    iget-object p1, p0, Le/a/c/a/n/b/e$b;->f:Le/a/c/a/n/b/e;

    .line 31
    iget-object v0, p1, Le/a/c/a/n/b/e;->e:Le/a/c/a/c/f/g;

    iget-object p1, p1, Le/a/c/a/n/b/e;->c:Le/a/c/a/c/f/f;

    invoke-virtual {v0, p1}, Le/a/c/a/i/c;->c(Ljava/lang/Object;)Lq3/a/x2/f;

    move-result-object p1

    .line 32
    new-instance v0, Le/a/c/a/n/b/k;

    invoke-direct {v0, p1}, Le/a/c/a/n/b/k;-><init>(Lq3/a/x2/f;)V

    .line 33
    new-instance p1, Le/a/c/a/n/b/e$b$a;

    invoke-direct {p1, p0, v1}, Le/a/c/a/n/b/e$b$a;-><init>(Le/a/c/a/n/b/e$b;Ls1/w/d;)V

    .line 34
    new-instance v1, Lq3/a/x2/w0;

    invoke-direct {v1, v2, v0, p1}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    goto :goto_1

    .line 35
    :cond_1
    iget-object v0, p0, Le/a/c/a/n/b/e$b;->f:Le/a/c/a/n/b/e;

    .line 36
    iget-object v2, v0, Le/a/c/a/n/b/e;->d:Le/a/c/q/d;

    invoke-interface {v2, p1}, Le/a/c/q/d;->v(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 37
    new-instance v2, Le/a/c/a/n/b/e$a;

    invoke-direct {v2}, Le/a/c/a/n/b/e$a;-><init>()V

    .line 38
    new-instance v3, Le/a/c/a/n/b/i;

    invoke-direct {v3, p1, v2, v1, v0}, Le/a/c/a/n/b/i;-><init>(Lq3/a/x2/f;Ljava/lang/Throwable;Ls1/w/d;Le/a/c/a/n/b/e;)V

    .line 39
    new-instance p1, Lq3/a/x2/d1;

    invoke-direct {p1, v3}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 40
    new-instance v0, Le/a/c/a/r/c;

    invoke-direct {v0, v2, v1}, Le/a/c/a/r/c;-><init>(Ljava/lang/Throwable;Ls1/w/d;)V

    .line 41
    new-instance v1, Lq3/a/x2/u;

    invoke-direct {v1, p1, v0}, Lq3/a/x2/u;-><init>(Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 42
    new-instance p1, Le/a/c/a/n/b/h;

    invoke-direct {p1, v1}, Le/a/c/a/n/b/h;-><init>(Lq3/a/x2/f;)V

    .line 43
    new-instance v1, Le/a/c/a/n/b/e$b$b;

    invoke-direct {v1, p1, p0}, Le/a/c/a/n/b/e$b$b;-><init>(Lq3/a/x2/f;Le/a/c/a/n/b/e$b;)V

    :goto_1
    return-object v1
.end method
