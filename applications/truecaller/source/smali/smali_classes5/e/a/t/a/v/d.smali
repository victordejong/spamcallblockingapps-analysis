.class public final Le/a/t/a/v/d;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/t/a/v/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/t/a/v/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Le/a/t/a/p;

.field public final b:Landroidx/recyclerview/widget/RecyclerView$u;

.field public c:Le/a/t/a/o;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/t/a/u/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/t/a/u/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "categories"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/t/a/v/d;->d:Ljava/util/List;

    .line 2
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$u;-><init>()V

    .line 3
    sget v0, Lcom/truecaller/android/truemoji/R$id;->view_type_emoji:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$u;->c(II)V

    .line 4
    iput-object p1, p0, Le/a/t/a/v/d;->b:Landroidx/recyclerview/widget/RecyclerView$u;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/v/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/t/a/v/d$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Le/a/t/a/v/d;->d:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/t/a/u/e;

    .line 4
    iget-object p2, p2, Le/a/t/a/u/e;->c:[Le/a/t/a/u/d;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Le/a/t/a/v/d;->a:Le/a/t/a/p;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Le/a/t/a/p;->b()Ljava/util/Collection;

    move-result-object p2

    if-eqz p2, :cond_1

    new-array v0, v0, [Le/a/t/a/u/d;

    .line 6
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, [Le/a/t/a/u/d;

    goto :goto_0

    :cond_1
    new-array p2, v0, [Le/a/t/a/u/d;

    .line 7
    :goto_0
    iget-object p1, p1, Le/a/t/a/v/d$a;->a:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;

    .line 8
    invoke-virtual {p1, p2}, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;->setEmojis([Le/a/t/a/u/d;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    sget v0, Lcom/truecaller/android/truemoji/R$layout;->item_emoji_tab:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/t/a/v/d$a;

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/t/a/v/d$a;-><init>(Landroid/view/View;)V

    .line 4
    iget-object p1, p2, Le/a/t/a/v/d$a;->a:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;

    .line 5
    iget-object v0, p0, Le/a/t/a/v/d;->b:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 6
    iget-object p1, p2, Le/a/t/a/v/d$a;->a:Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;

    .line 7
    new-instance v0, Le/a/t/a/v/e;

    invoke-direct {v0, p0}, Le/a/t/a/v/e;-><init>(Le/a/t/a/v/d;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/android/truemoji/keyboard/EmojiKeyboardTabView;->setOnEmojiClickListener(Le/a/t/a/o;)V

    return-object p2
.end method
