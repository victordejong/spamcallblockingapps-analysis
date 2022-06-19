.class public final Lcom/hiya/stingray/ui/login/verification/j;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/login/verification/j$a;
    }
.end annotation


# static fields
.field public static final t:Lcom/hiya/stingray/ui/login/verification/j$a;


# instance fields
.field private l:Lcom/hiya/stingray/ui/login/verification/a;

.field private m:Lcom/hiya/stingray/ui/login/verification/a$a;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

.field public q:Ljava/lang/String;

.field public r:Lcom/hiya/stingray/ui/login/verification/i;

.field private s:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/ui/login/verification/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/login/verification/j$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/login/verification/j;->t:Lcom/hiya/stingray/ui/login/verification/j$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j;->o:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/login/verification/j;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/verification/j;->p1(Z)V

    return-void
.end method

.method public static final synthetic h1(Lcom/hiya/stingray/ui/login/verification/j;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/login/verification/j;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic i1(Lcom/hiya/stingray/ui/login/verification/j;)Lcom/hiya/stingray/ui/login/verification/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/login/verification/j;->l:Lcom/hiya/stingray/ui/login/verification/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "verificationViewModel"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic j1(Lcom/hiya/stingray/ui/login/verification/j;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hiya/stingray/ui/login/verification/j;->n:Z

    return p0
.end method

.method public static final synthetic k1(Lcom/hiya/stingray/ui/login/verification/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/j;->r1()V

    return-void
.end method

.method public static final synthetic l1(Lcom/hiya/stingray/ui/login/verification/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/j;->s1()V

    return-void
.end method

.method public static final synthetic m1(Lcom/hiya/stingray/ui/login/verification/j;Lcom/hiya/stingray/ui/login/verification/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j;->m:Lcom/hiya/stingray/ui/login/verification/a$a;

    return-void
.end method

.method public static final synthetic n1(Lcom/hiya/stingray/ui/login/verification/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/j;->w1()V

    return-void
.end method

.method public static final synthetic o1(Lcom/hiya/stingray/ui/login/verification/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/j;->x1()V

    return-void
.end method

.method private final p1(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->b:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const p1, 0x7f0801eb

    goto :goto_0

    :cond_1
    const p1, 0x7f0801ec

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method

.method private final r1()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->V0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "errorTv"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f11026d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private final s1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/login/verification/j;->n:Z

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/hiya/stingray/o;->V0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "errorTv"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f11026c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private final t1()V
    .locals 7

    .line 1
    sget v0, Lcom/hiya/stingray/o;->V0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "errorTv"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->i0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "countryCodeButton"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->s0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f110280

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    sget v0, Lcom/hiya/stingray/o;->b:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f110284

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 5
    sget v0, Lcom/hiya/stingray/o;->Y0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "explanation"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 6
    sget v0, Lcom/hiya/stingray/o;->p3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v2, "resendCodeButton"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    sget v0, Lcom/hiya/stingray/o;->O0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "editText"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v3, 0x7f11026a

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/hiya/stingray/util/e0;->y(Landroid/app/Activity;Landroid/view/View;)V

    .line 12
    sget v0, Lcom/hiya/stingray/o;->z4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    const-string v0, "toolBar"

    invoke-static {v1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "activity!!"

    invoke-static {v2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110285

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(R.string.phone_verify_your_number)"

    invoke-static {v3, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/hiya/stingray/util/e0;->s(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final u1()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    sget v0, Lcom/hiya/stingray/o;->V0:I

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "errorTv"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->s0:I

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f110281

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->b:I

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, 0x7f110268

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 4
    sget v0, Lcom/hiya/stingray/o;->p3:I

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v3, "resendCodeButton"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    sget v0, Lcom/hiya/stingray/o;->O0:I

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "editText"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x800003

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v4, 0x7f11026b

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 8
    sget v2, Lcom/hiya/stingray/o;->Y0:I

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v4, "explanation"

    invoke-static {v2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/hiya/stingray/util/p;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "devicePhoneNumber"

    .line 10
    invoke-static {v2, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x0

    if-eqz v5, :cond_3

    .line 11
    :try_start_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/h;->t()Lcom/google/i18n/phonenumbers/h;

    move-result-object v5

    iget-object v8, v1, Lcom/hiya/stingray/ui/login/verification/j;->q:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "simIso"

    if-eqz v8, :cond_2

    :try_start_1
    invoke-virtual {v5, v2, v8}, Lcom/google/i18n/phonenumbers/h;->W(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;

    move-result-object v5

    const-string v8, "parsedPhoneNumber"

    .line 12
    invoke-static {v5, v8}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/m;->c()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 13
    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-array v8, v4, [Ljava/lang/String;

    iget-object v10, v1, Lcom/hiya/stingray/ui/login/verification/j;->q:Ljava/lang/String;

    if-eqz v10, :cond_1

    aput-object v10, v8, v6

    invoke-static {v2, v8}, Lcom/hiya/stingray/util/y;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "PhoneNumberUtil.formatPh\u2026evicePhoneNumber, simIso)"

    invoke-static {v11, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "+1"

    const-string v13, ""

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/c0/m;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {v9}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_0

    throw v7

    .line 16
    :cond_2
    :try_start_2
    invoke-static {v9}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_2} :catch_0

    throw v7

    :catch_0
    move-exception v0

    .line 17
    invoke-static {v0}, Lr/a/a;->b(Ljava/lang/Throwable;)V

    .line 18
    :cond_3
    :goto_1
    sget v0, Lcom/hiya/stingray/o;->O0:I

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/hiya/stingray/util/e0;->y(Landroid/app/Activity;Landroid/view/View;)V

    .line 20
    iget-object v0, v1, Lcom/hiya/stingray/ui/login/verification/j;->p:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    if-eqz v0, :cond_7

    sget-object v2, Lcom/hiya/stingray/ui/login/verification/k;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const v2, 0x7f110266

    const-string v3, "toolBar"

    if-eq v0, v4, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    sget v0, Lcom/hiya/stingray/o;->z4:I

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/appcompat/widget/Toolbar;

    invoke-static {v8, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v0, "activity!!"

    invoke-static {v9, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "getString(R.string.phone_add_phone_number)"

    invoke-static {v10, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/hiya/stingray/util/e0;->s(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v7

    .line 22
    :cond_6
    sget v0, Lcom/hiya/stingray/o;->z4:I

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_7
    const-string v0, "source"

    .line 23
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v7
.end method

.method private final v1()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->i0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "countryCodeButton"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/login/verification/j;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/j$i;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/login/verification/j$i;-><init>(Lcom/hiya/stingray/ui/login/verification/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final w1()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/login/verification/j;->n:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f090126

    .line 4
    sget-object v2, Lcom/hiya/stingray/ui/login/verification/j;->t:Lcom/hiya/stingray/ui/login/verification/j$a;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/hiya/stingray/ui/login/verification/j;->p:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3, v4}, Lcom/hiya/stingray/ui/login/verification/j$a;->a(ZLcom/hiya/stingray/ui/login/verification/VerificationActivity$b;)Lcom/hiya/stingray/ui/login/verification/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/y;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v5}, Landroidx/fragment/app/y;->g(Ljava/lang/String;)Landroidx/fragment/app/y;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/y;->i()I

    goto :goto_0

    :cond_0
    const-string v0, "source"

    .line 7
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v5

    :cond_1
    :goto_0
    return-void
.end method

.method private final x1()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->V0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "errorTv"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1100e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j;->s:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j;->s:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j;->s:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j;->s:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/login/verification/j;->s:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x232a

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    const/16 p2, 0x1f44

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    const-string p1, "country_prefix"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "data.getStringExtra(Cons\u2026IntentKey.COUNTRY_PREFIX)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j;->o:Ljava/lang/String;

    .line 2
    sget p1, Lcom/hiya/stingray/o;->i0:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "countryCodeButton"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hiya/stingray/ui/login/verification/j;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "countryCodeIso was null from data"

    .line 3
    invoke-static {p2, p1}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
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

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->y0(Lcom/hiya/stingray/ui/login/verification/j;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Landroidx/lifecycle/e0;->a(Landroidx/fragment/app/e;)Landroidx/lifecycle/d0;

    move-result-object p1

    .line 4
    const-class v1, Lcom/hiya/stingray/ui/login/verification/a;

    .line 5
    invoke-virtual {p1, v1}, Landroidx/lifecycle/d0;->a(Ljava/lang/Class;)Landroidx/lifecycle/b0;

    move-result-object p1

    const-string v1, "ViewModelProviders.of(th\u2026del::class.java\n        )"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/hiya/stingray/ui/login/verification/a;

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j;->l:Lcom/hiya/stingray/ui/login/verification/a;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/i18n/phonenumbers/h;->t()Lcom/google/i18n/phonenumbers/h;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/hiya/stingray/ui/login/verification/j;->q:Ljava/lang/String;

    const-string v3, "simIso"

    if-eqz v2, :cond_2

    const-string v4, ""

    invoke-static {v2, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Locale.US"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/hiya/stingray/ui/login/verification/j;->q:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v0, v2

    .line 9
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/i18n/phonenumbers/h;->q(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j;->o:Ljava/lang/String;

    return-void

    .line 10
    :cond_1
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0149

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/login/verification/j;->Z0()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/login/verification/j;->n:Z

    const/4 v1, 0x0

    const-string v2, "verificationAnalytics"

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j;->r:Lcom/hiya/stingray/ui/login/verification/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/verification/i;->g()V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/j;->t1()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j;->r:Lcom/hiya/stingray/ui/login/verification/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/verification/i;->h()V

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/j;->u1()V

    :goto_0
    return-void

    .line 8
    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "key_verify_code"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    iput-boolean p2, p0, Lcom/hiya/stingray/ui/login/verification/j;->n:Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const-string v0, "EXTRA_SOURCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    instance-of v0, p1, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    if-nez v0, :cond_2

    move-object p1, p2

    :cond_2
    check-cast p1, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;->ONBAORDING:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    :goto_1
    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j;->p:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j;->l:Lcom/hiya/stingray/ui/login/verification/a;

    const-string v0, "verificationViewModel"

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/a;->s()Landroidx/lifecycle/t;

    move-result-object p1

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/j$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/login/verification/j$b;-><init>(Lcom/hiya/stingray/ui/login/verification/j;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j;->l:Lcom/hiya/stingray/ui/login/verification/a;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/a;->r()Landroidx/lifecycle/t;

    move-result-object p1

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/j$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/login/verification/j$c;-><init>(Lcom/hiya/stingray/ui/login/verification/j;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j;->l:Lcom/hiya/stingray/ui/login/verification/a;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/a;->n()Landroidx/lifecycle/t;

    move-result-object p1

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/j$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/login/verification/j$d;-><init>(Lcom/hiya/stingray/ui/login/verification/j;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 7
    sget p1, Lcom/hiya/stingray/o;->O0:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "editText"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/hiya/stingray/ui/login/verification/j$e;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/login/verification/j$e;-><init>(Lcom/hiya/stingray/ui/login/verification/j;)V

    invoke-static {v1, v2}, Lcom/hiya/stingray/util/e0;->a(Landroid/widget/EditText;Lkotlin/w/b/l;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 9
    sget p1, Lcom/hiya/stingray/o;->p3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/j$f;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/login/verification/j$f;-><init>(Lcom/hiya/stingray/ui/login/verification/j;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    sget p1, Lcom/hiya/stingray/o;->b:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/j$g;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/login/verification/j$g;-><init>(Lcom/hiya/stingray/ui/login/verification/j;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget p1, Lcom/hiya/stingray/o;->X3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/j$h;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/login/verification/j$h;-><init>(Lcom/hiya/stingray/ui/login/verification/j;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j;->l:Lcom/hiya/stingray/ui/login/verification/a;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j;->p:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/login/verification/a;->w(Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;)V

    .line 13
    invoke-direct {p0}, Lcom/hiya/stingray/ui/login/verification/j;->v1()V

    return-void

    :cond_4
    const-string p1, "source"

    .line 14
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    :cond_5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_6
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 16
    :cond_7
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_8
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public final q1()Lcom/hiya/stingray/ui/login/verification/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j;->r:Lcom/hiya/stingray/ui/login/verification/i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "verificationAnalytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
