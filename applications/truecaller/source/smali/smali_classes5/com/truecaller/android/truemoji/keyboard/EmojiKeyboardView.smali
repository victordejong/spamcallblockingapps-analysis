.class public final Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/t/a/p;",
        "recentEmoji",
        "Ls1/s;",
        "setRecentEmoji",
        "(Le/a/t/a/p;)V",
        "Le/a/t/a/o;",
        "listener",
        "setOnEmojiClickListener",
        "(Le/a/t/a/o;)V",
        "Le/a/t/a/v/d;",
        "t",
        "Le/a/t/a/v/d;",
        "adapter",
        "u",
        "Le/a/t/a/o;",
        "clickListener",
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
.field public final t:Le/a/t/a/v/d;

.field public u:Le/a/t/a/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget p2, Lcom/truecaller/android/truemoji/R$layout;->view_emoji_keyboard:I

    invoke-static {p1, p2, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    sget p1, Lcom/truecaller/android/truemoji/R$id;->tabLayout:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.tabLayout)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 5
    sget p2, Lcom/truecaller/android/truemoji/R$id;->backspaceButton:I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.backspaceButton)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget v0, Lcom/truecaller/android/truemoji/R$id;->viewPager:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.viewPager)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    sget-object v1, Le/a/t/a/u/i;->a:Ljava/util/concurrent/FutureTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/t/a/u/f;

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, v1, Le/a/t/a/u/f;->b:Ljava/util/List;

    .line 9
    new-instance v2, Le/a/t/a/v/d;

    invoke-direct {v2, v1}, Le/a/t/a/v/d;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;->t:Le/a/t/a/v/d;

    .line 10
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 11
    new-instance v2, Le/m/a/g/x/e;

    new-instance v3, Le/a/t/a/v/f;

    invoke-direct {v3, v1}, Le/a/t/a/v/f;-><init>(Ljava/util/List;)V

    invoke-direct {v2, p1, v0, v3}, Le/m/a/g/x/e;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Le/m/a/g/x/e$b;)V

    .line 12
    invoke-virtual {v2}, Le/m/a/g/x/e;->a()V

    .line 13
    new-instance p1, Le/a/t/a/v/g;

    invoke-direct {p1, p0}, Le/a/t/a/v/g;-><init>(Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Le/a/t/a/v/h;

    invoke-direct {p1, p0}, Le/a/t/a/v/h;-><init>(Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;)V

    .line 15
    iget-object p2, v0, Landroidx/viewpager2/widget/ViewPager2;->c:Ln3/l0/b/c;

    .line 16
    iget-object p2, p2, Ln3/l0/b/c;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Emoji data loader has not been set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final setOnEmojiClickListener(Le/a/t/a/o;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;->u:Le/a/t/a/o;

    .line 2
    iget-object v0, p0, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;->t:Le/a/t/a/v/d;

    .line 3
    iput-object p1, v0, Le/a/t/a/v/d;->c:Le/a/t/a/o;

    return-void
.end method

.method public final setRecentEmoji(Le/a/t/a/p;)V
    .locals 1

    const-string v0, "recentEmoji"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardView;->t:Le/a/t/a/v/d;

    .line 2
    iput-object p1, v0, Le/a/t/a/v/d;->a:Le/a/t/a/p;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method
