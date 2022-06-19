.class public final Le/a/v/m/a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.details_view.qa.DetailsViewQaActivity$insertSearchWarningsIfChosen$1"
    f = "DetailsViewQaActivity.kt"
    l = {
        0x69
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/details_view/qa/DetailsViewQaActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/details_view/qa/DetailsViewQaActivity;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/m/a;->f:Lcom/truecaller/details_view/qa/DetailsViewQaActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/v/m/a;

    iget-object v0, p0, Le/a/v/m/a;->f:Lcom/truecaller/details_view/qa/DetailsViewQaActivity;

    invoke-direct {p1, v0, p2}, Le/a/v/m/a;-><init>(Lcom/truecaller/details_view/qa/DetailsViewQaActivity;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/m/a;

    iget-object v0, p0, Le/a/v/m/a;->f:Lcom/truecaller/details_view/qa/DetailsViewQaActivity;

    invoke-direct {p1, v0, p2}, Le/a/v/m/a;-><init>(Lcom/truecaller/details_view/qa/DetailsViewQaActivity;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/m/a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/v/m/a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    .line 4
    iget-object p1, p0, Le/a/v/m/a;->f:Lcom/truecaller/details_view/qa/DetailsViewQaActivity;

    .line 5
    iget-object p1, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/j2;

    .line 6
    invoke-interface {p1}, Le/a/j2;->N3()Le/a/x4/j/a;

    move-result-object p1

    new-array v1, v2, [Lcom/truecaller/searchwarnings/data/SearchWarningDTO;

    const/4 v3, 0x0

    .line 7
    new-instance v11, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;

    .line 8
    iget-object v4, p0, Le/a/v/m/a;->f:Lcom/truecaller/details_view/qa/DetailsViewQaActivity;

    .line 9
    iget-object v4, v4, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->m:Ls1/g;

    invoke-interface {v4}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    const-string v5, "hasSearchWarningsMessage"

    .line 10
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Potential sales veeeeeeeeeeeeeeeery looooooooooong message"

    goto :goto_0

    :cond_2
    const-string v4, ""

    :goto_0
    move-object v7, v4

    const-string v5, "2147483647"

    const-string v6, "Potential sales"

    const-string v8, "#00FF00"

    const-string v9, "#1900FF"

    const-string v10, "https://storage.googleapis.com/tc-search-context-eu/message-icon/ic_fraud.png"

    move-object v4, v11

    .line 11
    invoke-direct/range {v4 .. v10}, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v1, v3

    iput v2, p0, Le/a/v/m/a;->e:I

    .line 12
    invoke-interface {p1, v1, p0}, Le/a/x4/j/a;->d([Lcom/truecaller/searchwarnings/data/SearchWarningDTO;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 13
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
