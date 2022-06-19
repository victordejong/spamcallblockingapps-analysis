.class public final Le/a/n/j2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/j2/c;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/n/j2/d$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/n/j2/d$a;

    iget v1, v0, Le/a/n/j2/d$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/j2/d$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/j2/d$a;

    invoke-direct {v0, p0, p1}, Le/a/n/j2/d$a;-><init>(Le/a/n/j2/d;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/n/j2/d$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/j2/d$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iput v3, v0, Le/a/n/j2/d$a;->e:I

    .line 2
    const-class p1, Le/a/n2/a/c;

    new-instance v2, Le/a/b0/b/a/b;

    invoke-direct {v2}, Le/a/b0/b/a/b;-><init>()V

    .line 3
    sget-object v4, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v2, v4, p1}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v4

    .line 4
    sget-object v5, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7, v6}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 5
    invoke-virtual {v4, v3}, Le/a/b0/b/g/b;->d(Z)Le/a/b0/b/g/b;

    .line 6
    new-instance v5, Le/a/b0/b/g/a$h;

    invoke-direct {v5, v3}, Le/a/b0/b/g/a$h;-><init>(Z)V

    iput-object v5, v4, Le/a/b0/b/g/b;->f:Le/a/b0/b/g/a$h;

    .line 7
    invoke-static {v4}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 9
    invoke-virtual {v2, p1}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/n2/a/c;

    .line 10
    invoke-interface {p1, v0}, Le/a/n2/a/c;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 11
    :cond_3
    :goto_1
    check-cast p1, Lx3/a0;

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result p1

    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
