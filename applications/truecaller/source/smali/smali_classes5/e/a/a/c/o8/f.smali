.class public final Le/a/a/c/o8/f;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/o8/d;


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lcom/truecaller/common/ui/avatar/AvatarXView;

.field public final c:Le/a/b0/a/b/a;

.field public final d:Le/a/o2/m;

.field public final e:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;Z)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Le/a/a/c/o8/f;->d:Le/a/o2/m;

    iput-boolean p3, p0, Le/a/a/c/o8/f;->e:Z

    const p2, 0x7f0a0c0a

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "view.findViewById(R.id.name)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/a/a/c/o8/f;->a:Landroid/widget/TextView;

    const v0, 0x7f0a01b7

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.avatar)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/common/ui/avatar/AvatarXView;

    iput-object v0, p0, Le/a/a/c/o8/f;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 4
    new-instance v1, Le/a/b0/a/b/a;

    new-instance v2, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "view.context"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    iput-object v1, p0, Le/a/a/c/o8/f;->c:Le/a/b0/a/b/a;

    .line 5
    new-instance v0, Le/a/a/c/o8/f$a;

    invoke-direct {v0, p0}, Le/a/a/c/o8/f$a;-><init>(Le/a/a/c/o8/f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f0606cc

    .line 7
    sget-object v0, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 8
    invoke-static {p1, p3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 9
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/o8/f;->c:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/o8/f;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
