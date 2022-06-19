.class public final Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001J/\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001b\u0010\r\u001a\u00020\u00072\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00028\u0002@\u0003X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "",
        "w",
        "h",
        "oldw",
        "oldh",
        "Ls1/s;",
        "onSizeChanged",
        "(IIII)V",
        "",
        "Le/a/t/a/u/d;",
        "emojis",
        "setEmojis",
        "([Lcom/truecaller/android/truemoji/data/Emoji;)V",
        "Le/a/t/a/o;",
        "listener",
        "setOnEmojiClickListener",
        "(Le/a/t/a/o;)V",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "a",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "gridLayoutManager",
        "Le/a/t/a/v/a;",
        "b",
        "Le/a/t/a/v/a;",
        "emojiAdapter",
        "c",
        "I",
        "emojiSize",
        "truemoji_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final b:Le/a/t/a/v/a;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setRecycleChildrenOnDetach(Z)V

    .line 5
    iput-object p2, p0, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    new-instance v0, Le/a/t/a/v/a;

    invoke-direct {v0}, Le/a/t/a/v/a;-><init>()V

    iput-object v0, p0, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;->b:Le/a/t/a/v/a;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/truecaller/android/truemoji/R$dimen;->emoji_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;->c:I

    .line 8
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    iget p3, p0, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;->c:I

    div-int/2addr p1, p3

    const/4 p3, 0x1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public final setEmojis([Le/a/t/a/u/d;)V
    .locals 2

    const-string v0, "emojis"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;->b:Le/a/t/a/v/a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, v1, Le/a/t/a/v/a;->a:[Le/a/t/a/u/d;

    .line 4
    iget-object p1, p0, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;->b:Le/a/t/a/v/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final setOnEmojiClickListener(Le/a/t/a/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;->b:Le/a/t/a/v/a;

    .line 2
    iput-object p1, v0, Le/a/t/a/v/a;->b:Le/a/t/a/o;

    return-void
.end method
