.class public final Le/a/i/e/a/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/a/b/b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/i/e/c<",
        "+",
        "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/e/a/b/b;


# direct methods
.method public constructor <init>(Le/a/i/e/a/b/b;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/a/b/b$a;->a:Le/a/i/e/a/b/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/e/c<",
            "+",
            "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p2, Ls1/s;->a:Ls1/s;

    check-cast p1, Le/a/i/e/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 2
    iget-object v1, p0, Le/a/i/e/a/b/b$a;->a:Le/a/i/e/a/b/b;

    iget-object v1, v1, Le/a/i/e/a/b/b;->f:Le/a/i/e/a/b/a;

    .line 3
    sget-object v2, Le/a/i/e/a/b/a;->l:[Ls1/a/l;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    instance-of v2, p1, Le/a/i/e/e;

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Le/a/i/e/a/b/a;->UA(Z)V

    goto/16 :goto_4

    .line 6
    :cond_0
    instance-of v2, p1, Le/a/i/e/f;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 7
    invoke-virtual {v1, v3}, Le/a/i/e/a/b/a;->UA(Z)V

    .line 8
    check-cast p1, Le/a/i/e/f;

    .line 9
    iget-object p1, p1, Le/a/i/e/f;->a:Ljava/lang/Object;

    .line 10
    check-cast p1, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    .line 11
    invoke-virtual {v1}, Le/a/i/e/a/b/a;->TA()Le/a/i/x/b;

    move-result-object v2

    iget-object v2, v2, Le/a/i/x/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 12
    invoke-virtual {v1}, Le/a/i/e/a/b/a;->TA()Le/a/i/x/b;

    move-result-object v2

    iget-object v2, v2, Le/a/i/x/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 13
    invoke-virtual {v1}, Le/a/i/e/a/b/a;->TA()Le/a/i/x/b;

    move-result-object v2

    iget-object v2, v2, Le/a/i/x/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {p1}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getTheme()Lcom/truecaller/ads/offline/dto/Theme;

    move-result-object v2

    .line 15
    :try_start_0
    invoke-virtual {v1}, Le/a/i/e/a/b/a;->TA()Le/a/i/x/b;

    move-result-object v3

    iget-object v3, v3, Le/a/i/x/b;->a:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v4, "binding.closeButton"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/ads/offline/dto/Theme;->getBgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 16
    sget-object v3, Le/a/i/h0/m;->a:Ls1/z/b/l;

    const-string v4, "ArticleFragment: Theme color not valid->  "

    .line 17
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :goto_0
    invoke-virtual {v1}, Le/a/i/e/a/b/a;->SA()Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;

    move-result-object v2

    .line 19
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "offlineAdsDto"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v3, v2, Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;->b:Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;

    if-nez v3, :cond_1

    .line 21
    invoke-static {p1}, Le/m/d/y/n;->E0(Lcom/truecaller/ads/offline/dto/OfflineAdsDto;)Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;

    move-result-object v3

    iput-object v3, v2, Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;->b:Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;

    :cond_1
    if-eqz v3, :cond_2

    .line 22
    iget-object p1, v3, Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;->a:Ljava/util/List;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_7

    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/ads/offline/dto/UiComponent;

    .line 24
    invoke-virtual {v1}, Le/a/i/e/a/b/a;->TA()Le/a/i/x/b;

    move-result-object v3

    iget-object v3, v3, Le/a/i/x/b;->d:Landroid/widget/LinearLayout;

    const-string v4, "binding.itemHeaderContainer"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Le/a/i/e/a/b/a;->RA(Lcom/truecaller/ads/offline/dto/UiComponent;Landroid/widget/LinearLayout;)V

    .line 25
    instance-of v3, v2, Lcom/truecaller/ads/offline/dto/BodyUiComponent;

    if-eqz v3, :cond_4

    new-instance v3, Le/a/i/e/j/a;

    invoke-virtual {v1}, Le/a/i/e/a/b/a;->TA()Le/a/i/x/b;

    move-result-object v4

    iget-object v4, v4, Le/a/i/x/b;->c:Landroid/widget/LinearLayout;

    const-string v5, "binding.itemContainer"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/truecaller/ads/offline/dto/BodyUiComponent;

    .line 26
    iget-object v2, v2, Lcom/truecaller/ads/offline/dto/BodyUiComponent;->c:Ljava/util/List;

    .line 27
    invoke-direct {v3, v4, v2}, Le/a/i/e/j/a;-><init>(Landroid/widget/LinearLayout;Ljava/util/List;)V

    goto :goto_2

    .line 28
    :cond_4
    instance-of v3, v2, Lcom/truecaller/ads/offline/dto/CTAUiComponent;

    if-eqz v3, :cond_5

    new-instance v3, Le/a/i/e/j/a;

    invoke-virtual {v1}, Le/a/i/e/a/b/a;->TA()Le/a/i/x/b;

    move-result-object v4

    iget-object v4, v4, Le/a/i/x/b;->b:Landroid/widget/LinearLayout;

    const-string v5, "binding.itemBottomContainer"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/truecaller/ads/offline/dto/CTAUiComponent;

    .line 29
    iget-object v2, v2, Lcom/truecaller/ads/offline/dto/CTAUiComponent;->c:Ljava/util/List;

    .line 30
    invoke-direct {v3, v4, v2}, Le/a/i/e/j/a;-><init>(Landroid/widget/LinearLayout;Ljava/util/List;)V

    goto :goto_2

    :cond_5
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_3

    .line 31
    iget-object v2, v3, Le/a/i/e/j/a;->b:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 32
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/ads/offline/dto/UiComponent;

    .line 33
    iget-object v5, v3, Le/a/i/e/j/a;->a:Landroid/widget/LinearLayout;

    .line 34
    invoke-virtual {v1, v4, v5}, Le/a/i/e/a/b/a;->RA(Lcom/truecaller/ads/offline/dto/UiComponent;Landroid/widget/LinearLayout;)V

    goto :goto_3

    .line 35
    :cond_6
    instance-of v0, p1, Le/a/i/e/d;

    if-eqz v0, :cond_7

    .line 36
    invoke-virtual {v1, v3}, Le/a/i/e/a/b/a;->UA(Z)V

    .line 37
    check-cast p1, Le/a/i/e/d;

    .line 38
    iget-object p1, p1, Le/a/i/e/d;->a:Le/a/i/e/b;

    .line 39
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "requireContext()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Le/m/d/y/n;->Q(Le/a/i/e/b;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {v1}, Le/a/i/e/a/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_4
    move-object v0, p2

    .line 41
    :cond_8
    sget-object p1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, p1, :cond_9

    return-object v0

    :cond_9
    return-object p2
.end method
