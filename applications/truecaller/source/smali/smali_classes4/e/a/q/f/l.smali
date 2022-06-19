.class public final Le/a/q/f/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q/f/k;


# instance fields
.field public final a:Le/a/q/f/j;

.field public final b:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/q/f/j;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q/f/l;->a:Le/a/q/f/j;

    iput-object p2, p0, Le/a/q/f/l;->b:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/db/ContactFeedback;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/q/f/l$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/q/f/l$a;

    iget v1, v0, Le/a/q/f/l$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/f/l$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/f/l$a;

    invoke-direct {v0, p0, p2}, Le/a/q/f/l$a;-><init>(Le/a/q/f/l;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/q/f/l$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/f/l$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/q/f/l$a;->h:Ljava/lang/Object;

    check-cast p1, Le/a/q2/g$b;

    iget-object v0, v0, Le/a/q/f/l$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/q/f/l;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

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
    new-instance p2, Le/a/q2/g$b;

    const-string v2, "ContactFeedbackUploadResult"

    invoke-direct {p2, v2}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v4, v2

    .line 6
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 7
    iput-object v2, p2, Le/a/q2/g$b;->c:Ljava/lang/Double;

    .line 8
    :try_start_1
    iget-object v2, p0, Le/a/q/f/l;->a:Le/a/q/f/j;

    iput-object p0, v0, Le/a/q/f/l$a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/q/f/l$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/q/f/l$a;->e:I

    invoke-interface {v2, p1, v0}, Le/a/q/f/j;->a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, p0

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .line 9
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exceptionType"

    invoke-virtual {p1, v2, v1}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 10
    instance-of v1, p2, Lx3/l;

    if-eqz v1, :cond_4

    check-cast p2, Lx3/l;

    .line 11
    iget p2, p2, Lx3/l;->a:I

    const-string v1, "errorCode"

    .line 12
    invoke-virtual {p1, v1, p2}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    :cond_4
    const/4 v3, 0x0

    :goto_2
    const-string p2, "success"

    .line 13
    invoke-virtual {p1, p2, v3}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    .line 14
    iget-object p2, v0, Le/a/q/f/l;->b:Le/a/q2/a;

    invoke-virtual {p1}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object p1

    const-string v0, "event.build()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 15
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
