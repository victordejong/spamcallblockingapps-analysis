.class public Le/a/q4/r0;
.super Le/a/d5/g/n;
.source "SourceFile"

# interfaces
.implements Le/a/b0/a/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/q4/r0$a;
    }
.end annotation


# static fields
.field public static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/q4/r0$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Le/a/j2;

.field public b:Ljava/lang/String;

.field public c:Lcom/truecaller/referral/ReferralUrl;

.field public d:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

.field public e:Landroid/content/pm/PackageManager;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Landroid/widget/LinearLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Le/a/q4/r0$a;

    .line 1
    new-instance v1, Le/a/q4/r0$a;

    const-string v2, "com.whatsapp"

    invoke-direct {v1, v2}, Le/a/q4/r0$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Le/a/q4/r0$a;

    const-string v2, "com.facebook.orca"

    invoke-direct {v1, v2}, Le/a/q4/r0$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Le/a/q4/r0$a;

    const-string v2, "com.imo.android.imoim"

    invoke-direct {v1, v2}, Le/a/q4/r0$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Le/a/q4/r0$a;

    const-string v2, "com.facebook.katana"

    invoke-direct {v1, v2}, Le/a/q4/r0$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Le/a/q4/r0$a;

    const-string v2, "com.twitter.android"

    invoke-direct {v1, v2}, Le/a/q4/r0$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/q4/r0;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/d5/g/n;-><init>()V

    return-void
.end method

.method public static OA(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Le/a/q4/r0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Le/a/q4/r0;->PA(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)Le/a/q4/r0;

    move-result-object p0

    return-object p0
.end method

.method public static PA(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)Le/a/q4/r0;
    .locals 3

    .line 1
    new-instance v0, Le/a/q4/r0;

    invoke-direct {v0}, Le/a/q4/r0;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-static {p2, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EXTRA_REFERRAL_CODE"

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "EXTRA_REFERRAL_LINK"

    .line 5
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "EXTRA_REFERRAL_LAUNCH_CONTEXT"

    .line 6
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 7
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "EXTRA_DEEPLINK_CAMPAIGN_ID"

    .line 8
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final QA(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Le/a/q4/r0;->h:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0399

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0b22

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0b1f

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public Wy()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Ln3/r/a/k;->setStyle(II)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    new-array v0, v1, [Ljava/lang/String;

    .line 4
    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Le/a/q4/r0;->e:Landroid/content/pm/PackageManager;

    const-string v0, "EXTRA_REFERRAL_CODE"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/q4/r0;->b:Ljava/lang/String;

    const-string v0, "EXTRA_REFERRAL_LINK"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/referral/ReferralUrl;

    iput-object v0, p0, Le/a/q4/r0;->c:Lcom/truecaller/referral/ReferralUrl;

    const-string v0, "EXTRA_REFERRAL_LAUNCH_CONTEXT"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    iput-object v0, p0, Le/a/q4/r0;->d:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v0, "EXTRA_DEEPLINK_CAMPAIGN_ID"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/q4/r0;->f:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    iput-object p1, p0, Le/a/q4/r0;->a:Le/a/j2;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 1
    iget-object p3, p0, Le/a/q4/r0;->d:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    sget-object v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->BOTTOM_BAR:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    if-eqz p3, :cond_1

    const v0, 0x7f0d04f7

    goto :goto_1

    :cond_1
    const v0, 0x7f0d04f6

    .line 2
    :goto_1
    invoke-static {p1, v1}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a046c

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Le/a/q4/r0;->h:Landroid/widget/LinearLayout;

    const p2, 0x7f0a1245

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0a10de

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0a096b

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a005f

    .line 7
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 8
    new-instance v5, Le/a/q4/r;

    invoke-direct {v5, p0}, Le/a/q4/r;-><init>(Le/a/q4/r0;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v4, 0x7f120e8f

    .line 9
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f120e8e

    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    if-eqz p3, :cond_3

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p2

    const-string p3, "context"

    .line 12
    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "view"

    invoke-static {v3, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p2, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p2

    const p3, 0x7f04066f

    invoke-static {p2, p3}, Le/a/p5/s0/g;->d0(Landroid/content/Context;I)I

    move-result p2

    .line 14
    invoke-static {v3, p2, v1}, Le/a/p5/s0/g;->n1(Landroid/widget/ImageView;IZ)V

    goto :goto_2

    :cond_3
    const p2, 0x7f08050a

    .line 15
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    :goto_2
    iget-object p2, p0, Le/a/q4/r0;->h:Landroid/widget/LinearLayout;

    iget-object p3, p0, Le/a/q4/r0;->d:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const v0, 0x7f120f24

    .line 17
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0805fa

    invoke-static {v1, v3}, Le/a/b0/q/o;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Le/a/q4/r0;->QA(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    .line 18
    new-instance v1, Le/a/q4/q;

    invoke-direct {v1, p0, p3}, Le/a/q4/q;-><init>(Le/a/q4/r0;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 20
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.SEND"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "text/plain"

    .line 21
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 23
    invoke-virtual {p3, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 24
    sget-object p3, Le/a/q4/r0;->i:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q4/r0$a;

    .line 25
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 26
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Le/a/q4/r0$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27
    iget-object v1, p0, Le/a/q4/r0;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 28
    iget-object v3, p0, Le/a/q4/r0;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 29
    invoke-virtual {p0, v1, v2}, Le/a/q4/r0;->QA(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_4

    .line 31
    new-instance v2, Le/a/q4/o;

    invoke-direct {v2, p0, v0}, Le/a/q4/o;-><init>(Le/a/q4/r0;Le/a/q4/r0$a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Le/a/q4/r0;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 33
    :cond_7
    iget-object p2, p0, Le/a/q4/r0;->h:Landroid/widget/LinearLayout;

    const p3, 0x7f120f23

    .line 34
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0805f9

    invoke-static {v0, v1}, Le/a/b0/q/o;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Le/a/q4/r0;->QA(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object p3

    .line 35
    new-instance v0, Le/a/q4/p;

    invoke-direct {v0, p0}, Le/a/q4/p;-><init>(Le/a/q4/r0;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    iget-object p2, p0, Le/a/q4/r0;->a:Le/a/j2;

    invoke-interface {p2}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object p2

    .line 38
    invoke-static {p2}, Le/a/l4/k;->I(Le/a/b0/o/a;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Le/a/q4/r0;->g:Ljava/lang/String;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Le/a/q4/r0;->b:Ljava/lang/String;

    iget-object v1, p0, Le/a/q4/r0;->c:Lcom/truecaller/referral/ReferralUrl;

    iget-object v2, p0, Le/a/q4/r0;->d:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    iget-object v3, p0, Le/a/q4/r0;->f:Ljava/lang/String;

    const-string v4, "EXTRA_REFERRAL_CODE"

    .line 3
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EXTRA_REFERRAL_LINK"

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "EXTRA_REFERRAL_LAUNCH_CONTEXT"

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "EXTRA_DEEPLINK_CAMPAIGN_ID"

    .line 7
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln3/r/a/k;->onStart()V

    .line 2
    invoke-virtual {p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method
