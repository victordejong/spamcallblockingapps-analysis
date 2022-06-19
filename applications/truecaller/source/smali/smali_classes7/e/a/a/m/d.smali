.class public final Le/a/a/m/d;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/f1;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Le/a/o2/m;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/a/m/d;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/a/m/d;->b:Le/a/o2/m;

    return-void
.end method

.method public static final N4(Landroid/content/Context;Ls1/z/b/a;)Landroid/text/SpannableString;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)",
            "Landroid/text/SpannableString;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "learnMoreAction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f120718

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.StrLearnMore)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120e61

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v2, v0

    .line 5
    new-instance v3, Le/a/a/m/c;

    invoke-direct {v3, p1, p0}, Le/a/a/m/c;-><init>(Ls1/z/b/a;Landroid/content/Context;)V

    const/16 p0, 0x21

    .line 6
    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method


# virtual methods
.method public E3()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Le/a/a/m/d;->O4(Z)V

    return-void
.end method

.method public final O4(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/m/d;->a:Landroid/view/View;

    const v1, 0x7f0a01ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/banner/BannerViewX;

    .line 2
    iget-object v1, p0, Le/a/a/m/d;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v2, 0x7f060637

    .line 4
    invoke-static {v1, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 5
    new-instance v1, Le/a/a/m/d$b;

    invoke-direct {v1, p0, v0}, Le/a/a/m/d$b;-><init>(Le/a/a/m/d;Lcom/truecaller/common/ui/banner/BannerViewX;)V

    .line 6
    iget-object v2, p0, Le/a/a/m/d;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "view.context"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    .line 7
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "learnMoreAction"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f120718

    .line 8
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context.getString(R.string.StrLearnMore)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v5, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f120e61

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v6, v4

    .line 12
    new-instance v7, Le/a/a/m/c;

    invoke-direct {v7, v1, v2}, Le/a/a/m/c;-><init>(Ls1/z/b/a;Landroid/content/Context;)V

    const/16 v1, 0x21

    .line 13
    invoke-virtual {v5, v7, v4, v6, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 14
    invoke-virtual {v0, v3}, Lcom/truecaller/common/ui/banner/BannerViewX;->setTitleColor(I)V

    if-eqz p1, :cond_0

    const v1, 0x7f0803d3

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 15
    invoke-static {v0, v1, v2, v4, v6}, Lcom/truecaller/common/ui/banner/BannerViewX;->a(Lcom/truecaller/common/ui/banner/BannerViewX;IIILjava/lang/Object;)V

    .line 16
    :cond_0
    invoke-virtual {v0, v3}, Lcom/truecaller/common/ui/banner/BannerViewX;->setSubtitleColor(I)V

    .line 17
    invoke-virtual {v0, v5}, Lcom/truecaller/common/ui/banner/BannerViewX;->setSubtitleWithLink(Landroid/text/SpannableString;)V

    .line 18
    new-instance v7, Le/a/a/m/d$a;

    move-object v1, v7

    move-object v2, p0

    move v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Le/a/a/m/d$a;-><init>(Le/a/a/m/d;IZLandroid/text/SpannableString;Lcom/truecaller/common/ui/banner/BannerViewX;)V

    invoke-virtual {v0, v7}, Lcom/truecaller/common/ui/banner/BannerViewX;->setPrimaryButtonCLickListener(Ls1/z/b/l;)V

    return-void
.end method

.method public w3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/a/a/m/d;->O4(Z)V

    return-void
.end method
