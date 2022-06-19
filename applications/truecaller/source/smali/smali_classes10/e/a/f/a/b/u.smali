.class public final Le/a/f/a/b/u;
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
    c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$showCallContextAndVCIDToast$2"
    f = "OngoingCallPresenter.kt"
    l = {
        0x1a3,
        0x1aa
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/f/a/b/j;

.field public final synthetic g:Le/a/f/a/g;


# direct methods
.method public constructor <init>(Le/a/f/a/b/j;Le/a/f/a/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/u;->f:Le/a/f/a/b/j;

    iput-object p2, p0, Le/a/f/a/b/u;->g:Le/a/f/a/g;

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

    new-instance p1, Le/a/f/a/b/u;

    iget-object v0, p0, Le/a/f/a/b/u;->f:Le/a/f/a/b/j;

    iget-object v1, p0, Le/a/f/a/b/u;->g:Le/a/f/a/g;

    invoke-direct {p1, v0, v1, p2}, Le/a/f/a/b/u;-><init>(Le/a/f/a/b/j;Le/a/f/a/g;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/a/b/u;

    iget-object v0, p0, Le/a/f/a/b/u;->f:Le/a/f/a/b/j;

    iget-object v1, p0, Le/a/f/a/b/u;->g:Le/a/f/a/g;

    invoke-direct {p1, v0, v1, p2}, Le/a/f/a/b/u;-><init>(Le/a/f/a/b/j;Le/a/f/a/g;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/a/b/u;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/f/a/b/u;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/f/a/b/u;->f:Le/a/f/a/b/j;

    .line 5
    iget-object p1, p1, Le/a/f/a/b/j;->q:Le/a/f/y/v;

    .line 6
    invoke-interface {p1}, Le/a/f/y/v;->N1()Ljava/lang/Boolean;

    move-result-object p1

    .line 7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_3

    return-object v0

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/f/a/b/u;->f:Le/a/f/a/b/j;

    .line 10
    iget-object p1, p1, Le/a/f/a/b/j;->q:Le/a/f/y/v;

    .line 11
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    invoke-interface {p1, v2}, Le/a/f/y/v;->B0(Ljava/lang/Boolean;)V

    .line 13
    iget-object p1, p0, Le/a/f/a/b/u;->f:Le/a/f/a/b/j;

    .line 14
    iget-object p1, p1, Le/a/f/a/b/j;->x:Le/a/o/c;

    .line 15
    iget-object v2, p0, Le/a/f/a/b/u;->g:Le/a/f/a/g;

    .line 16
    iget-object v2, v2, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 17
    iput v4, p0, Le/a/f/a/b/u;->e:I

    invoke-interface {p1, v2, p0}, Le/a/o/c;->k(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 18
    :cond_4
    :goto_0
    check-cast p1, Lcom/truecaller/data/entity/CallContextMessage;

    if-eqz p1, :cond_5

    .line 19
    iget-object v2, p1, Lcom/truecaller/data/entity/CallContextMessage;->b:Ljava/lang/String;

    .line 20
    iget-object v5, p0, Le/a/f/a/b/u;->g:Le/a/f/a/g;

    .line 21
    iget-object v5, v5, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 22
    invoke-static {v2, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 23
    iget-boolean v2, p1, Lcom/truecaller/data/entity/CallContextMessage;->g:Z

    if-nez v2, :cond_5

    .line 24
    iget-object v2, p0, Le/a/f/a/b/u;->f:Le/a/f/a/b/j;

    invoke-static {v2, p1}, Le/a/f/a/b/j;->Qj(Le/a/f/a/b/j;Lcom/truecaller/data/entity/CallContextMessage;)V

    .line 25
    iput-boolean v4, p1, Lcom/truecaller/data/entity/CallContextMessage;->g:Z

    .line 26
    :cond_5
    iget-object p1, p0, Le/a/f/a/b/u;->f:Le/a/f/a/b/j;

    iget-object v2, p0, Le/a/f/a/b/u;->g:Le/a/f/a/g;

    iput v3, p0, Le/a/f/a/b/u;->e:I

    invoke-virtual {p1, v2, p0}, Le/a/f/a/b/j;->fk(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    return-object v0
.end method
