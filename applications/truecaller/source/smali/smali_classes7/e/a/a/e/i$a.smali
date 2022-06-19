.class public final Le/a/a/e/i$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/i;->r1()V
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
    c = "com.truecaller.messaging.inboxcleanup.AutoCleanupPresenter$onConfirmClicked$1"
    f = "AutoCleanupPresenter.kt"
    l = {
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/e/i;


# direct methods
.method public constructor <init>(Le/a/a/e/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/i$a;->f:Le/a/a/e/i;

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

    new-instance p1, Le/a/a/e/i$a;

    iget-object v0, p0, Le/a/a/e/i$a;->f:Le/a/a/e/i;

    invoke-direct {p1, v0, p2}, Le/a/a/e/i$a;-><init>(Le/a/a/e/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/e/i$a;

    iget-object v0, p0, Le/a/a/e/i$a;->f:Le/a/a/e/i;

    invoke-direct {p1, v0, p2}, Le/a/a/e/i$a;-><init>(Le/a/a/e/i;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/e/i$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/e/i$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

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
    iget-object p1, p0, Le/a/a/e/i$a;->f:Le/a/a/e/i;

    .line 5
    iget-object p1, p1, Le/a/a/e/i;->e:Le/a/a/i0;

    .line 6
    invoke-interface {p1}, Le/a/a/i0;->Q()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Le/a/a/e/i$a;->f:Le/a/a/e/i;

    .line 7
    iget-object v1, v1, Le/a/a/e/i;->e:Le/a/a/i0;

    .line 8
    invoke-interface {v1}, Le/a/a/i0;->V2()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/a/a/e/i$a;->f:Le/a/a/e/i;

    .line 9
    iget-object v1, v1, Le/a/a/e/i;->g:Le/a/u3/g;

    .line 10
    invoke-virtual {v1}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Le/a/a/e/i$a;->f:Le/a/a/e/i;

    .line 11
    iget-object v1, v1, Le/a/a/e/i;->e:Le/a/a/i0;

    .line 12
    invoke-interface {v1}, Le/a/a/i0;->V0()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    :goto_1
    invoke-interface {p1, v1}, Le/a/a/i0;->A2(Z)V

    .line 13
    iget-object p1, p0, Le/a/a/e/i$a;->f:Le/a/a/e/i;

    .line 14
    iget-object p1, p1, Le/a/a/e/i;->e:Le/a/a/i0;

    .line 15
    invoke-interface {p1}, Le/a/a/i0;->q0()Z

    move-result p1

    if-nez p1, :cond_5

    .line 16
    iget-object p1, p0, Le/a/a/e/i$a;->f:Le/a/a/e/i;

    .line 17
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/h;

    if-eqz p1, :cond_7

    const v0, 0x7f120c25

    .line 18
    invoke-interface {p1, v0}, Le/a/a/e/h;->a(I)V

    goto :goto_3

    .line 19
    :cond_5
    iget-object p1, p0, Le/a/a/e/i$a;->f:Le/a/a/e/i;

    .line 20
    iget-object v3, p1, Le/a/a/e/i;->h:Le/a/a/s0/d;

    const v5, 0x7f120252

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 21
    iput v2, p0, Le/a/a/e/i$a;->e:I

    const-string v4, "cleanInbox-confirmCleanupAutomatically"

    move-object v7, p0

    invoke-static/range {v3 .. v9}, Le/a/c/p/a;->t2(Le/a/a/s0/d;Ljava/lang/String;IZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    .line 22
    iget-object p1, p0, Le/a/a/e/i$a;->f:Le/a/a/e/i;

    .line 23
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/h;

    if-eqz p1, :cond_7

    const v0, 0x7f120455

    const v1, 0x7f120c48

    .line 24
    invoke-interface {p1, v0, v1}, Le/a/a/e/h;->Z0(II)V

    .line 25
    :cond_7
    :goto_3
    iget-object p1, p0, Le/a/a/e/i$a;->f:Le/a/a/e/i;

    .line 26
    iget-object v0, p1, Le/a/a/e/i;->f:Le/a/q2/a;

    const-string v1, "CiSetAutoCleanInbox"

    const-string v3, "type"

    .line 27
    invoke-static {v1, v3}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 28
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "isOn"

    const-string v6, "name"

    .line 29
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "getNotified"

    .line 31
    iget-object p1, p1, Le/a/a/e/i;->e:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->u0()Z

    move-result p1

    .line 32
    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {p1, v4}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p1, v3, v1, v0}, Le/d/c/a/a;->x0(Le/a/l5/a/p3$b;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    .line 35
    iget-object p1, p0, Le/a/a/e/i$a;->f:Le/a/a/e/i;

    .line 36
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/h;

    if-eqz p1, :cond_8

    .line 37
    invoke-interface {p1}, Le/a/a/e/h;->V0()V

    .line 38
    :cond_8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
