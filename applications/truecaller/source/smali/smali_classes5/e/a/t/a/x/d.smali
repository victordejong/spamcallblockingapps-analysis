.class public final Le/a/t/a/x/d;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/t/a/x/i;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/t/a/u/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/t/a/o;


# direct methods
.method public constructor <init>(Le/a/t/a/o;)V
    .locals 1

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/t/a/x/d;->b:Le/a/t/a/o;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/t/a/x/d;->a:Ljava/util/List;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/x/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t/a/x/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t/a/u/d;

    invoke-virtual {p1}, Le/a/t/a/u/d;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/t/a/x/i;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Le/a/t/a/x/i;->a:Lcom/truecaller/android/truemoji/keyboard/EmojiView;

    .line 4
    iget-object v0, p0, Le/a/t/a/x/d;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/t/a/u/d;

    invoke-virtual {p1, p2}, Lcom/truecaller/android/truemoji/keyboard/EmojiView;->setEmoji(Le/a/t/a/u/d;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    sget v0, Lcom/truecaller/android/truemoji/R$layout;->item_emoji_search:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/t/a/x/i;

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/t/a/x/i;-><init>(Landroid/view/View;)V

    .line 4
    iget-object p1, p2, Le/a/t/a/x/i;->a:Lcom/truecaller/android/truemoji/keyboard/EmojiView;

    .line 5
    new-instance v0, Le/a/t/a/x/b;

    invoke-direct {v0, p0, p2}, Le/a/t/a/x/b;-><init>(Le/a/t/a/x/d;Le/a/t/a/x/i;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p2, Le/a/t/a/x/i;->a:Lcom/truecaller/android/truemoji/keyboard/EmojiView;

    .line 7
    new-instance v0, Le/a/t/a/x/c;

    invoke-direct {v0, p0, p2}, Le/a/t/a/x/c;-><init>(Le/a/t/a/x/d;Le/a/t/a/x/i;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method
