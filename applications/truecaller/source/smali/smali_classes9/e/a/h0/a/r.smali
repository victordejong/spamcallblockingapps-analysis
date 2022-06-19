.class public Le/a/h0/a/r;
.super Le/a/h0/g;
.source "SourceFile"

# interfaces
.implements Le/a/h0/a/u;
.implements Le/a/h0/y/f$b;
.implements Le/a/b0/a/l;
.implements Le/a/e/n1;


# static fields
.field public static final synthetic t:I


# instance fields
.field public b:Le/a/h0/a/s;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/l/a2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:I

.field public e:Lcom/truecaller/ads/ui/AdsSwitchView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Lcom/truecaller/ui/components/ComboBase;

.field public j:Landroid/view/View;

.field public k:Le/a/h0/a/z;

.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Le/a/h0/a/z;

.field public n:Landroid/view/View;

.field public o:Landroidx/recyclerview/widget/RecyclerView;

.field public p:Landroid/view/View;

.field public q:Le/a/h0/a/z;

.field public r:Landroid/view/View;

.field public s:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/h0/g;-><init>()V

    return-void
.end method


# virtual methods
.method public Ca(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/a/r;->j:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public Cc(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public Dq(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h0/a/r;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Le/a/h0/a/r;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public Ee(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/h0/a/w;",
            ">;",
            "Ljava/util/List<",
            "Le/a/h0/a/w;",
            ">;",
            "Ljava/util/List<",
            "Le/a/h0/a/w;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h0/a/r;->k:Le/a/h0/a/z;

    invoke-virtual {v0, p1}, Le/a/h0/a/z;->g(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Le/a/h0/a/r;->m:Le/a/h0/a/z;

    invoke-virtual {p1, p2}, Le/a/h0/a/z;->g(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Le/a/h0/a/r;->q:Le/a/h0/a/z;

    invoke-virtual {p1, p3}, Le/a/h0/a/z;->g(Ljava/util/List;)V

    return-void
.end method

.method public Ei()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/truecaller/filters/blockedlist/BlockedListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public Gc()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/permission/RequiredPermissionsActivity;->qa(Landroid/content/Context;)V

    return-void
.end method

.method public Ki(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "forceUpdate"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    new-instance p1, Le/a/h0/y/f;

    invoke-direct {p1}, Le/a/h0/y/f;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    iput-object p0, p1, Le/a/h0/y/f;->n:Le/a/h0/y/f$b;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public LA()Le/a/b0/a/n;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public R3(Le/a/i/f0/m/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/a/r;->e:Lcom/truecaller/ads/ui/AdsSwitchView;

    sget-object v1, Lcom/truecaller/ads/AdLayoutTypeX;->SMALL:Lcom/truecaller/ads/AdLayoutTypeX;

    invoke-virtual {v0, p1, v1}, Lcom/truecaller/ads/ui/AdsSwitchView;->d(Le/a/i/f0/m/d;Le/a/i/g;)V

    .line 2
    iget-object p1, p0, Le/a/h0/a/r;->e:Lcom/truecaller/ads/ui/AdsSwitchView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public Rl(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f0406a2

    goto :goto_0

    :cond_0
    const p1, 0x7f04063c

    .line 2
    :goto_0
    invoke-static {v0, p1}, Le/a/p5/s0/g;->d0(Landroid/content/Context;I)I

    move-result p1

    .line 3
    iget-object v0, p0, Le/a/h0/a/r;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public Vl(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/a/r;->p:Landroid/view/View;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p1, v1}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    return-void
.end method

.method public Wy()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bx(Z)V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/a/r;->b:Le/a/h0/a/s;

    invoke-virtual {v0}, Le/a/h0/a/s;->j()V

    return-void
.end method

.method public j5(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    const-string v0, "phoneNumber"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/a/h0/a/o;

    invoke-direct {v0}, Le/a/h0/a/o;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "matching_digits"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    const-string p1, "phone_number"

    .line 5
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public kz()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;->ADVANCED:Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    invoke-static {v0, v1}, Lcom/truecaller/filters/blockedevents/BlockDialogActivity;->pa(Landroid/content/Context;Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;)V

    return-void
.end method

.method public lb()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ln3/b/a/g$a;

    invoke-direct {v1, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120061

    .line 3
    invoke-virtual {v1, v0}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    const v0, 0x7f12005e

    .line 4
    invoke-virtual {v1, v0}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    const v0, 0x7f1206fb

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v0, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v0, 0x7f120060

    new-instance v2, Le/a/h0/a/l;

    invoke-direct {v2, p0}, Le/a/h0/a/l;-><init>(Le/a/h0/a/r;)V

    .line 6
    invoke-virtual {v1, v0, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const/4 v0, 0x0

    .line 7
    iget-object v2, v1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean v0, v2, Landroidx/appcompat/app/AlertController$b;->m:Z

    .line 8
    invoke-virtual {v1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public mA()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ln3/b/a/g$a;

    invoke-direct {v1, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120455

    .line 3
    invoke-virtual {v1, v0}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    const v0, 0x7f12044e

    .line 4
    invoke-virtual {v1, v0}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    const v0, 0x7f120445

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v0, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v0, 0x7f120456

    new-instance v2, Le/a/h0/a/h;

    invoke-direct {v2, p0}, Le/a/h0/a/h;-><init>(Le/a/h0/a/r;)V

    .line 6
    invoke-virtual {v1, v0, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 7
    invoke-virtual {v1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public o4()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    .line 2
    new-instance v1, Ln3/b/a/g$a;

    const v2, 0x7f130219

    invoke-direct {v1, v0, v2}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0d0120

    .line 3
    invoke-virtual {v1, v0}, Ln3/b/a/g$a;->o(I)Ln3/b/a/g$a;

    .line 4
    invoke-virtual {v1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object v0

    const v1, 0x7f0a0279

    .line 5
    invoke-virtual {v0, v1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Le/a/h0/a/c;

    invoke-direct {v2, v0}, Le/a/h0/a/c;-><init>(Ln3/b/a/g;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v2, Le/a/j2;

    invoke-static {v1, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    invoke-interface {v1}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v4

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 6
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-interface {v1}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v5

    .line 8
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-interface {v1}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v6

    .line 10
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-interface {v1}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object v7

    .line 12
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-interface {v1}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v8

    .line 14
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v9

    .line 16
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    invoke-interface {v1}, Le/a/j2;->h7()Le/a/i/f0/d;

    move-result-object v10

    .line 18
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    invoke-interface {v1}, Le/a/j2;->u5()Le/a/z4/a;

    move-result-object v3

    .line 20
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    invoke-interface {v1}, Le/a/j2;->c4()Le/a/i/f0/j/c;

    move-result-object v11

    .line 22
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v12

    .line 24
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v13, "adsFeatureUnifiedAdsBlock"

    .line 25
    invoke-interface {v3, v13}, Le/a/z4/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v13, "blockView"

    const-string v14, "BLOCK"

    const/4 v15, 0x0

    if-eqz v3, :cond_0

    const-string v3, "blockUnifiedAdUnitId"

    .line 26
    invoke-interface {v11, v3}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {v3, v15, v14, v12}, Le/a/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/u3/g;)Le/a/i/s$a;

    move-result-object v3

    .line 28
    iput-object v13, v3, Le/a/i/s$a;->i:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v12, v11, [Lcom/google/android/gms/ads/AdSize;

    .line 29
    sget-object v13, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    const/16 v16, 0x0

    aput-object v13, v12, v16

    .line 30
    invoke-virtual {v3, v12}, Le/a/i/s$a;->e([Lcom/google/android/gms/ads/AdSize;)Le/a/i/s$a;

    new-array v12, v11, [Lcom/truecaller/ads/CustomTemplate;

    sget-object v13, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v13, v12, v16

    .line 31
    invoke-virtual {v3, v12}, Le/a/i/s$a;->f([Lcom/truecaller/ads/CustomTemplate;)Le/a/i/s$a;

    .line 32
    new-instance v12, Le/a/i/s;

    invoke-direct {v12, v3}, Le/a/i/s;-><init>(Le/a/i/s$a;)V

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    const-string v3, "blockAdUnitId"

    .line 33
    invoke-interface {v11, v3}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v3, v15, v14, v12}, Le/a/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/u3/g;)Le/a/i/s$a;

    move-result-object v3

    .line 35
    iput-object v13, v3, Le/a/i/s$a;->i:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v12, v11, [Lcom/truecaller/ads/CustomTemplate;

    .line 36
    sget-object v13, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v13, v12, v16

    .line 37
    invoke-virtual {v3, v12}, Le/a/i/s$a;->f([Lcom/truecaller/ads/CustomTemplate;)Le/a/i/s$a;

    .line 38
    new-instance v12, Le/a/i/s;

    invoke-direct {v12, v3}, Le/a/i/s;-><init>(Le/a/i/s$a;)V

    .line 39
    :goto_0
    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v13

    .line 40
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    invoke-interface {v1}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v14

    .line 42
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v15

    .line 44
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    invoke-interface {v1}, Le/a/j2;->D()Ln3/m0/y;

    move-result-object v3

    .line 46
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    invoke-interface {v1}, Le/a/j2;->G7()Le/a/h0/p;

    move-result-object v0

    .line 48
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 p1, v0

    .line 49
    invoke-interface {v1}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v0

    .line 50
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 51
    invoke-interface {v1}, Le/a/j2;->x5()Le/a/h5/m;

    move-result-object v0

    .line 52
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v19, v2

    .line 53
    new-instance v2, Le/a/h0/a/t;

    move-object/from16 v18, v3

    move/from16 v20, v11

    move-object v3, v2

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v18

    move-object/from16 v16, p1

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Le/a/h0/a/t;-><init>(Le/a/h0/m;Lcom/truecaller/settings/CallingSettings;Le/a/a/i0;Le/a/h5/w;Le/a/p5/a0;Le/a/q2/a;Le/a/i/f0/d;Le/a/i/s;Le/a/p5/c0;Le/a/l/p2/v0;Le/a/u3/g;Ln3/m0/y;Le/a/h0/p;Le/a/p5/g;Le/a/h5/m;)V

    move-object/from16 v0, p0

    .line 54
    iput-object v2, v0, Le/a/h0/a/r;->b:Le/a/h0/a/s;

    .line 55
    invoke-interface {v1}, Le/a/j2;->C3()Le/a/l/a2;

    move-result-object v2

    move-object/from16 v3, v19

    .line 56
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iput-object v2, v0, Le/a/h0/a/r;->c:Le/a/l/a2;

    .line 58
    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v1

    .line 59
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "TOOLBAR_TEXT"

    const/4 v3, 0x0

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Le/a/h0/a/r;->d:I

    .line 64
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 65
    :cond_1
    new-instance v1, Le/a/h0/a/z;

    iget-object v2, v0, Le/a/h0/a/r;->b:Le/a/h0/a/s;

    invoke-direct {v1, v2}, Le/a/h0/a/z;-><init>(Le/a/h0/a/s;)V

    iput-object v1, v0, Le/a/h0/a/r;->m:Le/a/h0/a/z;

    .line 66
    new-instance v1, Le/a/h0/a/z;

    iget-object v2, v0, Le/a/h0/a/r;->b:Le/a/h0/a/s;

    invoke-direct {v1, v2}, Le/a/h0/a/z;-><init>(Le/a/h0/a/s;)V

    iput-object v1, v0, Le/a/h0/a/r;->q:Le/a/h0/a/z;

    .line 67
    new-instance v1, Le/a/h0/a/z;

    iget-object v2, v0, Le/a/h0/a/r;->b:Le/a/h0/a/s;

    invoke-direct {v1, v2}, Le/a/h0/a/z;-><init>(Le/a/h0/a/s;)V

    iput-object v1, v0, Le/a/h0/a/r;->k:Le/a/h0/a/z;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x1

    .line 1
    invoke-static {p1, p3}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d018c

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Le/a/h0/a/r;->b:Le/a/h0/a/s;

    invoke-virtual {v0}, Le/a/u2/a/b;->c()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/h0/a/r;->b:Le/a/h0/a/s;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Le/a/h0/i;

    invoke-interface {p1}, Le/a/h0/i;->d0()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Le/a/h0/a/r;->b:Le/a/h0/a/s;

    invoke-virtual {v0}, Le/a/h0/h;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Le/a/h0/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0476

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/ads/ui/AdsSwitchView;

    iput-object p2, p0, Le/a/h0/a/r;->e:Lcom/truecaller/ads/ui/AdsSwitchView;

    .line 3
    sget p2, Le/a/o5/j0;->b:I

    const p2, 0x7f0a0223

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 5
    check-cast p2, Lcom/truecaller/ui/components/ComboBase;

    .line 6
    iput-object p2, p0, Le/a/h0/a/r;->i:Lcom/truecaller/ui/components/ComboBase;

    const p2, 0x7f0a0324

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/h0/a/r;->j:Landroid/view/View;

    const p2, 0x7f0a107a

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Le/a/h0/a/r;->f:Landroid/widget/ImageView;

    const p2, 0x7f0a0b1a

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Le/a/h0/a/r;->l:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a0399

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/h0/a/r;->n:Landroid/view/View;

    const p2, 0x7f0a0b26

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Le/a/h0/a/r;->o:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a02db

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/h0/a/r;->p:Landroid/view/View;

    const p2, 0x7f0a0398

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/h0/a/r;->r:Landroid/view/View;

    const p2, 0x7f0a0b25

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Le/a/h0/a/r;->s:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a1334

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/a/h0/a/r;->g:Landroid/widget/TextView;

    const p2, 0x7f0a01af

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/a/h0/a/r;->h:Landroid/widget/TextView;

    .line 17
    iget-object p2, p0, Le/a/h0/a/r;->g:Landroid/widget/TextView;

    new-instance v0, Le/a/h0/a/d;

    invoke-direct {v0, p0}, Le/a/h0/a/d;-><init>(Le/a/h0/a/r;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0405a1

    invoke-static {p2, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p2

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080667

    invoke-static {v0, v1, p2}, Le/a/b0/q/o;->g(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 20
    iget-object v0, p0, Le/a/h0/a/r;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v0, p0, Le/a/h0/a/r;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0a0225

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Le/a/h0/a/g;

    invoke-direct {v0, p0}, Le/a/h0/a/g;-><init>(Le/a/h0/a/r;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0224

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Le/a/h0/a/k;

    invoke-direct {v0, p0}, Le/a/h0/a/k;-><init>(Le/a/h0/a/r;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0222

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Le/a/h0/a/f;

    invoke-direct {v0, p0}, Le/a/h0/a/f;-><init>(Le/a/h0/a/r;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0226

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Le/a/h0/a/i;

    invoke-direct {v0, p0}, Le/a/h0/a/i;-><init>(Le/a/h0/a/r;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0b6d

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Le/a/h0/a/b;

    invoke-direct {v0, p0}, Le/a/h0/a/b;-><init>(Le/a/h0/a/r;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0322

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Le/a/h0/a/n;

    invoke-direct {p2, p0}, Le/a/h0/a/n;-><init>(Le/a/h0/a/r;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    instance-of p1, p1, Lcom/truecaller/ui/TruecallerInit;

    xor-int/2addr p1, p2

    if-eqz p1, :cond_2

    .line 30
    iget p1, p0, Le/a/h0/a/r;->d:I

    if-nez p1, :cond_1

    const p1, 0x7f12007a

    :cond_1
    invoke-virtual {p0, p1}, Le/a/h0/g;->OA(I)V

    goto :goto_0

    .line 31
    :cond_2
    iget-object p1, p0, Le/a/h0/g;->a:Landroidx/appcompat/widget/Toolbar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 32
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 33
    :cond_3
    iget-object v0, p0, Le/a/h0/a/r;->o:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 34
    iget-object v0, p0, Le/a/h0/a/r;->o:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 35
    iget-object v0, p0, Le/a/h0/a/r;->o:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Le/a/h0/a/r;->m:Le/a/h0/a/z;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 36
    iget-object v0, p0, Le/a/h0/a/r;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 37
    iget-object v0, p0, Le/a/h0/a/r;->s:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 38
    iget-object v0, p0, Le/a/h0/a/r;->s:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Le/a/h0/a/r;->q:Le/a/h0/a/z;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 39
    iget-object v0, p0, Le/a/h0/a/r;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 40
    iget-object v0, p0, Le/a/h0/a/r;->l:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 41
    iget-object p1, p0, Le/a/h0/a/r;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Le/a/h0/a/r;->k:Le/a/h0/a/z;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 42
    :goto_1
    iget-object p1, p0, Le/a/h0/a/r;->p:Landroid/view/View;

    new-instance p2, Le/a/h0/a/j;

    invoke-direct {p2, p0}, Le/a/h0/a/j;-><init>(Le/a/h0/a/r;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p1, p0, Le/a/h0/a/r;->b:Le/a/h0/a/s;

    invoke-virtual {p1, p0}, Le/a/u2/a/b;->Y0(Ljava/lang/Object;)V

    return-void
.end method

.method public po(Lcom/truecaller/premium/PremiumLaunchContext;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h0/a/r;->c:Le/a/l/a2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v1

    const-string v2, "premiumAdvancedBlocking"

    invoke-interface {v0, v1, p1, v2}, Le/a/l/a2;->a(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;)V

    return-void
.end method

.method public s6()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;->NAME:Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    invoke-static {v0, v1}, Lcom/truecaller/filters/blockedevents/BlockDialogActivity;->pa(Landroid/content/Context;Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;)V

    return-void
.end method

.method public tj()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;->NUMBER:Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    invoke-static {v0, v1}, Lcom/truecaller/filters/blockedevents/BlockDialogActivity;->pa(Landroid/content/Context;Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;)V

    return-void
.end method

.method public ue()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ln3/b/a/g$a;

    invoke-direct {v1, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120061

    .line 3
    invoke-virtual {v1, v0}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    const v0, 0x7f12005f

    .line 4
    invoke-virtual {v1, v0}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    const v0, 0x7f1206fb

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v0, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v0, 0x7f120060

    new-instance v2, Le/a/h0/a/e;

    invoke-direct {v2, p0}, Le/a/h0/a/e;-><init>(Le/a/h0/a/r;)V

    .line 6
    invoke-virtual {v1, v0, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const/4 v0, 0x0

    .line 7
    iget-object v2, v1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean v0, v2, Landroidx/appcompat/app/AlertController$b;->m:Z

    .line 8
    invoke-virtual {v1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public xu(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/k;

    .line 4
    new-instance v4, Le/a/e/c2/i0;

    .line 5
    iget-object v5, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 6
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    .line 7
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 8
    invoke-direct {v4, v1, v5, v6, v3}, Le/a/e/c2/i0;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Le/a/h0/a/r;->i:Lcom/truecaller/ui/components/ComboBase;

    const v1, 0x7f0d026d

    invoke-virtual {p1, v1}, Lcom/truecaller/ui/components/ComboBase;->setListItemLayoutRes(I)V

    .line 10
    iget-object p1, p0, Le/a/h0/a/r;->i:Lcom/truecaller/ui/components/ComboBase;

    invoke-virtual {p1, v0}, Lcom/truecaller/ui/components/ComboBase;->setData(Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Le/a/h0/a/r;->i:Lcom/truecaller/ui/components/ComboBase;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/e/c2/i0;

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/components/ComboBase;->setSelection(Le/a/e/c2/i0;)V

    .line 12
    iget-object p1, p0, Le/a/h0/a/r;->i:Lcom/truecaller/ui/components/ComboBase;

    new-instance p2, Le/a/h0/a/m;

    invoke-direct {p2, p0}, Le/a/h0/a/m;-><init>(Le/a/h0/a/r;)V

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/components/ComboBase;->a(Lcom/truecaller/ui/components/ComboBase$a;)V

    return-void
.end method

.method public y0()V
    .locals 0

    return-void
.end method

.method public zh(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/a/r;->n:Landroid/view/View;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p1, v1}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 3
    iget-object p1, p0, Le/a/h0/a/r;->r:Landroid/view/View;

    .line 4
    invoke-static {p1, p2, v1}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    return-void
.end method
