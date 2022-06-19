.class public final Le/a/v/a/i0/i;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001J%\u0010\u0008\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Le/a/v/a/i0/i;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/widget/ImageView;",
        "Le/a/v/a/i0/a;",
        "number",
        "Lcom/truecaller/details_view/ui/numbers/SimData;",
        "simData",
        "Ls1/s;",
        "f1",
        "(Landroid/widget/ImageView;Le/a/v/a/i0/a;Lcom/truecaller/details_view/ui/numbers/SimData;)V",
        "Le/a/v/k/r;",
        "t",
        "Le/a/v/k/r;",
        "binding",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final t:Le/a/v/k/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 14

    move-object v12, p0

    move-object v0, p1

    and-int/lit8 v1, p5, 0x2

    const/4 v1, 0x0

    and-int/lit8 v2, p5, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move/from16 v2, p3

    :goto_0
    and-int/lit8 v4, p5, 0x8

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v3, p4

    :goto_1
    const-string v4, "context"

    .line 1
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    sget v1, Lcom/truecaller/details_view/R$layout;->view_single_number:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget v0, Lcom/truecaller/details_view/R$id;->callContextButton:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 7
    sget v0, Lcom/truecaller/details_view/R$id;->categoryIcon:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 9
    sget v0, Lcom/truecaller/details_view/R$id;->categoryLabel:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 11
    sget v0, Lcom/truecaller/details_view/R$id;->divider:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 13
    sget v0, Lcom/truecaller/details_view/R$id;->number:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 15
    sget v0, Lcom/truecaller/details_view/R$id;->numberCategoryContainer:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2

    .line 17
    sget v0, Lcom/truecaller/details_view/R$id;->numberDetails:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 19
    sget v0, Lcom/truecaller/details_view/R$id;->primarySimButton:I

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_2

    .line 21
    sget v0, Lcom/truecaller/details_view/R$id;->secondarySimButton:I

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_2

    .line 23
    sget v0, Lcom/truecaller/details_view/R$id;->smsButton:I

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_2

    .line 25
    new-instance v13, Le/a/v/k/r;

    move-object v0, v13

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Le/a/v/k/r;-><init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    const-string v0, "ViewSingleNumberBinding.\u2026ater.from(context), this)"

    .line 26
    invoke-static {v13, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v13, v12, Le/a/v/a/i0/i;->t:Le/a/v/k/r;

    .line 27
    invoke-static {p0}, Le/a/p5/s0/f;->a(Landroid/view/View;)V

    return-void

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final f1(Landroid/widget/ImageView;Le/a/v/a/i0/a;Lcom/truecaller/details_view/ui/numbers/SimData;)V
    .locals 2

    if-nez p3, :cond_0

    .line 1
    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Lcom/truecaller/details_view/ui/numbers/SimData;->getIcon()I

    move-result v1

    invoke-static {v0, v1}, Ln3/b/b/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    new-instance v0, Le/a/v/a/i0/i$a;

    invoke-direct {v0, p2, p3}, Le/a/v/a/i0/i$a;-><init>(Le/a/v/a/i0/a;Lcom/truecaller/details_view/ui/numbers/SimData;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
