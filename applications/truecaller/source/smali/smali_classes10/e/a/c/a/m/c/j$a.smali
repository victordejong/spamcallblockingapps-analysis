.class public final Le/a/c/a/m/c/j$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/j;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    c = "com.truecaller.insights.ui.qa.view.InsightsUpdatesClassViewer$setupClickListeners$1$onItemSelected$1"
    f = "InsightsUpdatesClassViewer.kt"
    l = {
        0x6b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/a/m/c/j;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/j;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/j$a;->f:Le/a/c/a/m/c/j;

    iput-object p2, p0, Le/a/c/a/m/c/j$a;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/c/a/m/c/j$a;

    iget-object v0, p0, Le/a/c/a/m/c/j$a;->f:Le/a/c/a/m/c/j;

    iget-object v1, p0, Le/a/c/a/m/c/j$a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/a/m/c/j$a;-><init>(Le/a/c/a/m/c/j;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/c/j$a;

    iget-object v0, p0, Le/a/c/a/m/c/j$a;->f:Le/a/c/a/m/c/j;

    iget-object v1, p0, Le/a/c/a/m/c/j$a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/a/m/c/j$a;-><init>(Le/a/c/a/m/c/j;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/m/c/j$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/m/c/j$a;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

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
    iget-object p1, p0, Le/a/c/a/m/c/j$a;->f:Le/a/c/a/m/c/j;

    iget-object p1, p1, Le/a/c/a/m/c/j;->a:Le/a/c/a/m/c/i;

    invoke-static {p1}, Le/a/c/a/m/c/i;->OA(Le/a/c/a/m/c/i;)Le/a/c/a/m/b/x;

    move-result-object v5

    iget-object v6, p0, Le/a/c/a/m/c/j$a;->g:Ljava/lang/String;

    iget-object p1, p0, Le/a/c/a/m/c/j$a;->f:Le/a/c/a/m/c/j;

    iget-object p1, p1, Le/a/c/a/m/c/j;->a:Le/a/c/a/m/c/i;

    .line 5
    invoke-virtual {p1}, Le/a/c/a/m/c/i;->PA()Le/a/c/a/g/w1;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/w1;->c:Landroid/widget/EditText;

    const-string v1, "binding.msgLimitValue"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    move v7, p1

    goto :goto_1

    :cond_3
    move v7, v2

    .line 6
    :goto_1
    iget-object p1, p0, Le/a/c/a/m/c/j$a;->f:Le/a/c/a/m/c/j;

    iget-object p1, p1, Le/a/c/a/m/c/j;->a:Le/a/c/a/m/c/i;

    .line 7
    iget-object p1, p1, Le/a/c/a/m/c/i;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 8
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "dd-mm-yyyy"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    const-string v1, "SimpleDateFormat(\"dd-mm-yyyy\").parse(this)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    goto :goto_3

    .line 9
    :cond_5
    invoke-static {}, Le/d/c/a/a;->c()J

    move-result-wide v8

    .line 10
    :goto_3
    iput v3, p0, Le/a/c/a/m/c/j$a;->e:I

    .line 11
    iget-object p1, v5, Le/a/c/a/m/b/x;->b:Ls1/w/f;

    new-instance v1, Le/a/c/a/m/b/c0;

    const/4 v10, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Le/a/c/a/m/b/c0;-><init>(Le/a/c/a/m/b/x;Ljava/lang/String;IJLs1/w/d;)V

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 12
    :cond_6
    :goto_4
    check-cast p1, Ljava/util/List;

    .line 13
    iget-object v0, p0, Le/a/c/a/m/c/j$a;->f:Le/a/c/a/m/c/j;

    iget-object v0, v0, Le/a/c/a/m/c/j;->a:Le/a/c/a/m/c/i;

    .line 14
    iget-object v0, v0, Le/a/c/a/m/c/i;->f:Le/a/c/a/m/b/u;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 17
    check-cast v3, Le/a/c/q/k;

    .line 18
    new-instance v4, Le/a/c/a/m/b/l;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v2, v5}, Le/a/c/a/m/b/l;-><init>(Le/a/c/q/k;ZI)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 19
    :cond_7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "newData"

    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object p1, v0, Le/a/c/a/m/b/u;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 21
    iget-object p1, v0, Le/a/c/a/m/b/u;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    iget-object p1, p0, Le/a/c/a/m/c/j$a;->f:Le/a/c/a/m/c/j;

    iget-object p1, p1, Le/a/c/a/m/c/j;->a:Le/a/c/a/m/c/i;

    .line 23
    iget-object p1, p1, Le/a/c/a/m/c/i;->f:Le/a/c/a/m/b/u;

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 25
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
