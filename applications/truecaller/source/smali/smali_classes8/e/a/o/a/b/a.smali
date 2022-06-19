.class public final Le/a/o/a/b/a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/o/a/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Le/a/o/a/b/j;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Le/a/o/a/b/j;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/o/a/b/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    sget-object v0, Le/a/o/a/b/a$a;->c:Le/a/o/a/b/a$a;

    iput-object v0, p0, Le/a/o/a/b/a;->a:Ls1/z/b/l;

    .line 3
    sget-object v0, Le/a/o/a/b/a$a;->d:Le/a/o/a/b/a$a;

    iput-object v0, p0, Le/a/o/a/b/a;->b:Ls1/z/b/l;

    .line 4
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    iput-object v0, p0, Le/a/o/a/b/a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/a/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 5

    .line 1
    check-cast p1, Le/a/o/a/b/c;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/o/a/b/a;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/o/a/b/j;

    .line 4
    iget-object v0, p1, Le/a/o/a/b/c;->a:Landroid/widget/TextView;

    .line 5
    iget-object v1, p2, Le/a/o/a/b/j;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p1, Le/a/o/a/b/c;->b:Landroid/widget/TextView;

    .line 8
    iget-boolean v1, p2, Le/a/o/a/b/j;->e:Z

    .line 9
    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 10
    iget-object v1, p2, Le/a/o/a/b/j;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p1, Le/a/o/a/b/c;->c:Le/a/b0/a/b/a;

    .line 13
    iget-object v1, p2, Le/a/o/a/b/j;->d:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 14
    invoke-static {v0, v1, v2, v3, v4}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 15
    iget-object v0, p1, Le/a/o/a/b/c;->d:Landroid/widget/ImageView;

    .line 16
    new-instance v1, Lg1;

    invoke-direct {v1, v2, p0, p2}, Lg1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lg1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p2}, Lg1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 7

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    sget v0, Lcom/truecaller/contextcall/R$layout;->context_call_hidden_contacts_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    sget p2, Lcom/truecaller/contextcall/R$id;->avatarXView:I

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v3, :cond_0

    .line 5
    sget p2, Lcom/truecaller/contextcall/R$id;->nameTextView:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 7
    sget p2, Lcom/truecaller/contextcall/R$id;->numberTextView:I

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 9
    sget p2, Lcom/truecaller/contextcall/R$id;->removeImageView:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 11
    new-instance p2, Le/a/o/o/i;

    move-object v2, p1

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Le/a/o/o/i;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    const-string p1, "ContextCallHiddenContact\u2026.context), parent, false)"

    .line 12
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance p1, Le/a/o/a/b/c;

    invoke-direct {p1, p2}, Le/a/o/a/b/c;-><init>(Le/a/o/o/i;)V

    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
