.class public final Le/a/o/a/g/j/k;
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
    c = "com.truecaller.contextcall.ui.custommessage.ondemand.OnDemandCustomMessagePresenter$sendMidCallReason$1"
    f = "OnDemandCustomMessagePresenter.kt"
    l = {
        0xbe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/o/a/g/j/l;

.field public final synthetic h:Lcom/truecaller/data/entity/CallContextMessage;


# direct methods
.method public constructor <init>(Le/a/o/a/g/j/l;Lcom/truecaller/data/entity/CallContextMessage;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/g/j/k;->g:Le/a/o/a/g/j/l;

    iput-object p2, p0, Le/a/o/a/g/j/k;->h:Lcom/truecaller/data/entity/CallContextMessage;

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

    new-instance v0, Le/a/o/a/g/j/k;

    iget-object v1, p0, Le/a/o/a/g/j/k;->g:Le/a/o/a/g/j/l;

    iget-object v2, p0, Le/a/o/a/g/j/k;->h:Lcom/truecaller/data/entity/CallContextMessage;

    invoke-direct {v0, v1, v2, p2}, Le/a/o/a/g/j/k;-><init>(Le/a/o/a/g/j/l;Lcom/truecaller/data/entity/CallContextMessage;Ls1/w/d;)V

    iput-object p1, v0, Le/a/o/a/g/j/k;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/o/a/g/j/k;

    iget-object v1, p0, Le/a/o/a/g/j/k;->g:Le/a/o/a/g/j/l;

    iget-object v2, p0, Le/a/o/a/g/j/k;->h:Lcom/truecaller/data/entity/CallContextMessage;

    invoke-direct {v0, v1, v2, p2}, Le/a/o/a/g/j/k;-><init>(Le/a/o/a/g/j/l;Lcom/truecaller/data/entity/CallContextMessage;Ls1/w/d;)V

    iput-object p1, v0, Le/a/o/a/g/j/k;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/o/a/g/j/k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/o/a/g/j/k;->f:I

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

    iget-object p1, p0, Le/a/o/a/g/j/k;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object p1, p0, Le/a/o/a/g/j/k;->h:Lcom/truecaller/data/entity/CallContextMessage;

    if-eqz p1, :cond_6

    .line 5
    iget-object v2, p0, Le/a/o/a/g/j/k;->g:Le/a/o/a/g/j/l;

    .line 6
    iget-object v2, v2, Le/a/o/a/g/j/l;->o:Le/a/o/b/n0;

    .line 7
    iput v3, p0, Le/a/o/a/g/j/k;->f:I

    check-cast v2, Le/a/o/b/o0;

    invoke-virtual {v2, p1, p0}, Le/a/o/b/o0;->a(Lcom/truecaller/data/entity/CallContextMessage;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 8
    iget-object p1, p0, Le/a/o/a/g/j/k;->g:Le/a/o/a/g/j/l;

    .line 9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Le/a/o/a/g/j/h;->Gi()V

    .line 11
    :cond_3
    iget-object p1, p0, Le/a/o/a/g/j/k;->g:Le/a/o/a/g/j/l;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_5

    .line 13
    invoke-interface {p1}, Le/a/o/a/g/f;->t7()V

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Le/a/o/a/g/j/k;->g:Le/a/o/a/g/j/l;

    .line 15
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_5

    .line 16
    iget-object v1, p0, Le/a/o/a/g/j/k;->h:Lcom/truecaller/data/entity/CallContextMessage;

    .line 17
    iget-object v1, v1, Lcom/truecaller/data/entity/CallContextMessage;->c:Ljava/lang/String;

    .line 18
    invoke-interface {p1, v1}, Le/a/o/a/g/j/h;->jt(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-object v0

    .line 19
    :cond_6
    iget-object p1, p0, Le/a/o/a/g/j/k;->g:Le/a/o/a/g/j/l;

    .line 20
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_7

    .line 21
    invoke-interface {p1}, Le/a/o/a/g/f;->s()V

    :cond_7
    return-object v0
.end method
