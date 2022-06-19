.class public final Le/a/r5/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c0/h;

.field public final b:Le/a/r5/i0;

.field public final c:Le/a/l/p2/v0;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c0/h;Le/a/r5/i0;Le/a/l/p2/v0;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "experimentRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whoViewedMeManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r5/n0;->a:Le/a/c0/h;

    iput-object p2, p0, Le/a/r5/n0;->b:Le/a/r5/i0;

    iput-object p3, p0, Le/a/r5/n0;->c:Le/a/l/p2/v0;

    iput-object p4, p0, Le/a/r5/n0;->d:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r5/n0;->a:Le/a/c0/h;

    .line 2
    iget-object v0, v0, Le/a/c0/h;->f:Le/a/c0/c;

    .line 3
    invoke-virtual {v0}, Le/a/c0/c;->f()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/truecaller/abtest/ThreeVariants;

    sget-object v1, Lcom/truecaller/abtest/ThreeVariants;->VariantA:Lcom/truecaller/abtest/ThreeVariants;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/r5/n0$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/r5/n0$a;

    iget v1, v0, Le/a/r5/n0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r5/n0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r5/n0$a;

    invoke-direct {v0, p0, p1}, Le/a/r5/n0$a;-><init>(Le/a/r5/n0;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/r5/n0$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r5/n0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/r5/n0$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/r5/n0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r5/n0;->b:Le/a/r5/i0;

    iput-object p0, v0, Le/a/r5/n0$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/r5/n0$a;->e:I

    invoke-interface {p1, v0}, Le/a/r5/i0;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    iget-object v1, v0, Le/a/r5/n0;->a:Le/a/c0/h;

    .line 6
    iget-object v1, v1, Le/a/c0/h;->f:Le/a/c0/c;

    const/4 v2, 0x0

    .line 7
    new-instance v4, Le/a/r5/n0$b;

    invoke-direct {v4, v0, p1}, Le/a/r5/n0$b;-><init>(Le/a/r5/n0;Z)V

    const/4 p1, 0x0

    invoke-static {v1, v2, v4, v3, p1}, Le/a/c0/f;->e(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
