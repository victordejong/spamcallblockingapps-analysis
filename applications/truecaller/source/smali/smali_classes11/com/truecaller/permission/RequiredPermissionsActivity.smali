.class public Lcom/truecaller/permission/RequiredPermissionsActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Le/a/p5/a0;

.field public b:Le/a/h5/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method

.method public static qa(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/permission/RequiredPermissionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final H8()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "return_to_tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "requiredPermission"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1, v2}, Lcom/truecaller/ui/TruecallerInit;->Va(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, v2}, Lcom/truecaller/ui/TruecallerInit;->Ua(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02de

    if-ne p1, v0, :cond_4

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/permission/RequiredPermissionsActivity;->b:Le/a/h5/w;

    invoke-interface {v0}, Le/a/h5/w;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/permission/RequiredPermissionsActivity;->pa(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/permission/RequiredPermissionsActivity;->b:Le/a/h5/w;

    invoke-interface {v0}, Le/a/h5/w;->k()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/permission/RequiredPermissionsActivity;->pa(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/truecaller/permission/RequiredPermissionsActivity;->b:Le/a/h5/w;

    invoke-interface {v0}, Le/a/h5/w;->g()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/permission/RequiredPermissionsActivity;->pa(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/permission/RequiredPermissionsActivity;->H8()V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Le/a/l4/k;->l0(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004a

    .line 3
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/truecaller/TrueApp;

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/permission/RequiredPermissionsActivity;->a:Le/a/p5/a0;

    .line 7
    invoke-interface {p1}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/permission/RequiredPermissionsActivity;->b:Le/a/h5/w;

    .line 8
    sget p1, Le/a/n5/b;->b:I

    const-string p1, "context"

    .line 9
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Le/a/n5/b;

    invoke-static {p1, v0}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "EntryPointAccessors.from\u2026GCEntryPoint::class.java)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le/a/n5/b;

    .line 11
    invoke-interface {p1}, Le/a/n5/b;->R()Le/a/n5/c;

    move-result-object p1

    invoke-interface {p1}, Le/a/n5/c;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0a0d1c

    .line 12
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f12045a

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const p1, 0x7f0a02de

    .line 14
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {p2, p3}, Le/a/p5/s0/g;->M0([Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/permission/RequiredPermissionsActivity;->b:Le/a/h5/w;

    invoke-interface {v0}, Le/a/h5/w;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/permission/RequiredPermissionsActivity;->b:Le/a/h5/w;

    invoke-interface {v0}, Le/a/h5/w;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/permission/RequiredPermissionsActivity;->H8()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Le/d/c/a/a;->m1()Le/a/q2/a;

    move-result-object v0

    const-string v1, "requiredPermission"

    invoke-static {v1}, Le/a/q2/y0/a/a;->b(Ljava/lang/String;)Le/a/q2/y0/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    :goto_0
    return-void
.end method

.method public final varargs pa(Ljava/util/List;[Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/permission/RequiredPermissionsActivity;->a:Le/a/p5/a0;

    invoke-interface {v0, p2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 3
    invoke-static {p0, v3}, Le/a/p5/s0/g;->w0(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    new-instance p1, Le/a/z1;

    const p2, 0x7f120458

    invoke-direct {p1, p0, p2}, Le/a/z1;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/z1;->cB(Landroidx/fragment/app/FragmentManager;)V

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
