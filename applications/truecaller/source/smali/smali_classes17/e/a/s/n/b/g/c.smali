.class public final Le/a/s/n/b/g/c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/s/n/b/g/g;


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/view/View;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7e02000f    # 4.3199986E37f

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.imageView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Le/a/s/n/b/g/c;->a:Landroid/widget/ImageView;

    const v0, 0x7e020011    # 4.3199996E37f

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.nameText)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/s/n/b/g/c;->b:Landroid/widget/TextView;

    const v0, 0x7e02000b    # 4.3199966E37f

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.descriptionText)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/s/n/b/g/c;->c:Landroid/widget/TextView;

    const v0, 0x7e020015    # 4.3200016E37f

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.selectedView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/s/n/b/g/c;->d:Landroid/view/View;

    const v0, 0x7e020012    # 4.32E37f

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.playbackIconView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/a/s/n/b/g/c;->e:Landroid/widget/ImageView;

    const v0, 0x7e020013    # 4.3200006E37f

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.progressBar)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/s/n/b/g/c;->f:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    .line 8
    invoke-static/range {v3 .. v8}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v5, "ItemEvent.ACTION_AVATAR_CLICK"

    const/16 v7, 0x8

    move-object v3, p2

    move-object v4, p0

    .line 9
    invoke-static/range {v2 .. v7}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/s/n/b/g/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/n/b/g/c;->f:Landroid/view/View;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public l(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/n/b/g/c;->d:Landroid/view/View;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/s/n/b/g/c;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object p1

    iget-object v0, p0, Le/a/s/n/b/g/c;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/s/n/b/g/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public w(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/n/b/g/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
