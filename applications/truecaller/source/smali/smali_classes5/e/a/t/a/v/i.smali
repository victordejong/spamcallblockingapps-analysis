.class public final Le/a/t/a/v/i;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public b:Le/a/t/a/o;

.field public final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object p1, p0, Le/a/t/a/v/i;->c:Landroid/view/View;

    const/4 v0, -0x2

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/truecaller/android/truemoji/R$layout;->view_emoji_variants_popup:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/truecaller/android/truemoji/R$id;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "contentView.findViewById(R.id.container)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Le/a/t/a/v/i;->a:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/android/truemoji/keyboard/EmojiView;Le/a/t/a/u/d;)V
    .locals 7

    const-string v0, "emojiView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emoji"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t/a/v/i;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    iget-object p2, p2, Le/a/t/a/u/d;->b:[Le/a/t/a/u/d;

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/truecaller/android/truemoji/R$layout;->item_emoji:I

    iget-object v6, p0, Le/a/t/a/v/i;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type com.truecaller.android.truemoji.keyboard.EmojiView"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/android/truemoji/keyboard/EmojiView;

    .line 5
    invoke-virtual {v4, v3}, Lcom/truecaller/android/truemoji/keyboard/EmojiView;->setEmoji(Le/a/t/a/u/d;)V

    .line 6
    new-instance v5, Le/a/t/a/v/i$a;

    invoke-direct {v5, v3, p0, p1}, Le/a/t/a/v/i$a;-><init>(Le/a/t/a/u/d;Le/a/t/a/v/i;Lcom/truecaller/android/truemoji/keyboard/EmojiView;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v3, p0, Le/a/t/a/v/i;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    new-array v0, p2, [I

    .line 8
    fill-array-data v0, :array_0

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 10
    iget-object v2, p0, Le/a/t/a/v/i;->a:Landroid/view/ViewGroup;

    .line 11
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 12
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 14
    iget-object v2, p0, Le/a/t/a/v/i;->c:Landroid/view/View;

    .line 15
    aget v3, v0, v1

    iget-object v4, p0, Le/a/t/a/v/i;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    sub-int/2addr v4, p1

    div-int/2addr v4, p2

    sub-int/2addr v3, v4

    const/4 p1, 0x1

    .line 16
    aget p1, v0, p1

    iget-object p2, p0, Le/a/t/a/v/i;->a:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 17
    invoke-virtual {p0, v2, v1, v3, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
