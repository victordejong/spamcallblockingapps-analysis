.class public final Le/a/v4/o0/d;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/v4/o0/d$b;,
        Le/a/v4/o0/d$c;,
        Le/a/v4/o0/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/v4/o0/d$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Le/a/v4/o0/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Le/a/p5/h0;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Le/a/p5/h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Le/a/v4/o0/c;",
            ">;",
            "Le/a/p5/h0;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themedResourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p2, p0, Le/a/v4/o0/d;->b:Ljava/util/List;

    iput-object p3, p0, Le/a/v4/o0/d;->c:Le/a/p5/h0;

    const/4 p2, 0x2

    iput p2, p0, Le/a/v4/o0/d;->d:I

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Le/a/v4/o0/d;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/v4/o0/d;->d:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/o0/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/v4/o0/c;

    invoke-interface {p1}, Le/a/v4/o0/c;->getType()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/v4/o0/d$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Le/a/v4/o0/d$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    iget-object v0, p0, Le/a/v4/o0/d;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/v4/o0/c;

    invoke-interface {p2}, Le/a/v4/o0/c;->m1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 4

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater.inflate(R.layou\u2026tem_popup, parent, false)"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    .line 2
    new-instance p2, Le/a/v4/o0/d$b;

    iget-object v2, p0, Le/a/v4/o0/d;->a:Landroid/view/LayoutInflater;

    sget v3, Lcom/truecaller/sdk/R$layout;->profile_info_item_popup:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/v4/o0/d$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Le/a/v4/o0/d$a;

    iget-object v2, p0, Le/a/v4/o0/d;->a:Landroid/view/LayoutInflater;

    sget v3, Lcom/truecaller/sdk/R$layout;->profile_info_item_popup:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/v4/o0/d$a;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p2, Le/a/v4/o0/d$c;

    iget-object v2, p0, Le/a/v4/o0/d;->a:Landroid/view/LayoutInflater;

    sget v3, Lcom/truecaller/sdk/R$layout;->profile_info_item_popup:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/v4/o0/d$c;-><init>(Landroid/view/View;)V

    .line 5
    :goto_0
    iget-object p1, p0, Le/a/v4/o0/d;->c:Le/a/p5/h0;

    invoke-virtual {p2, p1}, Le/a/v4/o0/d$b;->N4(Le/a/p5/h0;)V

    return-object p2
.end method
