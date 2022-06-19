.class public final Le/a/o/p/e/g/d$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/e/g/d;->c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.contextcall.db.reason.predefinedreasons.PredefinedCallReasonRepositoryImpl$replacePredefinedCallReasons$2"
    f = "PredefinedCallReasonRepository.kt"
    l = {
        0x67
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/p/e/g/d;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/o/p/e/g/d;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/p/e/g/d$d;->f:Le/a/o/p/e/g/d;

    iput-object p2, p0, Le/a/o/p/e/g/d$d;->g:Ljava/util/List;

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

    new-instance v0, Le/a/o/p/e/g/d$d;

    iget-object v1, p0, Le/a/o/p/e/g/d$d;->f:Le/a/o/p/e/g/d;

    iget-object v2, p0, Le/a/o/p/e/g/d$d;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Le/a/o/p/e/g/d$d;-><init>(Le/a/o/p/e/g/d;Ljava/util/List;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/o/p/e/g/d$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Le/a/o/p/e/g/d$d;

    iget-object v1, p0, Le/a/o/p/e/g/d$d;->f:Le/a/o/p/e/g/d;

    iget-object v2, p0, Le/a/o/p/e/g/d$d;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Le/a/o/p/e/g/d$d;-><init>(Le/a/o/p/e/g/d;Ljava/util/List;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/o/p/e/g/d$d;->e:I

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

    .line 4
    iget-object p1, p0, Le/a/o/p/e/g/d$d;->f:Le/a/o/p/e/g/d;

    .line 5
    iget-object p1, p1, Le/a/o/p/e/g/d;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/o/p/e/g/a;

    .line 6
    iget-object v1, p0, Le/a/o/p/e/g/d$d;->g:Ljava/util/List;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 9
    check-cast v4, Le/a/o/n/a;

    const-string v5, "$this$mapToPredefinedCallReasonEntity"

    .line 10
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v5, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;

    .line 12
    iget v6, v4, Le/a/o/n/a;->a:I

    .line 13
    iget v7, v4, Le/a/o/n/a;->b:I

    .line 14
    iget-object v8, v4, Le/a/o/n/a;->c:Ljava/lang/String;

    .line 15
    iget-object v4, v4, Le/a/o/n/a;->d:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    .line 16
    invoke-virtual {v4}, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->getValue()I

    move-result v4

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;-><init>(IILjava/lang/String;I)V

    .line 17
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_2
    iput v2, p0, Le/a/o/p/e/g/d$d;->e:I

    .line 19
    invoke-virtual {p1, v3, p0}, Le/a/o/p/e/g/a;->d(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 20
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
