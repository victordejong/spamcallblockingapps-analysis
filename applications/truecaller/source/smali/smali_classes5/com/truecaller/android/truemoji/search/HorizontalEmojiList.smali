.class public final Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/o;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002J\u001b\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u001a\u001a\u00020\u00168B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Le/a/t/a/o;",
        "",
        "Le/a/t/a/u/d;",
        "emojis",
        "Ls1/s;",
        "setEmojis",
        "(Ljava/util/List;)V",
        "listener",
        "setEmojiClickListener",
        "(Le/a/t/a/o;)V",
        "emoji",
        "d",
        "(Le/a/t/a/u/d;)V",
        "Lcom/truecaller/android/truemoji/keyboard/EmojiView;",
        "view",
        "",
        "c",
        "(Lcom/truecaller/android/truemoji/keyboard/EmojiView;Le/a/t/a/u/d;)Z",
        "b",
        "()V",
        "Le/a/t/a/v/i;",
        "Ls1/g;",
        "getVariantPopup",
        "()Le/a/t/a/v/i;",
        "variantPopup",
        "Le/a/t/a/x/d;",
        "a",
        "Le/a/t/a/x/d;",
        "adapter",
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
.field public final a:Le/a/t/a/x/d;

.field public b:Le/a/t/a/o;

.field public final c:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Le/a/t/a/x/d;

    invoke-direct {p2, p0}, Le/a/t/a/x/d;-><init>(Le/a/t/a/o;)V

    iput-object p2, p0, Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;->a:Le/a/t/a/x/d;

    .line 4
    new-instance v2, Le/a/t/a/x/j;

    invoke-direct {v2, p0}, Le/a/t/a/x/j;-><init>(Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;)V

    invoke-static {v2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v2

    iput-object v2, p0, Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;->c:Ls1/g;

    .line 5
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 7
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method private final getVariantPopup()Le/a/t/a/v/i;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/t/a/v/i;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lcom/truecaller/android/truemoji/keyboard/EmojiView;Le/a/t/a/u/d;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emoji"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;->getVariantPopup()Le/a/t/a/v/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Le/a/t/a/v/i;->a(Lcom/truecaller/android/truemoji/keyboard/EmojiView;Le/a/t/a/u/d;)V

    const/4 p1, 0x1

    return p1
.end method

.method public d(Le/a/t/a/u/d;)V
    .locals 1

    const-string v0, "emoji"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;->b:Le/a/t/a/o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/t/a/o;->d(Le/a/t/a/u/d;)V

    :cond_0
    return-void
.end method

.method public final setEmojiClickListener(Le/a/t/a/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;->b:Le/a/t/a/o;

    return-void
.end method

.method public final setEmojis(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/t/a/u/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emojis"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;->a:Le/a/t/a/x/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "newEmojis"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, v0, Le/a/t/a/x/d;->a:Ljava/util/List;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method
