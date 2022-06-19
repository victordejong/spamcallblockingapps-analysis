.class public final Le/a/o/b/g$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/b/g;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contextcall.utils.ContextCallAvailabilityManagerImpl$isContextCallAvailableInPresence$2"
    f = "ContextCallAvailabilityManager.kt"
    l = {
        0xb4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/b/g;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/o/b/g;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/g$a;->f:Le/a/o/b/g;

    iput-object p2, p0, Le/a/o/b/g$a;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/o/b/g$a;

    iget-object v0, p0, Le/a/o/b/g$a;->f:Le/a/o/b/g;

    iget-object v1, p0, Le/a/o/b/g$a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/b/g$a;-><init>(Le/a/o/b/g;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/b/g$a;

    iget-object v0, p0, Le/a/o/b/g$a;->f:Le/a/o/b/g;

    iget-object v1, p0, Le/a/o/b/g$a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/b/g$a;-><init>(Le/a/o/b/g;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o/b/g$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/o/b/g$a;->e:I

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

    .line 4
    iget-object p1, p0, Le/a/o/b/g$a;->f:Le/a/o/b/g;

    .line 5
    iget-object p1, p1, Le/a/o/b/g;->i:Le/a/b0/q/z;

    .line 6
    iget-object v2, p0, Le/a/o/b/g$a;->g:Ljava/lang/String;

    invoke-interface {p1, v2}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    iget-object v2, p0, Le/a/o/b/g$a;->f:Le/a/o/b/g;

    .line 8
    iget-object v2, v2, Le/a/o/b/g;->g:Le/a/o/p/a/c;

    .line 9
    iput v3, p0, Le/a/o/b/g$a;->e:I

    check-cast v2, Le/a/o/p/a/f;

    .line 10
    iget-object v4, v2, Le/a/o/p/a/f;->b:Ls1/w/f;

    new-instance v5, Le/a/o/p/a/d;

    const/4 v6, 0x0

    invoke-direct {v5, v2, p1, v6}, Le/a/o/p/a/d;-><init>(Le/a/o/p/a/f;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v4, v5, p0}, Le/a/m0/a1$k;->b1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 11
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;->getEnabled()I

    move-result p1

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 13
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method
