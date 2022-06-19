.class public final Le/a/s/a/e;
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
    c = "com.truecaller.callhero_assistant.subscription.CallAssistantSubscriptionPresenter$install$1"
    f = "CallAssistantSubscriptionPresenter.kt"
    l = {
        0x31
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/s/a/d;

.field public final synthetic g:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Le/a/s/a/d;Landroid/app/Activity;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/s/a/e;->f:Le/a/s/a/d;

    iput-object p2, p0, Le/a/s/a/e;->g:Landroid/app/Activity;

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

    new-instance p1, Le/a/s/a/e;

    iget-object v0, p0, Le/a/s/a/e;->f:Le/a/s/a/d;

    iget-object v1, p0, Le/a/s/a/e;->g:Landroid/app/Activity;

    invoke-direct {p1, v0, v1, p2}, Le/a/s/a/e;-><init>(Le/a/s/a/d;Landroid/app/Activity;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/s/a/e;

    iget-object v0, p0, Le/a/s/a/e;->f:Le/a/s/a/d;

    iget-object v1, p0, Le/a/s/a/e;->g:Landroid/app/Activity;

    invoke-direct {p1, v0, v1, p2}, Le/a/s/a/e;-><init>(Le/a/s/a/d;Landroid/app/Activity;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/s/a/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Le/a/s/a/d$a$b;->b:Le/a/s/a/d$a$b;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/s/a/e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

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
    :try_start_1
    iget-object p1, p0, Le/a/s/a/e;->g:Landroid/app/Activity;

    iget-object v2, p0, Le/a/s/a/e;->f:Le/a/s/a/d;

    .line 5
    iget-object v2, v2, Le/a/s/a/d;->f:Le/a/r3/g;

    .line 6
    sget-object v4, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->CALLHERO_ASSISTANT:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    iput v3, p0, Le/a/s/a/e;->e:I

    invoke-static {p1, v2, v4, v3, p0}, Le/a/m0/a1$k;->Q0(Landroid/app/Activity;Le/a/r3/g;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    move-object p1, v0

    goto :goto_1

    .line 7
    :cond_3
    sget-object p1, Le/a/s/a/d$a$c;->b:Le/a/s/a/d$a$c;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 8
    :catch_0
    sget-object p1, Le/a/s/a/d$a$a;->b:Le/a/s/a/d$a$a;

    .line 9
    :goto_1
    iget-object v1, p0, Le/a/s/a/e;->f:Le/a/s/a/d;

    .line 10
    iget-object v4, v1, Le/a/s/a/d;->e:Le/a/p5/j0;

    const/4 v5, 0x0

    .line 11
    iget-object v1, v1, Le/a/s/a/d;->g:Le/a/p5/c0;

    const v2, 0x7f120126

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 12
    iget v7, p1, Le/a/s/a/d$a;->a:I

    .line 13
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v3, v6

    .line 14
    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    .line 15
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Le/a/s/a/e;->f:Le/a/s/a/d;

    .line 17
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/a/c;

    if-eqz p1, :cond_4

    .line 18
    invoke-interface {p1}, Le/a/s/a/c;->fb()V

    .line 19
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
