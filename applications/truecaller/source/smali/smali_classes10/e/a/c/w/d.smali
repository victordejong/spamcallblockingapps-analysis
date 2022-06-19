.class public final Le/a/c/w/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/w/c;


# instance fields
.field public final a:Le/a/c/a0/h;


# direct methods
.method public constructor <init>(Le/a/c/a0/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "bankDataSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/w/d;->a:Le/a/c/a0/h;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/q/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/w/d$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/w/d$a;

    iget v1, v0, Le/a/c/w/d$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/d$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/d$a;

    invoke-direct {v0, p0, p1}, Le/a/c/w/d$a;-><init>(Le/a/c/w/d;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/w/d$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/d$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide v0, v0, Le/a/c/w/d$a;->h:J

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/c/w/d$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/w/d;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/w/d;->a:Le/a/c/a0/h;

    iput-object p0, v0, Le/a/c/w/d$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/c/w/d$a;->e:I

    invoke-interface {p1, v0}, Le/a/c/a0/h;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 5
    iget-object p1, v2, Le/a/c/w/d;->a:Le/a/c/a0/h;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/c/w/d$a;->g:Ljava/lang/Object;

    iput-wide v4, v0, Le/a/c/w/d$a;->h:J

    iput v3, v0, Le/a/c/w/d$a;->e:I

    invoke-interface {p1, v0}, Le/a/c/a0/h;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-wide v0, v4

    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 6
    new-instance p1, Le/a/c/q/i;

    invoke-direct {p1, v0, v1, v2, v3}, Le/a/c/q/i;-><init>(JJ)V

    return-object p1
.end method
