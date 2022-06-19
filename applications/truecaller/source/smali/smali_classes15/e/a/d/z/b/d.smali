.class public final Le/a/d/z/b/d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/Set<",
        "+",
        "Le/a/d/v/l/a;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.service.call.CallServicePresenter$notificationDescriptionFromPeers$$inlined$flatMapLatest$1"
    f = "CallServicePresenter.kt"
    l = {
        0xe3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/z/b/c;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/d/z/b/c;)V
    .locals 0

    iput-object p2, p0, Le/a/d/z/b/d;->h:Le/a/d/z/b/c;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lq3/a/x2/g;

    check-cast p3, Ls1/w/d;

    .line 1
    new-instance v0, Le/a/d/z/b/d;

    iget-object v1, p0, Le/a/d/z/b/d;->h:Le/a/d/z/b/c;

    invoke-direct {v0, p3, v1}, Le/a/d/z/b/d;-><init>(Ls1/w/d;Le/a/d/z/b/c;)V

    iput-object p1, v0, Le/a/d/z/b/d;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/z/b/d;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/z/b/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/z/b/d;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    iget-object p1, p0, Le/a/d/z/b/d;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    iget-object v1, p0, Le/a/d/z/b/d;->f:Ljava/lang/Object;

    .line 4
    check-cast v1, Ljava/util/Set;

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 6
    invoke-static {v1}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/l/a;

    invoke-interface {v1}, Le/a/d/v/l/a;->getState()Lq3/a/x2/i1;

    move-result-object v1

    .line 7
    new-instance v3, Le/a/d/z/b/d$a;

    invoke-direct {v3, v1, p0}, Le/a/d/z/b/d$a;-><init>(Lq3/a/x2/f;Le/a/d/z/b/d;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Le/a/d/z/b/d;->h:Le/a/d/z/b/c;

    invoke-static {v1}, Le/a/d/z/b/c;->Ij(Le/a/d/z/b/c;)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v3, Lq3/a/x2/k;

    invoke-direct {v3, v1}, Lq3/a/x2/k;-><init>(Ljava/lang/Object;)V

    .line 10
    :goto_0
    iput v2, p0, Le/a/d/z/b/d;->g:I

    invoke-interface {v3, p1, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 11
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
