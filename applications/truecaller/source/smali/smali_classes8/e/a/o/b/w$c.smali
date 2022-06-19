.class public final Le/a/o/b/w$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/b/w;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contextcall.utils.IncomingCallContextRepositoryImpl$getCallContext$2"
    f = "IncomingCallContextRepository.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/b/w;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/o/b/w;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/w$c;->f:Le/a/o/b/w;

    iput-object p2, p0, Le/a/o/b/w$c;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/o/b/w$c;

    iget-object v0, p0, Le/a/o/b/w$c;->f:Le/a/o/b/w;

    iget-object v1, p0, Le/a/o/b/w$c;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/b/w$c;-><init>(Le/a/o/b/w;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/b/w$c;

    iget-object v0, p0, Le/a/o/b/w$c;->f:Le/a/o/b/w;

    iget-object v1, p0, Le/a/o/b/w$c;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/b/w$c;-><init>(Le/a/o/b/w;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o/b/w$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/o/b/w$c;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

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
    iget-object p1, p0, Le/a/o/b/w$c;->f:Le/a/o/b/w;

    .line 5
    iget-object p1, p1, Le/a/o/b/w;->d:Le/a/b0/q/z;

    .line 6
    iget-object v1, p0, Le/a/o/b/w$c;->g:Ljava/lang/String;

    invoke-interface {p1, v1}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    :try_start_1
    iget-object v1, p0, Le/a/o/b/w$c;->f:Le/a/o/b/w;

    .line 8
    iget-object v1, v1, Le/a/o/b/w;->b:Le/a/o/p/c/c;

    .line 9
    iput v2, p0, Le/a/o/b/w$c;->e:I

    check-cast v1, Le/a/o/p/c/g;

    .line 10
    iget-object v2, v1, Le/a/o/p/c/g;->c:Ls1/w/f;

    new-instance v4, Le/a/o/p/c/f;

    invoke-direct {v4, v1, p1, v3}, Le/a/o/p/c/f;-><init>(Le/a/o/p/c/g;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v2, v4, p0}, Le/a/m0/a1$k;->b1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 11
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Le/a/m0/a1$k;->o0(Landroid/database/sqlite/SQLiteException;)V

    :cond_3
    :goto_1
    return-object v3
.end method
