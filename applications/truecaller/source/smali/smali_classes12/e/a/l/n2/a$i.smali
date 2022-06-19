.class public final Le/a/l/n2/a$i;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/n2/a;->j(Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/l/n2/f;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.billing.GooglePlayBilling$queryPurchasedSubscription$2"
    f = "GooglePlayBilling.kt"
    l = {
        0x78,
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/n2/a;


# direct methods
.method public constructor <init>(Le/a/l/n2/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/n2/a$i;->f:Le/a/l/n2/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/l/n2/a$i;

    iget-object v1, p0, Le/a/l/n2/a$i;->f:Le/a/l/n2/a;

    invoke-direct {v0, v1, p1}, Le/a/l/n2/a$i;-><init>(Le/a/l/n2/a;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/l/n2/a$i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance v0, Le/a/l/n2/a$i;

    iget-object v1, p0, Le/a/l/n2/a$i;->f:Le/a/l/n2/a;

    invoke-direct {v0, v1, p1}, Le/a/l/n2/a$i;-><init>(Le/a/l/n2/a;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/n2/a$i;->e:I

    const/4 v2, 0x0

    const-string v3, "subs"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

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
    iget-object p1, p0, Le/a/l/n2/a$i;->f:Le/a/l/n2/a;

    invoke-static {p1}, Le/a/l/n2/a;->n(Le/a/l/n2/a;)Le/d/a/a/d;

    move-result-object p1

    iput v5, p0, Le/a/l/n2/a$i;->e:I

    invoke-static {p1, v3, p0}, Ln3/g0/y;->G1(Le/d/a/a/d;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Le/d/a/a/p;

    .line 5
    iget-object p1, p1, Le/d/a/a/p;->b:Ljava/util/List;

    .line 6
    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/d/a/a/n;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Le/d/a/a/n;->b()Ljava/util/ArrayList;

    move-result-object p1

    .line 7
    iget-object v1, p0, Le/a/l/n2/a$i;->f:Le/a/l/n2/a;

    invoke-static {v1}, Le/a/l/n2/a;->n(Le/a/l/n2/a;)Le/d/a/a/d;

    move-result-object v5

    const-string v6, "it"

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v4, p0, Le/a/l/n2/a$i;->e:I

    invoke-virtual {v1, v5, p1, v3, p0}, Le/a/l/n2/a;->s(Le/d/a/a/d;Ljava/util/List;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/d/a/a/r;

    if-eqz p1, :cond_5

    iget-object v0, p0, Le/a/l/n2/a$i;->f:Le/a/l/n2/a;

    invoke-static {v0, p1}, Le/a/l/n2/a;->o(Le/a/l/n2/a;Le/d/a/a/r;)Le/a/l/n2/f;

    move-result-object p1

    move-object v2, p1

    :cond_5
    return-object v2
.end method
