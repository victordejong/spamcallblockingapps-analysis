.class public final Le/a/c/c/f/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/f/l;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/c/c/f/n;

.field public final c:Le/a/c/c/d/y;


# direct methods
.method public constructor <init>(Le/a/c/c/f/n;Le/a/c/c/d/y;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "stateUseCases"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reminderDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/c/f/m;->b:Le/a/c/c/f/n;

    iput-object p2, p0, Le/a/c/c/f/m;->c:Le/a/c/c/d/y;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/c/c/f/m;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/c/f/m$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/c/f/m$a;

    iget v1, v0, Le/a/c/c/f/m$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/c/f/m$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/c/f/m$a;

    invoke-direct {v0, p0, p1}, Le/a/c/c/f/m$a;-><init>(Le/a/c/c/f/m;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/c/f/m$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/c/f/m$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/c/c/f/m$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/c/f/m;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/c/f/m;->c:Le/a/c/c/d/y;

    invoke-interface {p1}, Le/a/c/c/d/y;->d()V

    .line 5
    iget-object p1, p0, Le/a/c/c/f/m;->c:Le/a/c/c/d/y;

    invoke-interface {p1}, Le/a/c/c/d/y;->i()Ljava/util/List;

    move-result-object v2

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 8
    check-cast v6, Lcom/truecaller/insights/models/InsightsReminder;

    .line 9
    invoke-virtual {v6}, Lcom/truecaller/insights/models/InsightsReminder;->getUniqueRefId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 10
    invoke-interface {v5, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 11
    invoke-interface {p1, v2}, Le/a/c/c/d/y;->b([Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Le/a/c/c/f/m;->b:Le/a/c/c/f/n;

    iput-object p0, v0, Le/a/c/c/f/m$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/c/c/f/m$a;->e:I

    const-string v2, "INSIGHTS.REMINDERS"

    invoke-interface {p1, v2, v0}, Le/a/c/c/f/n;->l(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 13
    :goto_2
    iget-object p1, v2, Le/a/c/c/f/m;->b:Le/a/c/c/f/n;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/c/c/f/m$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/c/f/m$a;->e:I

    const-string v2, "INSIGHTS.SMS.BILL.REMINDERS"

    invoke-interface {p1, v2, v0}, Le/a/c/c/f/n;->l(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 14
    :cond_6
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
