.class public final Le/a/o/b/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/o/b/g0$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/o/b/o;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/l;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/p5/c;

.field public final d:Le/a/o/b/f;

.field public final e:Le/a/o/b/l0;

.field public final f:Le/a/o/f;

.field public final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/o/b/o;Lo3/a;Le/a/p5/c;Le/a/o/b/f;Le/a/o/b/l0;Le/a/o/f;Ljavax/inject/Provider;)V
    .locals 1
    .param p7    # Ljavax/inject/Provider;
        .annotation runtime Ljavax/inject/Named;
            value = "callReasonPickerSecondCallInterval"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/o/b/o;",
            "Lo3/a<",
            "Le/a/p5/l;",
            ">;",
            "Le/a/p5/c;",
            "Le/a/o/b/f;",
            "Le/a/o/b/l0;",
            "Le/a/o/f;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contextCallSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outgoingMessageHandler"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallSupport"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondCallIntervalConfigInMin"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/b/g0;->a:Le/a/o/b/o;

    iput-object p2, p0, Le/a/o/b/g0;->b:Lo3/a;

    iput-object p3, p0, Le/a/o/b/g0;->c:Le/a/p5/c;

    iput-object p4, p0, Le/a/o/b/g0;->d:Le/a/o/b/f;

    iput-object p5, p0, Le/a/o/b/g0;->e:Le/a/o/b/l0;

    iput-object p6, p0, Le/a/o/b/g0;->f:Le/a/o/f;

    iput-object p7, p0, Le/a/o/b/g0;->g:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/o/b/g0;->f:Le/a/o/f;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast v0, Le/a/o/h;

    .line 3
    iget-object v0, v0, Le/a/o/h;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e3/a;

    .line 4
    invoke-interface {v0, p1}, Le/a/e3/a;->b(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o/b/g0;->a:Le/a/o/b/o;

    const-string v1, "shouldShowCallReasonOnMidCall"

    .line 2
    invoke-interface {v0, v1}, Le/a/o/b/o;->remove(Ljava/lang/String;)V

    const-string v1, "callInitiatedInfo"

    .line 3
    invoke-interface {v0, v1}, Le/a/o/b/o;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/truecaller/contextcall/utils/SecondCallContext$Context;Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/contextcall/utils/SecondCallContext$Context;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p3, Le/a/o/b/g0$b;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/o/b/g0$b;

    iget v2, v1, Le/a/o/b/g0$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/o/b/g0$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/o/b/g0$b;

    invoke-direct {v1, p0, p3}, Le/a/o/b/g0$b;-><init>(Le/a/o/b/g0;Ls1/w/d;)V

    :goto_0
    iget-object p3, v1, Le/a/o/b/g0$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/o/b/g0$b;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/o/b/g0$b;->i:Ljava/lang/Object;

    check-cast p1, Le/a/o/b/g0$a;

    iget-object p2, v1, Le/a/o/b/g0$b;->h:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v1, v1, Le/a/o/b/g0$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/o/b/g0;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Le/a/o/b/g0$b;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/truecaller/contextcall/utils/SecondCallContext$Context;

    iget-object p1, v1, Le/a/o/b/g0$b;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v3, v1, Le/a/o/b/g0$b;->g:Ljava/lang/Object;

    check-cast v3, Le/a/o/b/g0;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_e

    .line 4
    iget-object p3, p0, Le/a/o/b/g0;->d:Le/a/o/b/f;

    iput-object p0, v1, Le/a/o/b/g0$b;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/o/b/g0$b;->h:Ljava/lang/Object;

    iput-object p2, v1, Le/a/o/b/g0$b;->i:Ljava/lang/Object;

    iput v6, v1, Le/a/o/b/g0$b;->e:I

    invoke-interface {p3, p1, v1}, Le/a/o/b/f;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_4

    return-object v2

    :cond_4
    move-object v3, p0

    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_5

    .line 5
    invoke-virtual {v3}, Le/a/o/b/g0;->b()V

    return-object v0

    .line 6
    :cond_5
    iget-object p3, v3, Le/a/o/b/g0;->e:Le/a/o/b/l0;

    invoke-interface {p3}, Le/a/o/b/l0;->i()Lq3/a/x2/a1;

    move-result-object p3

    invoke-interface {p3}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/truecaller/data/entity/CallContextMessage;

    if-eqz p3, :cond_6

    .line 7
    iget-object p3, p3, Lcom/truecaller/data/entity/CallContextMessage;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    .line 8
    :goto_2
    invoke-static {p3, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 9
    invoke-virtual {v3}, Le/a/o/b/g0;->b()V

    return-object v0

    .line 10
    :cond_7
    iget-object p3, v3, Le/a/o/b/g0;->a:Le/a/o/b/o;

    const-string v7, "callInitiatedInfo"

    invoke-interface {p3, v7}, Le/a/o/b/o;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_d

    .line 11
    iget-object v7, v3, Le/a/o/b/g0;->b:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/p5/l;

    const-class v8, Le/a/o/b/g0$a;

    invoke-interface {v7, p3, v8}, Le/a/p5/l;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/o/b/g0$a;

    if-eqz p3, :cond_c

    .line 12
    sget-object v7, Lcom/truecaller/contextcall/utils/SecondCallContext$Context;->POPUP_CALLER_ID:Lcom/truecaller/contextcall/utils/SecondCallContext$Context;

    if-ne p2, v7, :cond_a

    .line 13
    iget-object p2, v3, Le/a/o/b/g0;->f:Le/a/o/f;

    iput-object v3, v1, Le/a/o/b/g0$b;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/o/b/g0$b;->h:Ljava/lang/Object;

    iput-object p3, v1, Le/a/o/b/g0$b;->i:Ljava/lang/Object;

    iput v4, v1, Le/a/o/b/g0$b;->e:I

    check-cast p2, Le/a/o/h;

    invoke-virtual {p2, p1, v1}, Le/a/o/h;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_8

    return-object v2

    :cond_8
    move-object v1, v3

    move-object v9, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, v9

    :goto_3
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-lez p3, :cond_9

    .line 14
    invoke-virtual {v1, v5}, Le/a/o/b/g0;->f(Z)V

    .line 15
    invoke-virtual {v1, p2}, Le/a/o/b/g0;->e(Ljava/lang/String;)V

    return-object v0

    :cond_9
    move-object p3, p1

    move-object p1, p2

    move-object v3, v1

    .line 16
    :cond_a
    iget-object p2, p3, Le/a/o/b/g0$a;->a:Ljava/lang/String;

    .line 17
    invoke-static {p2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, v3, Le/a/o/b/g0;->c:Le/a/p5/c;

    invoke-interface {p2}, Le/a/p5/c;->c()J

    move-result-wide v1

    .line 18
    iget-wide p2, p3, Le/a/o/b/g0$a;->b:J

    sub-long/2addr v1, p2

    .line 19
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object p3, v3, Le/a/o/b/g0;->g:Ljavax/inject/Provider;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    const-string v4, "secondCallIntervalConfigInMin.get()"

    invoke-static {p3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    cmp-long p2, v1, p2

    if-gtz p2, :cond_b

    move v5, v6

    .line 20
    :cond_b
    invoke-virtual {v3, v5}, Le/a/o/b/g0;->f(Z)V

    .line 21
    invoke-virtual {v3, p1}, Le/a/o/b/g0;->e(Ljava/lang/String;)V

    :cond_c
    return-object v0

    .line 22
    :cond_d
    invoke-virtual {v3, v5}, Le/a/o/b/g0;->f(Z)V

    .line 23
    invoke-virtual {v3, p1}, Le/a/o/b/g0;->e(Ljava/lang/String;)V

    :cond_e
    return-object v0
.end method

.method public d(Lcom/truecaller/contextcall/utils/SecondCallContext;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/contextcall/utils/SecondCallContext;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/o/b/g0$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/o/b/g0$c;

    iget v1, v0, Le/a/o/b/g0$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/b/g0$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/b/g0$c;

    invoke-direct {v0, p0, p2}, Le/a/o/b/g0$c;-><init>(Le/a/o/b/g0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/o/b/g0$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/b/g0$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/o/b/g0$c;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/contextcall/utils/SecondCallContext;

    iget-object v0, v0, Le/a/o/b/g0$c;->g:Ljava/lang/Object;

    check-cast v0, Le/a/o/b/g0;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/o/b/g0;->d:Le/a/o/b/f;

    invoke-virtual {p1}, Lcom/truecaller/contextcall/utils/SecondCallContext;->a()Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Le/a/o/b/g0$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/o/b/g0$c;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/o/b/g0$c;->e:I

    invoke-interface {p2, v2, v0}, Le/a/o/b/f;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    .line 5
    iget-object p2, v0, Le/a/o/b/g0;->a:Le/a/o/b/o;

    const/4 v2, 0x2

    const/4 v4, 0x0

    const-string v5, "shouldShowCallReasonOnMidCall"

    invoke-static {p2, v5, v1, v2, v4}, Le/a/m0/a1$k;->F(Le/a/o/b/o;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 6
    instance-of p2, p1, Lcom/truecaller/contextcall/utils/SecondCallContext$a;

    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/contextcall/utils/SecondCallContext;->c()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/contextcall/utils/SecondCallContext;->d()Z

    move-result p2

    if-nez p2, :cond_5

    move-object p2, p1

    check-cast p2, Lcom/truecaller/contextcall/utils/SecondCallContext$a;

    .line 8
    iget-boolean p2, p2, Lcom/truecaller/contextcall/utils/SecondCallContext$a;->e:Z

    if-nez p2, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/contextcall/utils/SecondCallContext;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/o/b/g0;->a(Ljava/lang/Integer;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 10
    :cond_4
    instance-of p2, p1, Lcom/truecaller/contextcall/utils/SecondCallContext$b;

    if-eqz p2, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/contextcall/utils/SecondCallContext;->c()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/contextcall/utils/SecondCallContext;->d()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/contextcall/utils/SecondCallContext;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/o/b/g0;->a(Ljava/lang/Integer;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_2
    move p1, v3

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    if-eqz p1, :cond_7

    goto :goto_4

    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_7
    move v3, v1

    .line 12
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/o/b/g0;->a:Le/a/o/b/o;

    iget-object v1, p0, Le/a/o/b/g0;->b:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/p5/l;

    new-instance v2, Le/a/o/b/g0$a;

    iget-object v3, p0, Le/a/o/b/g0;->c:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v3

    invoke-direct {v2, p1, v3, v4}, Le/a/o/b/g0$a;-><init>(Ljava/lang/String;J)V

    invoke-interface {v1, v2}, Le/a/p5/l;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "callInitiatedInfo"

    invoke-interface {v0, v1, p1}, Le/a/o/b/o;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o/b/g0;->a:Le/a/o/b/o;

    const-string v1, "shouldShowCallReasonOnMidCall"

    invoke-interface {v0, v1, p1}, Le/a/o/b/o;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
