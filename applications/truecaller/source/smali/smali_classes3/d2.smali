.class public final Ld2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Ld2;->b:I

    iput-object p2, p0, Ld2;->c:Ljava/lang/Object;

    iput-object p3, p0, Ld2;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Ld2;->b:I

    const-string v2, "it"

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Ld2;->d:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    .line 4
    iget-object p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;->k:Ls1/z/b/a;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_2
    check-cast p1, Landroid/view/View;

    .line 8
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Ld2;->d:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    .line 10
    iget-object p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;->j:Ls1/z/b/a;

    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_3
    return-object v0

    .line 12
    :cond_4
    check-cast p1, Landroid/view/View;

    .line 13
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Ld2;->d:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    .line 15
    iget-object p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;->i:Ls1/z/b/l;

    .line 16
    iget-object v1, p0, Ld2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/a/a/a/c;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/common/ui/banner/DismissableBannerViewX;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "itemView.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Ld2;->d:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    .line 18
    iget-object p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;->g:Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;

    .line 19
    sget-object v1, Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;->MODEL_DOWNLOAD:Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;

    if-ne p1, v1, :cond_5

    .line 20
    sget-object p1, Le/a/c/a/a/a/a/c;->e:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p1, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->f:Lq3/a/x2/a1;

    sget-object v1, Lcom/truecaller/insights/ui/important/domain/BannerAction;->DOWNLOAD_MODEL_ACTION:Lcom/truecaller/insights/ui/important/domain/BannerAction;

    invoke-interface {p1, v1}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method
