.class public final Le/a/a/l/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/l/c;->N0()V
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
    c = "com.truecaller.messaging.acsreply.AcsReplyBottomSheetPresenterImpl$sendMessage$1$1"
    f = "AcsReplyBottomSheetPresenter.kt"
    l = {
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Le/a/a/l/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/w/d;Le/a/a/l/c;)V
    .locals 0

    iput-object p1, p0, Le/a/a/l/c$a;->f:Ljava/lang/String;

    iput-object p3, p0, Le/a/a/l/c$a;->g:Le/a/a/l/c;

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/l/c$a;

    iget-object v0, p0, Le/a/a/l/c$a;->f:Ljava/lang/String;

    iget-object v1, p0, Le/a/a/l/c$a;->g:Le/a/a/l/c;

    invoke-direct {p1, v0, p2, v1}, Le/a/a/l/c$a;-><init>(Ljava/lang/String;Ls1/w/d;Le/a/a/l/c;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/l/c$a;

    iget-object v0, p0, Le/a/a/l/c$a;->f:Ljava/lang/String;

    iget-object v1, p0, Le/a/a/l/c$a;->g:Le/a/a/l/c;

    invoke-direct {p1, v0, p2, v1}, Le/a/a/l/c$a;-><init>(Ljava/lang/String;Ls1/w/d;Le/a/a/l/c;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/l/c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/l/c$a;->e:I

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
    iget-object p1, p0, Le/a/a/l/c$a;->g:Le/a/a/l/c;

    iget-object v1, p0, Le/a/a/l/c$a;->f:Ljava/lang/String;

    .line 5
    iget-object v3, p1, Le/a/a/l/c;->d:[Ljava/lang/String;

    invoke-static {v3}, Le/q/f/a/d/a;->i3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-lt v4, v5, :cond_2

    .line 8
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p1, Le/a/a/l/c;->h:Le/a/a/i0;

    new-array v1, v6, [Ljava/lang/String;

    .line 11
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Le/a/a/i0;->V1([Ljava/lang/String;)V

    .line 12
    :cond_3
    iget-object p1, p0, Le/a/a/l/c$a;->g:Le/a/a/l/c;

    .line 13
    iget-object v3, p1, Le/a/a/l/c;->g:Le/a/a/l/e;

    .line 14
    iget-object v4, p0, Le/a/a/l/c$a;->f:Ljava/lang/String;

    .line 15
    iget-object v5, p1, Le/a/a/l/c;->i:Ljava/lang/String;

    const/4 v6, 0x1

    .line 16
    iget-object v7, p1, Le/a/a/l/c;->k:Ljava/lang/String;

    const/4 v8, 0x0

    .line 17
    iput v2, p0, Le/a/a/l/c$a;->e:I

    move-object v9, p0

    invoke-virtual/range {v3 .. v9}, Le/a/a/l/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 18
    :cond_4
    :goto_0
    check-cast p1, Ls1/o;

    .line 19
    iget-object v0, p0, Le/a/a/l/c$a;->g:Le/a/a/l/c;

    .line 20
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/l/d;

    if-eqz v0, :cond_5

    .line 21
    iget-object v1, p1, Ls1/o;->a:Ljava/lang/Object;

    .line 22
    check-cast v1, Ljava/lang/Long;

    .line 23
    iget-object v2, p1, Ls1/o;->b:Ljava/lang/Object;

    .line 24
    check-cast v2, Ljava/lang/Long;

    .line 25
    iget-object p1, p1, Ls1/o;->c:Ljava/lang/Object;

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    iget-object v3, p0, Le/a/a/l/c$a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, v3}, Le/a/a/l/d;->Rh(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 27
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
