.class public final Le/a/c/v/b$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/v/b;->e(Landroid/content/Context;Le/a/c/v/i/g;Ljava/lang/String;)V
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
    c = "com.truecaller.insights.reminders.InsightsReminderManagerImpl$handleDeeplinkActionSync$1"
    f = "InsightsReminderManager.kt"
    l = {
        0xcb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/v/b;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Le/a/c/v/i/g;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/c/v/b;Landroid/content/Context;Le/a/c/v/i/g;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/v/b$c;->f:Le/a/c/v/b;

    iput-object p2, p0, Le/a/c/v/b$c;->g:Landroid/content/Context;

    iput-object p3, p0, Le/a/c/v/b$c;->h:Le/a/c/v/i/g;

    iput-object p4, p0, Le/a/c/v/b$c;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/c/v/b$c;

    iget-object v1, p0, Le/a/c/v/b$c;->f:Le/a/c/v/b;

    iget-object v2, p0, Le/a/c/v/b$c;->g:Landroid/content/Context;

    iget-object v3, p0, Le/a/c/v/b$c;->h:Le/a/c/v/i/g;

    iget-object v4, p0, Le/a/c/v/b$c;->i:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/c/v/b$c;-><init>(Le/a/c/v/b;Landroid/content/Context;Le/a/c/v/i/g;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/v/b$c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/v/b$c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/v/b$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/c/v/b$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/v/b$c;->f:Le/a/c/v/b;

    iget-object v2, p0, Le/a/c/v/b$c;->g:Landroid/content/Context;

    iget-object v4, p0, Le/a/c/v/b$c;->h:Le/a/c/v/i/g;

    iget-object v5, p0, Le/a/c/v/b$c;->i:Ljava/lang/String;

    iput v3, p0, Le/a/c/v/b$c;->e:I

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v3, v4, Le/a/c/v/i/g;->c:Le/a/c/v/h/e;

    .line 4
    sget-object v6, Le/a/c/v/h/e$a;->c:Le/a/c/v/h/e$a;

    invoke-static {v3, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p1, Le/a/c/v/b;->e:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v6, "actionHandlers.get()"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/c/v/f/b/b;

    .line 6
    instance-of v7, v6, Le/a/c/v/f/b/a;

    if-eqz v7, :cond_2

    if-eqz v5, :cond_3

    .line 7
    sget-object v3, Lcom/truecaller/insights/reminders/models/DeeplinkActionType;->ACTION_CARD:Lcom/truecaller/insights/reminders/models/DeeplinkActionType;

    invoke-static {v5}, Lcom/truecaller/insights/reminders/models/DeeplinkActionType;->valueOf(Ljava/lang/String;)Lcom/truecaller/insights/reminders/models/DeeplinkActionType;

    move-result-object v5

    if-ne v3, v5, :cond_3

    const-string v3, "show_bill"

    goto :goto_0

    .line 8
    :cond_3
    iget-object v3, v4, Le/a/c/v/i/g;->a:Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    .line 9
    invoke-virtual {v3}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getSubCategory()Ljava/lang/String;

    move-result-object v3

    const-string v5, "prepaid_expiry"

    invoke-static {v3, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "recharge"

    goto :goto_0

    :cond_4
    const-string v3, "pay_bill"

    .line 10
    :goto_0
    iget-object v5, v4, Le/a/c/v/i/g;->a:Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    const-string v7, "click"

    .line 11
    invoke-virtual {p1, v7, v3, v5}, Le/a/c/v/b;->l(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;)V

    .line 12
    invoke-interface {v6, v2, v4, p0}, Le/a/c/v/f/b/b;->a(Landroid/content/Context;Le/a/c/v/i/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    return-object v0

    .line 13
    :cond_7
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Collection contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
