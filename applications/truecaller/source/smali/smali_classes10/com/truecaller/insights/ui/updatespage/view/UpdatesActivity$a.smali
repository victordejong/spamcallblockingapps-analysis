.class public final Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/c/a/g/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/b/a/h;


# direct methods
.method public constructor <init>(Ln3/b/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity$a;->b:Ln3/b/a/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity$a;->b:Ln3/b/a/h;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layoutInflater"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v1, Lcom/truecaller/insights/ui/R$layout;->activity_updates:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcom/truecaller/insights/ui/R$id;->appBarLayout:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    const-string v2, "Missing required view with ID: "

    if-eqz v5, :cond_2

    .line 5
    sget v1, Lcom/truecaller/insights/ui/R$id;->searchDisabledGroup:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7
    sget v1, Lcom/truecaller/insights/ui/R$id;->back:I

    .line 8
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/truecaller/ui/view/TintedImageView;

    if-eqz v4, :cond_1

    .line 9
    sget v1, Lcom/truecaller/insights/ui/R$id;->bannerViewX:I

    .line 10
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/truecaller/common/ui/banner/BannerViewX;

    if-eqz v6, :cond_1

    .line 11
    sget v1, Lcom/truecaller/insights/ui/R$id;->title:I

    .line 12
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 13
    new-instance v1, Le/a/c/a/g/e1;

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v1, v3, v4, v6, v7}, Le/a/c/a/g/e1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/ui/view/TintedImageView;Lcom/truecaller/common/ui/banner/BannerViewX;Landroid/widget/TextView;)V

    .line 14
    sget v3, Lcom/truecaller/insights/ui/R$id;->searchFilterContainer:I

    .line 15
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 16
    sget v3, Lcom/truecaller/insights/ui/R$id;->updatesContainer:I

    .line 17
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 18
    new-instance v2, Le/a/c/a/g/g;

    move-object v4, v0

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v3, v2

    move-object v6, v1

    invoke-direct/range {v3 .. v8}, Le/a/c/a/g/g;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Le/a/c/a/g/e1;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;)V

    return-object v2

    :cond_0
    move v1, v3

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
