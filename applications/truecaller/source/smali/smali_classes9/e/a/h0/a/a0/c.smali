.class public Le/a/h0/a/a0/c;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;


# instance fields
.field public a:Le/a/h0/a/a0/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Landroid/widget/Spinner;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public N(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/a/a0/c;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public O7()Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;
    .locals 2

    .line 1
    invoke-static {}, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;->values()[Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

    move-result-object v0

    iget-object v1, p0, Le/a/h0/a/a0/c;->b:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public R1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/a/a0/c;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Le/a/h0/a/a0/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Le/a/h0/a/a0/d;

    invoke-direct {v0}, Le/a/h0/a/a0/d;-><init>()V

    .line 5
    const-class v1, Le/a/j2;

    invoke-static {p1, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    invoke-interface {p1}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 7
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Le/a/j2;->I5()Le/a/r2/f;

    move-result-object v3

    .line 9
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Le/a/h0/a/a0/f;

    invoke-interface {v1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Le/a/h0/a/a0/f;-><init>(Le/a/r2/j;Le/a/r2/f;)V

    .line 12
    iput-object v0, p0, Le/a/h0/a/a0/c;->a:Le/a/h0/a/a0/e;

    .line 13
    invoke-interface {p1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object p1

    .line 14
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x1

    .line 1
    invoke-static {p1, p3}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0188

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/a/a0/c;->a:Le/a/h0/a/a0/e;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p2

    check-cast p2, Ln3/b/a/h;

    const v0, 0x7f0a1270

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080358

    const v3, 0x7f040729

    invoke-static {v1, v2, v3}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p2, v0}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 6
    invoke-virtual {p2}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p2

    if-eqz p2, :cond_0

    const v0, 0x7f12002d

    .line 7
    invoke-virtual {p2, v0}, Ln3/b/a/a;->x(I)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p2, v0}, Ln3/b/a/a;->n(Z)V

    :cond_0
    const p2, 0x7f0a1322

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Le/a/h0/a/a0/c;->b:Landroid/widget/Spinner;

    const p2, 0x7f0a0c70

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Le/a/h0/a/a0/c;->c:Landroid/widget/EditText;

    const p2, 0x7f0a022d

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le/a/h0/a/a0/c;->d:Landroid/view/View;

    .line 12
    iget-object p1, p0, Le/a/h0/a/a0/c;->b:Landroid/widget/Spinner;

    new-instance p2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1090009

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f030000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 15
    iget-object p1, p0, Le/a/h0/a/a0/c;->a:Le/a/h0/a/a0/e;

    invoke-virtual {p1, p0}, Le/a/u2/a/b;->Y0(Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Le/a/h0/a/a0/c;->d:Landroid/view/View;

    new-instance p2, Le/a/h0/a/a0/a;

    invoke-direct {p2, p0}, Le/a/h0/a/a0/a;-><init>(Le/a/h0/a/a0/c;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Le/a/h0/a/a0/c;->c:Landroid/widget/EditText;

    new-instance p2, Le/a/h0/a/a0/c$a;

    invoke-direct {p2, p0}, Le/a/h0/a/a0/c$a;-><init>(Le/a/h0/a/a0/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public t2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/a/a0/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120031

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
