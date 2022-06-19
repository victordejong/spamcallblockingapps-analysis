.class public final Le/a/y/a/d/a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/a/d/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public final b:Landroid/app/Activity;

.field public final c:Le/a/z3/e;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/y/g/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/y/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/y/b/t<",
            "Le/a/y/g/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/y/a/d/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Le/a/z3/e;Ljava/util/List;Le/a/y/b/t;Le/a/y/a/d/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Le/a/z3/e;",
            "Ljava/util/List<",
            "+",
            "Le/a/y/g/c;",
            ">;",
            "Le/a/y/b/t<",
            "Le/a/y/g/a;",
            ">;",
            "Le/a/y/a/d/b;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "glideRequests"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerItemPresenter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/y/a/d/a;->b:Landroid/app/Activity;

    iput-object p2, p0, Le/a/y/a/d/a;->c:Le/a/z3/e;

    iput-object p3, p0, Le/a/y/a/d/a;->d:Ljava/util/List;

    iput-object p4, p0, Le/a/y/a/d/a;->e:Le/a/y/b/t;

    iput-object p5, p0, Le/a/y/a/d/a;->f:Le/a/y/a/d/b;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p2, "LayoutInflater.from(activity)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/y/a/d/a;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/a/d/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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
    iget-object v0, p0, Le/a/y/a/d/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/y/g/c;

    invoke-interface {p1}, Le/a/y/g/c;->a()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/a/d/a;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/y/g/c;

    .line 2
    invoke-interface {p2}, Le/a/y/g/c;->a()I

    move-result v0

    sget v1, Lcom/truecaller/flashsdk/R$layout;->flash_popup_content_header:I

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/y/a/d/a;->f:Le/a/y/a/d/b;

    check-cast p1, Le/a/y/a/d/e;

    check-cast p2, Le/a/y/g/b;

    invoke-interface {v0, p1, p2}, Le/a/y/a/d/b;->b(Le/a/y/a/d/e;Le/a/y/g/b;)V

    goto :goto_1

    .line 4
    :cond_0
    check-cast p1, Le/a/y/a/d/a$a;

    check-cast p2, Le/a/y/g/a;

    const-string v0, "contact"

    .line 5
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p2, Le/a/y/g/a;->a:Ljava/lang/String;

    .line 7
    iget-object v1, p2, Le/a/y/g/a;->c:Ljava/lang/String;

    .line 8
    iget-object p2, p2, Le/a/y/g/a;->b:Ljava/lang/String;

    .line 9
    iget-object v2, p1, Le/a/y/a/d/a$a;->b:Lcom/truecaller/flashsdk/ui/FlashButton;

    const-string v3, "phone"

    .line 10
    invoke-static {p2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string p2, "flashShare"

    .line 11
    invoke-virtual {v2, v3, v4, v0, p2}, Lcom/truecaller/flashsdk/ui/FlashButton;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p2, p1, Le/a/y/a/d/a$a;->b:Lcom/truecaller/flashsdk/ui/FlashButton;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    iget-object p2, p1, Le/a/y/a/d/a$a;->d:Le/a/y/a/d/a;

    .line 14
    iget-object p2, p2, Le/a/y/a/d/a;->b:Landroid/app/Activity;

    .line 15
    sget v3, Lcom/truecaller/flashsdk/R$drawable;->ic_flash_empty_avatar_round:I

    .line 16
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 17
    invoke-static {p2, v3}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    .line 19
    iget-object v2, p1, Le/a/y/a/d/a$a;->d:Le/a/y/a/d/a;

    .line 20
    iget-object v2, v2, Le/a/y/a/d/a;->c:Le/a/z3/e;

    .line 21
    invoke-virtual {v2, v1}, Le/a/z3/e;->B(Ljava/lang/String;)Le/a/z3/d;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Le/a/z3/d;->d0()Le/a/z3/d;

    move-result-object v1

    .line 23
    invoke-virtual {v1, p2}, Le/a/z3/d;->p0(Landroid/graphics/drawable/Drawable;)Le/a/z3/d;

    move-result-object v1

    .line 24
    invoke-virtual {v1, p2}, Le/a/z3/d;->i0(Landroid/graphics/drawable/Drawable;)Le/a/z3/d;

    move-result-object p2

    .line 25
    iget-object v1, p1, Le/a/y/a/d/a$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    move-result-object p2

    const-string v1, "glideRequests.load(image\u2026       .into(imageAvatar)"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_3
    iget-object v1, p1, Le/a/y/a/d/a$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :goto_0
    iget-object p2, p1, Le/a/y/a/d/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$layout;->flash_popup_content_header:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Le/a/y/a/d/f;

    iget-object v2, p0, Le/a/y/a/d/a;->a:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026nt_header, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/y/a/d/a;->c:Le/a/z3/e;

    invoke-direct {p2, p1, v0}, Le/a/y/a/d/f;-><init>(Landroid/view/View;Le/a/z3/e;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Le/a/y/a/d/a$a;

    iget-object v0, p0, Le/a/y/a/d/a;->a:Landroid/view/LayoutInflater;

    sget v2, Lcom/truecaller/flashsdk/R$layout;->flashsdk_item_favourite_contact:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026e_contact, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Le/a/y/a/d/a$a;-><init>(Le/a/y/a/d/a;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/y/a/d/e;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Le/a/y/a/d/e;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Le/a/y/a/d/a;->f:Le/a/y/a/d/b;

    invoke-interface {v0, p1}, Le/a/y/a/d/b;->c(Le/a/y/a/d/e;)V

    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/y/a/d/e;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Le/a/y/a/d/e;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Le/a/y/a/d/a;->f:Le/a/y/a/d/b;

    invoke-interface {v0, p1}, Le/a/y/a/d/b;->a(Le/a/y/a/d/e;)V

    :cond_1
    return-void
.end method
