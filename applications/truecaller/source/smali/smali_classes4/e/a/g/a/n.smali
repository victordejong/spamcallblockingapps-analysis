.class public final Le/a/g/a/n;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.acs.ui.AfterCallBasePresenter$isContactVoipCapableAsync$2"
    f = "AfterCallBasePresenter.kt"
    l = {
        0x4a4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/g/a/m;


# direct methods
.method public constructor <init>(Le/a/g/a/m;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/n;->f:Le/a/g/a/m;

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

    new-instance p1, Le/a/g/a/n;

    iget-object v0, p0, Le/a/g/a/n;->f:Le/a/g/a/m;

    invoke-direct {p1, v0, p2}, Le/a/g/a/n;-><init>(Le/a/g/a/m;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/a/n;

    iget-object v0, p0, Le/a/g/a/n;->f:Le/a/g/a/m;

    invoke-direct {p1, v0, p2}, Le/a/g/a/n;-><init>(Le/a/g/a/m;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/a/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g/a/n;->e:I

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
    iget-object p1, p0, Le/a/g/a/n;->f:Le/a/g/a/m;

    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_4

    .line 6
    iget-object v1, p0, Le/a/g/a/n;->f:Le/a/g/a/m;

    .line 7
    iget-object v1, v1, Le/a/g/a/m;->K:Le/a/g/j/k0;

    const-string v3, "it"

    .line 8
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Le/a/g/a/n;->e:I

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Ls1/w/i;

    invoke-static {p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v3

    invoke-direct {v2, v3}, Ls1/w/i;-><init>(Ls1/w/d;)V

    .line 11
    iget-object v1, v1, Le/a/g/j/k0;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/s1;

    new-instance v3, Le/a/g/j/j0;

    invoke-direct {v3, v2}, Le/a/g/j/j0;-><init>(Ls1/w/d;)V

    invoke-interface {v1, p1, v3}, Le/a/d/c0/s1;->g(Lcom/truecaller/data/entity/Contact;Le/a/d/c0/l0;)V

    .line 12
    invoke-virtual {v2}, Ls1/w/i;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    const-string v1, "frame"

    .line 13
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-ne p1, v0, :cond_3

    return-object v0

    .line 14
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 17
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
