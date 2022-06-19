.class public final Le/a/c/a/d/f/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ln3/z/q1<",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/f/e/f;->a:Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ln3/z/q1;

    .line 2
    iget-object v0, p0, Le/a/c/a/d/f/e/f;->a:Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;

    .line 3
    iget-object v0, v0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->d:Le/a/c/a/d/f/c/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ln3/z/w1;->e(Ln3/z/q1;)V

    .line 5
    iget-object p1, p0, Le/a/c/a/d/f/e/f;->a:Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->pa()Le/a/c/a/g/f;

    move-result-object p1

    .line 7
    iget-object p1, p1, Le/a/c/a/g/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Le/a/c/a/d/f/e/e;

    iget-object v1, p0, Le/a/c/a/d/f/e/f;->a:Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;

    invoke-direct {v0, v1}, Le/a/c/a/d/f/e/e;-><init>(Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;)V

    new-instance v1, Le/a/c/a/d/f/e/g;

    invoke-direct {v1, v0}, Le/a/c/a/d/f/e/g;-><init>(Ls1/z/b/a;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-string p1, "trxAdapter"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
