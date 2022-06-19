.class public final Le/a/o/p/e/f$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/e/f;->e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contextcall.db.reason.CallReasonRepositoryImpl$addNewCallReason$2"
    f = "CallReasonRepository.kt"
    l = {
        0x24,
        0x29
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/o/p/e/f;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/o/p/e/f;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/p/e/f$a;->g:Le/a/o/p/e/f;

    iput-object p2, p0, Le/a/o/p/e/f$a;->h:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/o/p/e/f$a;

    iget-object v1, p0, Le/a/o/p/e/f$a;->g:Le/a/o/p/e/f;

    iget-object v2, p0, Le/a/o/p/e/f$a;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Le/a/o/p/e/f$a;-><init>(Le/a/o/p/e/f;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/o/p/e/f$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/o/p/e/f$a;

    iget-object v1, p0, Le/a/o/p/e/f$a;->g:Le/a/o/p/e/f;

    iget-object v2, p0, Le/a/o/p/e/f$a;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Le/a/o/p/e/f$a;-><init>(Le/a/o/p/e/f;Ljava/lang/String;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/o/p/e/f$a;->f:I

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
    iget-object v2, p0, Le/a/o/p/e/f$a;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/o/p/e/f$a;->g:Le/a/o/p/e/f;

    .line 5
    iget-object p1, p1, Le/a/o/p/e/f;->b:Le/a/o/b/b;

    .line 6
    iget-object v2, p0, Le/a/o/p/e/f$a;->h:Ljava/lang/String;

    invoke-interface {p1, v2}, Le/a/o/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 7
    iget-object p1, p0, Le/a/o/p/e/f$a;->g:Le/a/o/p/e/f;

    .line 8
    iget-object p1, p1, Le/a/o/p/e/f;->a:Lo3/a;

    .line 9
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/o/p/e/c;

    iput-object v2, p0, Le/a/o/p/e/f$a;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/o/p/e/f$a;->f:I

    invoke-interface {p1, p0}, Le/a/o/p/e/c;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v5, 0x3

    if-lt p1, v5, :cond_4

    return-object v0

    .line 10
    :cond_4
    iget-object p1, p0, Le/a/o/p/e/f$a;->g:Le/a/o/p/e/f;

    .line 11
    iget-object p1, p1, Le/a/o/p/e/f;->a:Lo3/a;

    .line 12
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/o/p/e/c;

    new-instance v5, Lcom/truecaller/contextcall/db/reason/CallReason;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v2, v4, v7}, Lcom/truecaller/contextcall/db/reason/CallReason;-><init>(ILjava/lang/String;ILs1/z/c/f;)V

    iput-object v7, p0, Le/a/o/p/e/f$a;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/o/p/e/f$a;->f:I

    invoke-interface {p1, v5, p0}, Le/a/o/p/e/c;->e(Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    return-object v0
.end method
