.class public final Le/a/v4/s0/i;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/v4/s0/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/v4/s0/i$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/v4/s0/h;


# direct methods
.method public constructor <init>(Ljava/util/List;Le/a/v4/s0/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;",
            ">;",
            "Le/a/v4/s0/h;",
            ")V"
        }
    .end annotation

    const-string v0, "scopeInfoList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopesAdapterListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/v4/s0/i;->a:Ljava/util/List;

    iput-object p2, p0, Le/a/v4/s0/i;->b:Le/a/v4/s0/h;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 4

    .line 1
    check-cast p1, Le/a/v4/s0/i$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/v4/s0/i;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;->setChecked(Z)V

    .line 5
    iget-object v2, p1, Le/a/v4/s0/i$a;->a:Le/a/v4/r0/h;

    .line 6
    iget-object v2, v2, Le/a/v4/r0/h;->b:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v3, Le/a/v4/s0/j;

    invoke-direct {v3, v2, p0, v0}, Le/a/v4/s0/j;-><init>(Landroidx/appcompat/widget/AppCompatCheckedTextView;Le/a/v4/s0/i;Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Le/a/v4/s0/i;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    const-string v1, "holder.binding.divider"

    if-ne p2, v0, :cond_0

    .line 10
    iget-object p1, p1, Le/a/v4/s0/i$a;->a:Le/a/v4/r0/h;

    .line 11
    iget-object p1, p1, Le/a/v4/r0/h;->c:Landroid/view/View;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p1, Le/a/v4/s0/i$a;->a:Le/a/v4/r0/h;

    .line 13
    iget-object p1, p1, Le/a/v4/r0/h;->c:Landroid/view/View;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    sget v0, Lcom/truecaller/sdk/R$layout;->item_scope_info:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-static {p1}, Le/a/v4/r0/h;->a(Landroid/view/View;)Le/a/v4/r0/h;

    move-result-object p1

    const-string p2, "ItemScopeInfoBinding.inf\u2026(inflater, parent, false)"

    .line 4
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p2, Le/a/v4/s0/i$a;

    .line 6
    iget-object p1, p1, Le/a/v4/r0/h;->a:Landroid/widget/LinearLayout;

    const-string v0, "binding.root"

    .line 7
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/v4/s0/i$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method
