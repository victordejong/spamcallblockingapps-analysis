.class public Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/settings/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a;
    }
.end annotation


# instance fields
.field public l:Lcom/hiya/stingray/ui/local/settings/d;

.field public m:Lcom/hiya/stingray/ui/login/o;

.field public n:Lcom/hiya/stingray/manager/e1;

.field public o:Lcom/hiya/stingray/manager/y2;

.field public p:Lcom/hiya/stingray/manager/u3;

.field public q:Lcom/hiya/stingray/manager/g1;

.field public r:Lcom/hiya/stingray/manager/s1;

.field public s:Lcom/hiya/stingray/manager/s2;

.field public t:Lcom/hiya/stingray/manager/j2;

.field private final u:Ljava/lang/String;

.field private v:[Ljava/lang/String;

.field private w:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    const-string v0, "call_settings"

    .line 2
    iput-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->u:Ljava/lang/String;

    return-void
.end method

.method private final B1(ILandroid/widget/TextView;Z[Ljava/lang/String;ZLjava/lang/String;Lkotlin/w/b/l;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/TextView;",
            "Z[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    xor-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    move-object v10, p0

    if-eqz p5, :cond_1

    .line 1
    iget-object v3, v10, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->p:Lcom/hiya/stingray/manager/u3;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "premiumManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v0

    .line 3
    :goto_1
    new-instance v2, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a;

    invoke-static/range {p4 .. p4}, Lkotlin/s/e;->C([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    new-instance v12, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;

    move-object v3, v12

    move-object v4, p0

    move-object/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    invoke-direct/range {v3 .. v9}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$u;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;ZLjava/lang/String;Landroid/widget/TextView;[Ljava/lang/String;Lkotlin/w/b/l;)V

    move-object p2, v2

    move-object/from16 p3, p0

    move-object/from16 p4, v11

    move/from16 p5, v1

    move-object/from16 p6, v0

    move-object/from16 p7, v12

    invoke-direct/range {p2 .. p7}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;Ljava/util/List;ILjava/util/List;Lkotlin/w/b/l;)V

    .line 4
    new-instance v0, Landroidx/appcompat/app/b$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    move v3, p1

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/b$a;->p(I)Landroidx/appcompat/app/b$a;

    .line 6
    sget-object v3, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$v;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$v;

    invoke-virtual {v0, v2, v1, v3}, Landroidx/appcompat/app/b$a;->o(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object v0

    const-string v1, "AlertDialog.Builder(requ\u2026                .create()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a;->c(Landroidx/appcompat/app/b;)V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic C1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;ILandroid/widget/TextView;Z[Ljava/lang/String;ZLjava/lang/String;Lkotlin/w/b/l;ILjava/lang/Object;)V
    .locals 9

    if-nez p9, :cond_2

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p6

    :goto_1
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v8, p7

    .line 1
    invoke-direct/range {v1 .. v8}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->B1(ILandroid/widget/TextView;Z[Ljava/lang/String;ZLjava/lang/String;Lkotlin/w/b/l;)V

    return-void

    .line 2
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: showDialog"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->l1()V

    return-void
.end method

.method public static final synthetic h1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->n1()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->v:[Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "callerIDDoNothingChoiceArray"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic j1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->u1()V

    return-void
.end method

.method public static final synthetic k1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;ILandroid/widget/TextView;Z[Ljava/lang/String;ZLjava/lang/String;Lkotlin/w/b/l;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->B1(ILandroid/widget/TextView;Z[Ljava/lang/String;ZLjava/lang/String;Lkotlin/w/b/l;)V

    return-void
.end method

.method private final l1()V
    .locals 4

    .line 1
    sget v0, Lcom/hiya/stingray/o;->S:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "callerIdStyleDesc"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->t:Lcom/hiya/stingray/manager/j2;

    const/4 v2, 0x0

    const-string v3, "defaultDialerManager"

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/j2;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f110079

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f11007a

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget v0, Lcom/hiya/stingray/o;->t3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "savedContactsButton"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->t:Lcom/hiya/stingray/manager/j2;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/j2;->a()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 6
    sget v0, Lcom/hiya/stingray/o;->I1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "incomingButton"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->t:Lcom/hiya/stingray/manager/j2;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/j2;->a()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 7
    sget v0, Lcom/hiya/stingray/o;->E2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "outgoingButton"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->t:Lcom/hiya/stingray/manager/j2;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/j2;->a()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 8
    sget v0, Lcom/hiya/stingray/o;->F2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "outgoingCallsHeader"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->t:Lcom/hiya/stingray/manager/j2;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/j2;->a()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    return-void

    :cond_1
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_2
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_3
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_4
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_5
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final n1()[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Integer;

    const v2, 0x7f110334

    .line 1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f11008a

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 4
    aget-object v5, v1, v4

    .line 5
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 6
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .line 7
    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final u1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->r1()Lcom/hiya/stingray/ui/login/o;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    const-string v1, "savedContactsDsc"

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/hiya/stingray/o;->u3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$b;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$b;-><init>(Lcom/hiya/stingray/ui/local/settings/d;)V

    invoke-direct {p0, v2, v1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->x1(Landroid/widget/TextView;Lkotlin/w/b/l;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060189

    invoke-static {v1, v2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/hiya/stingray/o;->u3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f1100c8

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060177

    invoke-static {v1, v2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private final v1(Landroid/widget/TextView;Lkotlin/w/b/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lkotlin/w/b/l<",
            "-",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private final w1(Landroid/widget/TextView;Lkotlin/w/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lkotlin/w/b/l<",
            "-",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f110334

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.settings_call_block_only)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f11008a

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.call_settings_show_warning)"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->v1(Landroid/widget/TextView;Lkotlin/w/b/l;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final x1(Landroid/widget/TextView;Lkotlin/w/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lkotlin/w/b/l<",
            "-",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f110089

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.call_settings_show_id)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f11007c

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.call_settings_do_nothing)"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->v1(Landroid/widget/TextView;Lkotlin/w/b/l;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final y1()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->w3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "scamDsc"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$d;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$d;-><init>(Lcom/hiya/stingray/ui/local/settings/d;)V

    invoke-direct {p0, v0, v1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->w1(Landroid/widget/TextView;Lkotlin/w/b/l;)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->a4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "spamDsc"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$e;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$e;-><init>(Lcom/hiya/stingray/ui/local/settings/d;)V

    invoke-direct {p0, v0, v1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->w1(Landroid/widget/TextView;Lkotlin/w/b/l;)V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->X2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "privateCallsDsc"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$f;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$f;-><init>(Lcom/hiya/stingray/ui/local/settings/d;)V

    invoke-direct {p0, v0, v1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->w1(Landroid/widget/TextView;Lkotlin/w/b/l;)V

    return-void
.end method


# virtual methods
.method public final A1()V
    .locals 7

    .line 1
    sget v0, Lcom/hiya/stingray/o;->z4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    const-string v0, "toolBar"

    invoke-static {v1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v2

    const-string v0, "requireActivity()"

    invoke-static {v2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110073

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(R.string.call_setting)"

    invoke-static {v3, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/hiya/stingray/util/e0;->s(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void
.end method

.method public D1(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "permissionPrompt"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p1, p2}, Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;->t1(ZLjava/lang/String;[Ljava/lang/String;)Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object p2

    const-string v0, "requireActivity()"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/d;->p1(Landroidx/fragment/app/n;Ljava/lang/String;)V

    return-void
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->w:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->u:Ljava/lang/String;

    return-object v0
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->w:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->w:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->w:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->w:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public l0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->z1()V

    return-void
.end method

.method public final m1()Lcom/hiya/stingray/manager/e1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->n:Lcom/hiya/stingray/manager/e1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analyticsManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o1()Lcom/hiya/stingray/ui/local/settings/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->l:Lcom/hiya/stingray/ui/local/settings/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "callSettingsPresenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1688

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->t:Lcom/hiya/stingray/manager/j2;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/hiya/stingray/manager/j2;->f(Z)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->q:Lcom/hiya/stingray/manager/g1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/g1;->j()V

    goto :goto_0

    :cond_1
    const-string p1, "userFlagsManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string p1, "defaultDialerManager"

    .line 4
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->l1()V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->v0(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Integer;

    const v1, 0x7f110089

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f11007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 6
    aget-object v4, v0, v3

    .line 7
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 8
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    .line 9
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->v:[Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0074

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->Z0()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1775

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->r1()Lcom/hiya/stingray/ui/login/o;

    move-result-object v1

    new-instance v6, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c;

    invoke-direct {v6, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/hiya/stingray/ui/login/o;->e(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[ILcom/hiya/stingray/ui/login/o$a;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/settings/d;->p()V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->u1()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->A1()V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->z1()V

    .line 4
    new-instance v1, Lcom/hiya/stingray/ui/premium/t;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string p1, "requireContext()"

    invoke-static {v2, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/hiya/stingray/o;->A3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/ScrollView;

    sget p1, Lcom/hiya/stingray/o;->T3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x12

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/hiya/stingray/ui/premium/t;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ScrollView;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;ILkotlin/w/c/g;)V

    return-void
.end method

.method public final p1()Lcom/hiya/stingray/manager/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->t:Lcom/hiya/stingray/manager/j2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "defaultDialerManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final q1()Lcom/hiya/stingray/manager/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o:Lcom/hiya/stingray/manager/y2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "lookupManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public r1()Lcom/hiya/stingray/ui/login/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->m:Lcom/hiya/stingray/ui/login/o;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "permissionHandler"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final s1()Lcom/hiya/stingray/manager/u3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->p:Lcom/hiya/stingray/manager/u3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "premiumManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final t1()Lcom/hiya/stingray/manager/g1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->q:Lcom/hiya/stingray/manager/g1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "userFlagsManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public z1()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->y1()V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->J1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "incomingDsc"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$l;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$l;-><init>(Lcom/hiya/stingray/ui/local/settings/d;)V

    invoke-direct {p0, v0, v1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->x1(Landroid/widget/TextView;Lkotlin/w/b/l;)V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->G2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "outgoingDsc"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$m;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$m;-><init>(Lcom/hiya/stingray/ui/local/settings/d;)V

    invoke-direct {p0, v0, v1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->x1(Landroid/widget/TextView;Lkotlin/w/b/l;)V

    .line 4
    sget v0, Lcom/hiya/stingray/o;->y3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "screenedCallsDsc"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$n;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$n;-><init>(Lcom/hiya/stingray/ui/local/settings/d;)V

    invoke-direct {p0, v0, v1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->x1(Landroid/widget/TextView;Lkotlin/w/b/l;)V

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->u1()V

    .line 6
    sget v0, Lcom/hiya/stingray/o;->v3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$o;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$o;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget v0, Lcom/hiya/stingray/o;->Y3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$p;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$p;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget v0, Lcom/hiya/stingray/o;->W2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$q;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$q;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget v0, Lcom/hiya/stingray/o;->t3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    sget v0, Lcom/hiya/stingray/o;->I1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$s;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$s;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget v0, Lcom/hiya/stingray/o;->E2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$t;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$t;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/settings/d;->z()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const-string v3, "screenedCallsButton"

    if-eqz v0, :cond_0

    .line 13
    sget v0, Lcom/hiya/stingray/o;->x3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$g;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$g;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 15
    :cond_0
    sget v0, Lcom/hiya/stingray/o;->x3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    :goto_0
    sget v0, Lcom/hiya/stingray/o;->k2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget-object v3, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$h;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$h;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget v0, Lcom/hiya/stingray/o;->p0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$i;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$i;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    sget v0, Lcom/hiya/stingray/o;->q0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->t:Lcom/hiya/stingray/manager/j2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/j2;->d()Z

    move-result v0

    const-string v3, "callerIdStyleButton"

    if-eqz v0, :cond_1

    .line 20
    sget v0, Lcom/hiya/stingray/o;->R:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->l1()V

    .line 22
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 23
    :cond_1
    sget v0, Lcom/hiya/stingray/o;->R:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    const-string v0, "defaultDialerManager"

    .line 24
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
