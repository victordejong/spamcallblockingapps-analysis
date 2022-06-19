.class public Le/a/e/o1;
.super Le/a/e/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/o1$b;
    }
.end annotation


# instance fields
.field public e:Lcom/truecaller/ui/view/ThemePreviewView;

.field public f:Landroid/view/ContextThemeWrapper;

.field public g:Le/a/e/o1$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/e/x0;-><init>()V

    return-void
.end method


# virtual methods
.method public final WA()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/e/o1;->g:Le/a/e/o1$b;

    .line 2
    iget-object v1, v0, Le/a/e/o1$b;->b:Ljava/util/List;

    iget v0, v0, Le/a/e/o1$b;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i5/d;

    .line 3
    sget-object v1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {v0}, Le/a/i5/a;->i(Le/a/i5/d;)V

    .line 4
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/j2;->B2()Le/a/w3/i;

    move-result-object v1

    invoke-interface {v1, v0}, Le/a/w3/i;->a(Le/a/i5/d;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 6
    invoke-static {}, Le/d/c/a/a;->m1()Le/a/q2/a;

    move-result-object v2

    const-string v3, "Setting"

    const-string v4, "Theme"

    .line 7
    invoke-static {v3, v4}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "State"

    .line 9
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v4, Le/a/q2/g$b$a;

    const-string v5, "SettingChanged"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v3, v6}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 11
    invoke-interface {v2, v4}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 12
    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {}, Le/a/l5/a/z1;->a()Le/a/l5/a/z1$b;

    move-result-object v2

    const-string v3, "theme"

    .line 15
    invoke-virtual {v2, v3}, Le/a/l5/a/z1$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/z1$b;

    .line 16
    invoke-virtual {v2, v0}, Le/a/l5/a/z1$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/z1$b;

    const-string v0, "settings_screen"

    .line 17
    invoke-virtual {v2, v0}, Le/a/l5/a/z1$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/z1$b;

    .line 18
    invoke-virtual {v2}, Le/a/l5/a/z1$b;->a()Le/a/l5/a/z1;

    move-result-object v2

    .line 19
    invoke-interface {v1, v2}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "calls"

    const/4 v3, 0x1

    .line 21
    invoke-static {v1, v2, v3, v0}, Lcom/truecaller/ui/TruecallerInit;->Va(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    const v0, 0x7f12063d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e0034

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x1

    .line 1
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 2
    sget-object p3, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object p3

    .line 3
    sget-object v0, Le/a/i5/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/i5/d;

    .line 7
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v5, p3, :cond_0

    add-int/lit8 v4, v3, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Le/a/l4/k;->D(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object p3

    iput-object p3, p0, Le/a/e/o1;->f:Landroid/view/ContextThemeWrapper;

    const p3, 0x7f0d0510

    .line 9
    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    const v0, 0x7f0a1215

    .line 10
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ui/view/ThemePreviewView;

    iput-object v0, p0, Le/a/e/o1;->e:Lcom/truecaller/ui/view/ThemePreviewView;

    const v0, 0x7f0d050f

    .line 11
    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    new-instance p2, Le/a/e/o1$b;

    invoke-direct {p2, p0, p3, v1, v4}, Le/a/e/o1$b;-><init>(Le/a/e/o1;Landroid/view/View;Ljava/util/List;I)V

    iput-object p2, p0, Le/a/e/o1;->g:Le/a/e/o1$b;

    .line 13
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 14
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x3

    invoke-direct {p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 15
    new-instance p3, Le/a/e/o1$a;

    invoke-direct {p3, p0, p2}, Le/a/e/o1$a;-><init>(Le/a/e/o1;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 16
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0089

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/e/o1;->WA()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public or()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/o1;->g:Le/a/e/o1$b;

    .line 2
    iget-object v1, v0, Le/a/e/o1$b;->b:Ljava/util/List;

    iget v0, v0, Le/a/e/o1$b;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i5/d;

    .line 3
    sget-object v1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 4
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1206a6

    .line 5
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    const v1, 0x7f120745

    new-instance v3, Le/a/e/t;

    invoke-direct {v3, p0}, Le/a/e/t;-><init>(Le/a/e/o1;)V

    .line 6
    invoke-virtual {v0, v1, v3}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v1, 0x7f12071f

    new-instance v3, Le/a/e/s;

    invoke-direct {v3, p0}, Le/a/e/s;-><init>(Le/a/e/o1;)V

    .line 7
    invoke-virtual {v0, v1, v3}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 8
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean v2, v1, Landroidx/appcompat/app/AlertController$b;->m:Z

    .line 9
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method
