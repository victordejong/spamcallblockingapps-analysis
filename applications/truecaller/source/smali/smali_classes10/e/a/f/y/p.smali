.class public final Le/a/f/y/p;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/incallui/service/CallState;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.service.InCallUIServicePresenter$listenToCallStateChanges$1"
    f = "InCallUIServicePresenter.kt"
    l = {
        0xec
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/f/y/o;


# direct methods
.method public constructor <init>(Le/a/f/y/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/y/p;->g:Le/a/f/y/o;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/y/p;

    iget-object v1, p0, Le/a/f/y/p;->g:Le/a/f/y/o;

    invoke-direct {v0, v1, p2}, Le/a/f/y/p;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/y/p;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/y/p;

    iget-object v1, p0, Le/a/f/y/p;->g:Le/a/f/y/o;

    invoke-direct {v0, v1, p2}, Le/a/f/y/p;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/y/p;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/y/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/f/y/p;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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

    iget-object p1, p0, Le/a/f/y/p;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/incallui/service/CallState;

    .line 4
    iget-object v2, p0, Le/a/f/y/p;->g:Le/a/f/y/o;

    .line 5
    iget-object v2, v2, Le/a/f/y/o;->s:Le/a/f/z/m0/a;

    .line 6
    invoke-interface {v2, p1}, Le/a/f/z/m0/a;->b(Lcom/truecaller/incallui/service/CallState;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_d

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_c

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    return-object v0

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/f/y/p;->g:Le/a/f/y/o;

    .line 9
    invoke-virtual {p1}, Le/a/f/y/o;->Oj()V

    .line 10
    iget-boolean v1, p1, Le/a/f/y/o;->h:Z

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/y/k;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Le/a/f/y/k;->B()V

    .line 12
    :cond_3
    iget-object v1, p1, Le/a/f/y/o;->A:Le/a/o/c;

    invoke-interface {v1}, Le/a/o/c;->s()V

    .line 13
    iget-object v1, p1, Le/a/f/y/o;->u:Le/a/f/z/f0;

    invoke-virtual {v1}, Le/a/f/z/f0;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/y/k;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Le/a/f/y/k;->x()V

    goto :goto_1

    .line 15
    :cond_4
    iget-object v1, p1, Le/a/f/y/o;->u:Le/a/f/z/f0;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_8

    .line 18
    iget-object v1, v1, Le/a/f/z/f0;->a:Le/a/h4/n;

    const-string v4, "phone_calls"

    invoke-interface {v1, v4}, Le/a/h4/n;->c(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    if-nez v2, :cond_6

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :cond_8
    :goto_0
    if-nez v3, :cond_9

    .line 20
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/y/k;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Le/a/f/y/k;->x()V

    goto :goto_1

    .line 21
    :cond_9
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/y/k;

    if-eqz v1, :cond_a

    .line 22
    sget v2, Lcom/truecaller/incallui/R$string;->incallui_notification_ongoing_content:I

    .line 23
    iget-object v3, p1, Le/a/f/y/o;->p:Le/a/f/y/c;

    invoke-interface {v3}, Le/a/f/y/c;->e()Ljava/lang/Long;

    move-result-object v3

    .line 24
    invoke-virtual {p1}, Le/a/f/y/o;->Kj()Le/a/k0/h;

    move-result-object v4

    .line 25
    invoke-interface {v1, v2, v3, v4}, Le/a/f/y/k;->v(ILjava/lang/Long;Le/a/k0/h;)V

    .line 26
    :cond_a
    iget-object v1, p1, Le/a/f/y/o;->k:Lq3/a/w2/h;

    sget-object v2, Lcom/truecaller/incallui/service/ServiceUIEvent;->ONGOING_NOTIFICATION_SHOWN:Lcom/truecaller/incallui/service/ServiceUIEvent;

    invoke-interface {v1, v2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p1}, Le/a/f/y/o;->Lj()V

    .line 28
    invoke-virtual {p1}, Le/a/f/y/o;->Xj()V

    .line 29
    :cond_b
    :goto_1
    invoke-virtual {p1}, Le/a/f/y/o;->Mj()V

    goto :goto_2

    .line 30
    :cond_c
    iget-object p1, p0, Le/a/f/y/p;->g:Le/a/f/y/o;

    .line 31
    iget-object v1, p1, Le/a/f/y/o;->A:Le/a/o/c;

    invoke-interface {v1}, Le/a/o/c;->s()V

    .line 32
    new-instance v6, Le/a/f/y/n;

    invoke-direct {v6, p1, v2}, Le/a/f/y/n;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 33
    invoke-virtual {p1}, Le/a/f/y/o;->Mj()V

    goto :goto_2

    .line 34
    :cond_d
    iget-object p1, p0, Le/a/f/y/p;->g:Le/a/f/y/o;

    iput v3, p0, Le/a/f/y/p;->f:I

    invoke-virtual {p1, p0}, Le/a/f/y/o;->Pj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_f

    return-object v1

    .line 35
    :cond_e
    iget-object p1, p0, Le/a/f/y/p;->g:Le/a/f/y/o;

    .line 36
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Le/a/f/y/k;->m()V

    .line 37
    :cond_f
    :goto_2
    iget-object p1, p0, Le/a/f/y/p;->g:Le/a/f/y/o;

    .line 38
    invoke-virtual {p1}, Le/a/f/y/o;->Wj()V

    .line 39
    iget-object p1, p0, Le/a/f/y/p;->g:Le/a/f/y/o;

    .line 40
    invoke-virtual {p1}, Le/a/f/y/o;->Nj()V

    return-object v0
.end method
