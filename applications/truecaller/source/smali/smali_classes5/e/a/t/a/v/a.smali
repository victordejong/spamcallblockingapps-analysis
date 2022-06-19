.class public final Le/a/t/a/v/a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/t/a/v/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/t/a/v/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Le/a/t/a/u/d;

.field public b:Le/a/t/a/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Le/a/t/a/u/d;

    .line 2
    iput-object v0, p0, Le/a/t/a/v/a;->a:[Le/a/t/a/u/d;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/v/a;->a:[Le/a/t/a/u/d;

    array-length v0, v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    sget p1, Lcom/truecaller/android/truemoji/R$id;->view_type_emoji:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/t/a/v/a$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/t/a/v/a;->a:[Le/a/t/a/u/d;

    aget-object p2, v0, p2

    .line 4
    iput-object p2, p1, Le/a/t/a/v/a$a;->a:Le/a/t/a/u/d;

    .line 5
    iget-object p1, p1, Le/a/t/a/v/a$a;->b:Lcom/truecaller/android/truemoji/keyboard/EmojiView;

    .line 6
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
    sget v0, Lcom/truecaller/android/truemoji/R$layout;->item_emoji:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/t/a/v/a$a;

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/t/a/v/a$a;-><init>(Landroid/view/View;)V

    .line 4
    new-instance v0, Le/a/t/a/v/b;

    invoke-direct {v0, p0, p2}, Le/a/t/a/v/b;-><init>(Le/a/t/a/v/a;Le/a/t/a/v/a$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance v0, Le/a/t/a/v/c;

    invoke-direct {v0, p0, p2}, Le/a/t/a/v/c;-><init>(Le/a/t/a/v/a;Le/a/t/a/v/a$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method
