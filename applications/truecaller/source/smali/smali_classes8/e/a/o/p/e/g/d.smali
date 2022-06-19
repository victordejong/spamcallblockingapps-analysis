.class public final Le/a/o/p/e/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/p/e/g/c;


# instance fields
.field public final a:Ls1/g;

.field public final b:Lcom/truecaller/contextcall/db/ContextCallDatabase;

.field public final c:Le/a/o/b/o;

.field public final d:Le/a/p5/c0;

.field public final e:Le/a/o/b/c0;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Lcom/truecaller/contextcall/db/ContextCallDatabase;Le/a/o/b/o;Le/a/p5/c0;Le/a/o/b/c0;Ls1/w/f;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contextCallDatabase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesFetcherWorkActionUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iOContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/p/e/g/d;->b:Lcom/truecaller/contextcall/db/ContextCallDatabase;

    iput-object p2, p0, Le/a/o/p/e/g/d;->c:Le/a/o/b/o;

    iput-object p3, p0, Le/a/o/p/e/g/d;->d:Le/a/p5/c0;

    iput-object p4, p0, Le/a/o/p/e/g/d;->e:Le/a/o/b/c0;

    iput-object p5, p0, Le/a/o/p/e/g/d;->f:Ls1/w/f;

    .line 2
    new-instance p1, Le/a/o/p/e/g/d$c;

    invoke-direct {p1, p0}, Le/a/o/p/e/g/d$c;-><init>(Le/a/o/p/e/g/d;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/o/p/e/g/d;->a:Ls1/g;

    return-void
.end method

.method public static final e(Le/a/o/p/e/g/d;Ljava/util/List;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/o/n/a;

    .line 3
    iget-object p1, p1, Le/a/o/n/a;->d:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/o/n/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/o/p/e/g/d$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/o/p/e/g/d$a;

    iget v1, v0, Le/a/o/p/e/g/d$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/p/e/g/d$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/p/e/g/d$a;

    invoke-direct {v0, p0, p1}, Le/a/o/p/e/g/d$a;-><init>(Le/a/o/p/e/g/d;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/o/p/e/g/d$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/p/e/g/d$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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

    iget-object p1, p0, Le/a/o/p/e/g/d;->f:Ls1/w/f;

    new-instance v2, Le/a/o/p/e/g/d$b;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/o/p/e/g/d$b;-><init>(Le/a/o/p/e/g/d;Ls1/w/d;)V

    iput v3, v0, Le/a/o/p/e/g/d$a;->e:I

    invoke-static {p1, v2, v0}, Le/a/m0/a1$k;->b1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_2
    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o/p/e/g/d;->c:Le/a/o/b/o;

    const-string v1, "customOnDemandMessage"

    invoke-interface {v0, v1}, Le/a/o/b/o;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/o/n/a;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/e/g/d;->f:Ls1/w/f;

    new-instance v1, Le/a/o/p/e/g/d$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/o/p/e/g/d$d;-><init>(Le/a/o/p/e/g/d;Ljava/util/List;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Le/a/m0/a1$k;->b1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o/p/e/g/d;->c:Le/a/o/b/o;

    const-string v1, "customOnDemandMessage"

    invoke-interface {v0, v1, p1}, Le/a/o/b/o;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f(IILcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;",
            ")",
            "Ljava/util/List<",
            "Le/a/o/n/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/e/g/d;->d:Le/a/p5/c0;

    .line 2
    invoke-interface {v0, p1}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider\n       \u2026StringArray(stringArrRes)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    .line 5
    new-instance v6, Le/a/o/n/a;

    .line 6
    iget-object v7, p0, Le/a/o/p/e/g/d;->d:Le/a/p5/c0;

    invoke-interface {v7, p2}, Le/a/p5/c0;->d(I)[Ljava/lang/Integer;

    move-result-object v7

    aget-object v7, v7, v3

    const-string v8, "resourceProvider.getInte\u2026Array(idsArrayRes)[index]"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "message"

    .line 7
    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {v6, v7, v3, v4, p3}, Le/a/o/n/a;-><init>(IILjava/lang/String;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)V

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method
