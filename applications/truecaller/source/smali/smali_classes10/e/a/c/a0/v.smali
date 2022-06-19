.class public final Le/a/c/a0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a0/u;


# instance fields
.field public final a:Le/a/c/c/d/d0;

.field public final b:Le/a/c/c/d/g;

.field public final c:Le/a/c/w/o0/g;


# direct methods
.method public constructor <init>(Le/a/c/c/d/d0;Le/a/c/c/d/g;Le/a/c/w/o0/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "pdoDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionStateDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFilter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a0/v;->a:Le/a/c/c/d/d0;

    iput-object p2, p0, Le/a/c/a0/v;->b:Le/a/c/c/d/g;

    iput-object p3, p0, Le/a/c/a0/v;->c:Le/a/c/w/o0/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/a0/v$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/a0/v$a;

    iget v1, v0, Le/a/c/a0/v$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a0/v$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a0/v$a;

    invoke-direct {v0, p0, p2}, Le/a/c/a0/v$a;-><init>(Le/a/c/a0/v;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/a0/v$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a0/v$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Le/a/c/a0/v$a;->i:Z

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/a0/v$a;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v2, v0, Le/a/c/a0/v$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/a0/v;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/c/a0/v;->c:Le/a/c/w/o0/g;

    iput-object p0, v0, Le/a/c/a0/v$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a0/v$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/c/a0/v$a;->e:I

    invoke-interface {p2, p1, v4, v0}, Le/a/c/w/o0/g;->g(Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 5
    iget-object v2, v2, Le/a/c/a0/v;->c:Le/a/c/w/o0/g;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    iput-object v5, v0, Le/a/c/a0/v$a;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/a0/v$a;->h:Ljava/lang/Object;

    iput-boolean p2, v0, Le/a/c/a0/v$a;->i:Z

    iput v3, v0, Le/a/c/a0/v$a;->e:I

    const-string v3, "GRM_OTP"

    invoke-interface {v2, v3, p1, v0}, Le/a/c/w/o0/g;->c(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move v6, p2

    move-object p2, p1

    move p1, v6

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 6
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/a0/v$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/a0/v$b;

    iget v1, v0, Le/a/c/a0/v$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a0/v$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a0/v$b;

    invoke-direct {v0, p0, p2}, Le/a/c/a0/v$b;-><init>(Le/a/c/a0/v;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/a0/v$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a0/v$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/c/a0/v;->a:Le/a/c/c/d/d0;

    iput v3, v0, Le/a/c/a0/v$b;->e:I

    invoke-virtual {p2, p1, v0}, Le/a/c/c/d/d0;->z(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
