.class public final Le/a/a/e/x$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/x;->jf()V
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
    c = "com.truecaller.messaging.inboxcleanup.InboxCleanupPresenter$onConfirmDeleteClicked$1"
    f = "InboxCleanupPresenter.kt"
    l = {
        0x84
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/e/x;


# direct methods
.method public constructor <init>(Le/a/a/e/x;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/x$b;->f:Le/a/a/e/x;

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

    new-instance p1, Le/a/a/e/x$b;

    iget-object v0, p0, Le/a/a/e/x$b;->f:Le/a/a/e/x;

    invoke-direct {p1, v0, p2}, Le/a/a/e/x$b;-><init>(Le/a/a/e/x;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/e/x$b;

    iget-object v0, p0, Le/a/a/e/x$b;->f:Le/a/a/e/x;

    invoke-direct {p1, v0, p2}, Le/a/a/e/x$b;-><init>(Le/a/a/e/x;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/e/x$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/e/x$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Le/a/a/e/x$b;->f:Le/a/a/e/x;

    .line 5
    iget-object p1, p1, Le/a/a/e/x;->o:Le/a/p5/g;

    .line 6
    invoke-interface {p1}, Le/a/p5/g;->c()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Le/a/a/e/x$b;->f:Le/a/a/e/x;

    .line 8
    iget-object p1, p1, Le/a/a/e/x;->n:Le/a/q2/a;

    const-string v1, "Ci2b-VisitDefaultSmsAppSetting"

    const-string v3, "type"

    .line 9
    invoke-static {v1, v3}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 10
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 11
    invoke-static {v1, v4, v3, v5, p1}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    .line 12
    :cond_2
    iget-object p1, p0, Le/a/a/e/x$b;->f:Le/a/a/e/x;

    .line 13
    iget-object v3, p1, Le/a/a/e/x;->l:Le/a/a/s0/d;

    const v5, 0x7f120252

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 14
    iput v2, p0, Le/a/a/e/x$b;->e:I

    const-string v4, "cleanInbox-confirmCleanupManually"

    move-object v7, p0

    invoke-static/range {v3 .. v9}, Le/a/c/p/a;->t2(Le/a/a/s0/d;Ljava/lang/String;IZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    iget-object p1, p0, Le/a/a/e/x$b;->f:Le/a/a/e/x;

    .line 16
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/v;

    if-eqz p1, :cond_6

    const v0, 0x7f120455

    const v1, 0x7f120c48

    .line 17
    invoke-interface {p1, v0, v1}, Le/a/a/e/v;->Z0(II)V

    goto :goto_1

    .line 18
    :cond_4
    iget-object p1, p0, Le/a/a/e/x$b;->f:Le/a/a/e/x;

    .line 19
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/v;

    if-eqz p1, :cond_5

    .line 20
    invoke-interface {p1, v2}, Le/a/a/e/v;->cp(Z)V

    .line 21
    :cond_5
    iget-object p1, p0, Le/a/a/e/x$b;->f:Le/a/a/e/x;

    .line 22
    iget-object p1, p1, Le/a/a/e/x;->k:Le/a/a/e/m;

    .line 23
    invoke-interface {p1}, Le/a/a/e/m;->c()V

    .line 24
    iget-object p1, p0, Le/a/a/e/x$b;->f:Le/a/a/e/x;

    .line 25
    iget-boolean v0, p1, Le/a/a/e/x;->g:Z

    if-eqz v0, :cond_6

    .line 26
    iget-object p1, p1, Le/a/a/e/x;->s:Le/a/q2/d1/d;

    const-string v0, "ci_manual_cleanup"

    .line 27
    invoke-interface {p1, v0}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    .line 28
    :cond_6
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
