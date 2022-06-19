.class public final Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR%\u0010\u0011\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R%\u0010\u0015\u001a\n \u000c*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\t\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;",
        "Landroid/widget/FrameLayout;",
        "",
        "src",
        "Ls1/s;",
        "setDrawable",
        "(I)V",
        "setText",
        "",
        "getType",
        "()Ljava/lang/String;",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "a",
        "Ls1/g;",
        "getTypeRes",
        "()Landroid/widget/ImageView;",
        "typeRes",
        "Landroid/widget/TextView;",
        "b",
        "()Landroid/widget/TextView;",
        "type",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget v1, Lcom/truecaller/insights/ui/R$id;->typeRes:I

    invoke-static {p0, v1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;->a:Ls1/g;

    .line 4
    sget v1, Lcom/truecaller/insights/ui/R$id;->type:I

    invoke-static {p0, v1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;->b:Ls1/g;

    .line 5
    sget v1, Lcom/truecaller/insights/ui/R$layout;->layout_section_entry_point:I

    invoke-static {p1, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 7
    sget-object v1, Lcom/truecaller/insights/ui/R$styleable;->TypeSelectorView:[I

    .line 8
    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;->getTypeRes()Landroid/widget/ImageView;

    move-result-object p2

    sget v1, Lcom/truecaller/insights/ui/R$styleable;->SectionsEntryPointView_android_src:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    invoke-direct {p0}, Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;->getType()Landroid/widget/TextView;

    move-result-object p2

    sget v1, Lcom/truecaller/insights/ui/R$styleable;->SectionsEntryPointView_android_text:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private final getType()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTypeRes()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;->getType()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "type"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setDrawable(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;->getTypeRes()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final setText(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;->getType()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
