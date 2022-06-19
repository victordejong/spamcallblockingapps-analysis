.class public final Le/a/l/p2/e1$i;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/e1;->c(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.premium.data.PremiumSubscriptionsHelperImpl$prefetch$2"
    f = "PremiumSubscriptionsHelper.kt"
    l = {
        0x95,
        0x99
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/p2/e1;

.field public final synthetic g:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/l/p2/e1;Ls1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/e1$i;->f:Le/a/l/p2/e1;

    iput-object p2, p0, Le/a/l/p2/e1$i;->g:Ls1/z/b/l;

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

    new-instance p1, Le/a/l/p2/e1$i;

    iget-object v0, p0, Le/a/l/p2/e1$i;->f:Le/a/l/p2/e1;

    iget-object v1, p0, Le/a/l/p2/e1$i;->g:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/p2/e1$i;-><init>(Le/a/l/p2/e1;Ls1/z/b/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/p2/e1$i;

    iget-object v0, p0, Le/a/l/p2/e1$i;->f:Le/a/l/p2/e1;

    iget-object v1, p0, Le/a/l/p2/e1$i;->g:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/p2/e1$i;-><init>(Le/a/l/p2/e1;Ls1/z/b/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/p2/e1$i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/l/p2/e1$i;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

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
    iget-object p1, p0, Le/a/l/p2/e1$i;->f:Le/a/l/p2/e1;

    iput v5, p0, Le/a/l/p2/e1$i;->e:I

    invoke-static {p1, v4, p0, v5, v4}, Le/a/c/p/a;->e0(Le/a/l/p2/d1;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_0
    check-cast p1, Le/a/l/p2/s1;

    .line 6
    instance-of v2, p1, Le/a/l/p2/s1$b;

    if-eqz v2, :cond_4

    iget-object v2, p0, Le/a/l/p2/e1$i;->g:Ls1/z/b/l;

    move-object v5, p1

    check-cast v5, Le/a/l/p2/s1$b;

    .line 7
    iget-object v5, v5, Le/a/l/p2/s1$b;->a:Le/a/l/p2/x;

    .line 8
    invoke-interface {v2, v5}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    iget-object v1, p0, Le/a/l/p2/e1$i;->f:Le/a/l/p2/e1;

    .line 10
    iput-object p1, v1, Le/a/l/p2/e1;->a:Le/a/l/p2/s1;

    goto :goto_1

    .line 11
    :cond_4
    iget-object p1, p0, Le/a/l/p2/e1$i;->f:Le/a/l/p2/e1;

    iput v3, p0, Le/a/l/p2/e1$i;->e:I

    .line 12
    iput-object v4, p1, Le/a/l/p2/e1;->a:Le/a/l/p2/s1;

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    return-object v0
.end method
