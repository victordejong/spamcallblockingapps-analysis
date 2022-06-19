.class public final Le/a/i4/x/e;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i4/x/e$a;,
        Le/a/i4/x/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/i4/x/e$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/z3/e;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/notifications/enhancing/SourcedContact;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/i4/x/e$a;


# direct methods
.method public constructor <init>(Le/a/z3/e;Ljava/util/List;Le/a/i4/x/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/z3/e;",
            "Ljava/util/List<",
            "Lcom/truecaller/notifications/enhancing/SourcedContact;",
            ">;",
            "Le/a/i4/x/e$a;",
            ")V"
        }
    .end annotation

    const-string v0, "glide"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/i4/x/e;->a:Le/a/z3/e;

    iput-object p2, p0, Le/a/i4/x/e;->b:Ljava/util/List;

    iput-object p3, p0, Le/a/i4/x/e;->c:Le/a/i4/x/e$a;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i4/x/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 8

    .line 1
    check-cast p1, Le/a/i4/x/e$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/i4/x/e;->a:Le/a/z3/e;

    iget-object v1, p0, Le/a/i4/x/e;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/notifications/enhancing/SourcedContact;

    iget-object v1, p0, Le/a/i4/x/e;->c:Le/a/i4/x/e$a;

    const-string v2, "glide"

    .line 4
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "item"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, p1, Le/a/i4/x/e$b;->c:Landroid/widget/TextView;

    .line 6
    iget-object v3, p2, Lcom/truecaller/notifications/enhancing/SourcedContact;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v2, p1, Le/a/i4/x/e$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120270

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 9
    iget-object v5, p2, Lcom/truecaller/notifications/enhancing/SourcedContact;->b:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    .line 10
    iget-object v7, p2, Lcom/truecaller/notifications/enhancing/SourcedContact;->f:Ljava/lang/String;

    aput-object v7, v4, v5

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appAndSearchTerm.context\u2026 item.label, item.number)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v3, p1, Le/a/i4/x/e$b;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v2, p2, Lcom/truecaller/notifications/enhancing/SourcedContact;->h:Landroid/net/Uri;

    .line 14
    iget-object v3, p2, Lcom/truecaller/notifications/enhancing/SourcedContact;->g:Landroid/net/Uri;

    .line 15
    iget-object v4, p1, Le/a/i4/x/e$b;->a:Lcom/truecaller/ui/components/AvatarView;

    .line 16
    invoke-virtual {v4, v2, v3, v6, v6}, Lcom/truecaller/ui/components/AvatarView;->b(Landroid/net/Uri;Landroid/net/Uri;ZZ)V

    .line 17
    iget-object v2, p2, Lcom/truecaller/notifications/enhancing/SourcedContact;->a:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, "appicon"

    .line 18
    invoke-static {v4, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 19
    :cond_0
    invoke-virtual {v0, v3}, Le/a/z3/e;->z(Landroid/net/Uri;)Le/a/z3/d;

    move-result-object v0

    .line 20
    iget-object v2, p1, Le/a/i4/x/e$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 21
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Le/a/i4/x/f;

    invoke-direct {v0, v1, p2}, Le/a/i4/x/f;-><init>(Le/a/i4/x/e$a;Lcom/truecaller/notifications/enhancing/SourcedContact;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d039a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/i4/x/e$b;

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/i4/x/e$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method
