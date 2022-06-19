.class public final Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u000bR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;",
        "Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;",
        "Lkotlin/Function0;",
        "Ls1/s;",
        "listener",
        "setClearIconClickListener",
        "(Ls1/z/b/a;)V",
        "a",
        "()V",
        "",
        "g",
        "Z",
        "touchToLeft",
        "h",
        "touchToRight",
        "f",
        "isRTL",
        "Landroid/graphics/drawable/Drawable;",
        "e",
        "Landroid/graphics/drawable/Drawable;",
        "clearIcon",
        "i",
        "Ls1/z/b/a;",
        "clearIconClickListener",
        "d",
        "searchIcon",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic j:I


# instance fields
.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:Z

.field public g:Z

.field public h:Z

.field public i:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget p2, Lcom/truecaller/insights/ui/R$drawable;->ic_search:I

    sget v1, Lcom/truecaller/insights/ui/R$attr;->tcx_textTertiary:I

    .line 4
    invoke-static {p1, p2, v1}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string v2, "ThemeUtils.getTintedDraw\u2026tr.tcx_textTertiary\n    )"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;->d:Landroid/graphics/drawable/Drawable;

    .line 5
    sget v3, Lcom/truecaller/insights/ui/R$drawable;->ic_close_black_24dp:I

    .line 6
    invoke-static {p1, v3, v1}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;->e:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Le/a/b0/k/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;->f:Z

    .line 8
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/insights/ui/R$dimen;->dp24:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 9
    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    invoke-virtual {p2, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    new-instance p1, Le/a/c/a/j/e/n;

    invoke-direct {p1, p0}, Le/a/c/a/j/e/n;-><init>(Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;)V

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;->a()V

    .line 13
    new-instance p1, Le/a/c/a/j/e/o;

    invoke-direct {p1, p0}, Le/a/c/a/j/e/o;-><init>(Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;)V

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;->f:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    .line 3
    iget-object v3, p0, Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;->d:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v1

    .line 5
    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;->d:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v3, v4, v3

    .line 8
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v1

    .line 9
    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final setClearIconClickListener(Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;->i:Ls1/z/b/a;

    return-void
.end method
