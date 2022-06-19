.class public final Le/a/x/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    iput-object p1, p0, Le/a/x/z;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/x/z;->a:Landroidx/constraintlayout/widget/Guideline;

    const-string v0, "insets"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    return-object p2
.end method
