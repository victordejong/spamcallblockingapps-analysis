.class public final Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->g(ZLjava/util/List;Ljava/util/List;)Lq3/a/p1;
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
    c = "com.truecaller.insights.ui.markedimportantpage.presentation.MarkedImportantViewModel$markMessage$2"
    f = "MarkedImportantViewModel.kt"
    l = {
        0xe2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;Ljava/util/List;ZLjava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->f:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    iput-object p2, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->g:Ljava/util/List;

    iput-boolean p3, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->h:Z

    iput-object p4, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->i:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;

    iget-object v1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->f:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    iget-object v2, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->g:Ljava/util/List;

    iget-boolean v3, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->h:Z

    iget-object v4, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->i:Ljava/util/List;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;-><init>(Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;Ljava/util/List;ZLjava/util/List;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

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
    iget-object p1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->g:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Le/a/c/a/l/b$c;

    .line 8
    iget-wide v4, v4, Le/a/c/a/l/b$c;->a:J

    .line 9
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 10
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->g:Ljava/util/List;

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 14
    check-cast v3, Le/a/c/a/l/b$c;

    .line 15
    iget-object v3, v3, Le/a/c/a/l/b$c;->h:Le/a/c/h/m/d;

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {v3}, Le/a/c/h/m/d;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->f:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    .line 18
    iget-object p1, p1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->e:Le/a/c/a/k/b/e;

    .line 19
    new-instance v3, Le/a/c/a/k/c/a;

    iget-boolean v5, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->h:Z

    invoke-direct {v3, v5, v1, v4}, Le/a/c/a/k/c/a;-><init>(ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, v3}, Le/a/c/a/i/c;->c(Ljava/lang/Object;)Lq3/a/x2/f;

    move-result-object p1

    .line 20
    new-instance v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b$a;

    invoke-direct {v1, p0}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b$a;-><init>(Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;)V

    iput v2, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;->e:I

    invoke-interface {p1, v1, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 21
    :cond_5
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
