.class public abstract Le/a/o/p/e/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e(Le/a/o/p/e/g/a;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Le/a/o/p/e/g/a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/o/p/e/g/a$a;

    iget v1, v0, Le/a/o/p/e/g/a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/p/e/g/a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/p/e/g/a$a;

    invoke-direct {v0, p0, p2}, Le/a/o/p/e/g/a$a;-><init>(Le/a/o/p/e/g/a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/o/p/e/g/a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/p/e/g/a$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Le/a/o/p/e/g/a$a;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    iget-object p0, v0, Le/a/o/p/e/g/a$a;->g:Ljava/lang/Object;

    check-cast p0, Le/a/o/p/e/g/a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/o/p/e/g/a$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/o/p/e/g/a$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/o/p/e/g/a$a;->e:I

    invoke-virtual {p0, v0}, Le/a/o/p/e/g/a;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const/4 p2, 0x0

    .line 5
    iput-object p2, v0, Le/a/o/p/e/g/a$a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/o/p/e/g/a$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/o/p/e/g/a$a;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/o/p/e/g/a;->c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0
.end method


# virtual methods
.method public abstract a(Ls1/w/d;)Ljava/lang/Object;
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
.end method

.method public abstract b(Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public d(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Le/a/o/p/e/g/a;->e(Le/a/o/p/e/g/a;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
