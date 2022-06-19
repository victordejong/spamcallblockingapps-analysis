.class public final synthetic Le/a/c/a/d/f/e/e;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;)V
    .locals 7

    const-class v3, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;

    const/4 v1, 0x0

    const-string v4, "setupSearchResults"

    const-string v5, "setupSearchResults()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;

    .line 2
    sget v1, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->h:I

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->ra()V

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->qa()Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;

    move-result-object v1

    iget-object v2, v0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->d:Le/a/c/a/d/f/c/a;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ln3/z/w1;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->pa()Le/a/c/a/g/f;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/f;->e:Le/a/c/a/g/b1;

    iget-object v0, v0, Le/a/c/a/g/b1;->b:Lcom/truecaller/insights/ui/widget/SearchEditText;

    const-string v5, "binding.searchCon.searchBar"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "query"

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v5, v1, Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;->d:Ljava/lang/String;

    invoke-static {v5, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    iput-object v0, v1, Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;->d:Ljava/lang/String;

    .line 8
    iget-object v0, v1, Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;->h:Le/a/c/a/i/j;

    if-eqz v2, :cond_3

    .line 9
    sget-object v1, Le/a/c/a/d/f/b/a/a;->d:Le/a/c/a/d/f/b/a/a;

    .line 10
    sget-object v1, Le/a/c/a/d/f/b/a/a;->b:Le/a/c/r/d/b;

    goto :goto_2

    .line 11
    :cond_3
    sget-object v1, Le/a/c/a/d/f/b/a/a;->d:Le/a/c/a/d/f/b/a/a;

    .line 12
    sget-object v1, Le/a/c/a/d/f/b/a/a;->c:Le/a/c/r/d/b;

    .line 13
    :goto_2
    invoke-virtual {v0, v1}, Le/a/c/a/i/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_4
    :goto_3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    :cond_5
    const-string v0, "trxAdapter"

    .line 15
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
