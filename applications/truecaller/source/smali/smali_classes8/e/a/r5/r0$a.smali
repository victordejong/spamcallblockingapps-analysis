.class public final Le/a/r5/r0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r5/r0;->a()Landroidx/work/ListenableWorker$a;
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
    c = "com.truecaller.whoviewedme.WhoViewedMeWeeklySummaryWorkAction$execute$1"
    f = "WhoViewedMeWeeklySummaryWorkAction.kt"
    l = {
        0x22
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r5/r0;


# direct methods
.method public constructor <init>(Le/a/r5/r0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r5/r0$a;->f:Le/a/r5/r0;

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

    new-instance p1, Le/a/r5/r0$a;

    iget-object v0, p0, Le/a/r5/r0$a;->f:Le/a/r5/r0;

    invoke-direct {p1, v0, p2}, Le/a/r5/r0$a;-><init>(Le/a/r5/r0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r5/r0$a;

    iget-object v0, p0, Le/a/r5/r0$a;->f:Le/a/r5/r0;

    invoke-direct {p1, v0, p2}, Le/a/r5/r0$a;-><init>(Le/a/r5/r0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r5/r0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/r5/r0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/r5/r0$a;->f:Le/a/r5/r0;

    .line 5
    iget-object v4, p1, Le/a/r5/r0;->c:Le/a/r5/i0;

    const/4 v5, 0x0

    .line 6
    invoke-interface {v4}, Le/a/r5/i0;->r()J

    move-result-wide v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    iput v3, p0, Le/a/r5/r0$a;->e:I

    move-object v8, p0

    invoke-static/range {v4 .. v10}, Le/a/p5/s0/g;->E(Le/a/r5/i0;Lcom/truecaller/whoviewedme/ProfileViewSource;JLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 9
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Le/a/r5/o;

    .line 12
    iget-object v4, v4, Le/a/r5/o;->e:Lcom/truecaller/data/entity/Contact;

    .line 13
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4}, Le/a/p5/s0/g;->y0(Lcom/truecaller/data/entity/Address;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    if-eqz v5, :cond_4

    .line 14
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_6
    new-instance v2, Le/a/r5/r0$a$a;

    invoke-direct {v2, v1}, Le/a/r5/r0$a$a;-><init>(Ljava/lang/Iterable;)V

    .line 16
    invoke-static {v2}, Le/q/f/a/d/a;->g0(Ls1/u/v;)Ljava/util/Map;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    move-object v2, v5

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 18
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 19
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 20
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 21
    invoke-virtual {v4, v7}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_a

    move-object v5, v2

    move-object v4, v7

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_2
    check-cast v5, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 23
    iget-object v1, p0, Le/a/r5/r0$a;->f:Le/a/r5/r0;

    .line 24
    iget-object v1, v1, Le/a/r5/r0;->f:Le/a/p5/c0;

    const v2, 0x7f1207da

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    .line 25
    invoke-interface {v1, v2, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026eminderNotificationTitle)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_b

    .line 26
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 27
    iget-object v6, p0, Le/a/r5/r0$a;->f:Le/a/r5/r0;

    .line 28
    iget-object v6, v6, Le/a/r5/r0;->f:Le/a/p5/c0;

    const v7, 0x7f100037

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 29
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v4

    aput-object v2, v8, v3

    const/4 v2, 0x2

    .line 30
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v8, v2

    .line 31
    invoke-interface {v6, v7, p1, v8}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 32
    :cond_b
    iget-object v2, p0, Le/a/r5/r0$a;->f:Le/a/r5/r0;

    .line 33
    iget-object v2, v2, Le/a/r5/r0;->f:Le/a/p5/c0;

    const v5, 0x7f100036

    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v3, v4

    .line 35
    invoke-interface {v2, v5, p1, v3}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string v2, "if (it != null) {\n      \u2026  )\n                    }"

    .line 36
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Le/a/r5/r0$a;->f:Le/a/r5/r0;

    .line 38
    iget-object v2, v2, Le/a/r5/r0;->g:Le/a/r5/l0;

    .line 39
    sget-object v3, Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;->WEEKLY_SUMMARY_NOTIFICATION:Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;

    invoke-virtual {v2, v1, p1, v3}, Le/a/r5/l0;->a(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;)V

    return-object v0
.end method
