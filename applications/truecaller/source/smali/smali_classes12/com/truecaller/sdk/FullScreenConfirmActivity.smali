.class public final Lcom/truecaller/sdk/FullScreenConfirmActivity;
.super Le/a/v4/u;
.source "SourceFile"

# interfaces
.implements Le/a/v4/w0/c;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008h\u0010\u000fJ\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u000fJ\u0017\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u000fJ7\u0010#\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0019H\u0017\u00a2\u0006\u0004\u0008#\u0010$J\u001d\u0010(\u001a\u00020\u000b2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020&0%H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010+\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010.\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008.\u0010,J\u0017\u00101\u001a\u00020\u000b2\u0006\u00100\u001a\u00020/H\u0016\u00a2\u0006\u0004\u00081\u00102J\u0017\u00105\u001a\u00020\u000b2\u0006\u00104\u001a\u000203H\u0016\u00a2\u0006\u0004\u00085\u00106J\u0017\u00108\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u00088\u0010\u001cJ\u0017\u0010:\u001a\u00020\u000b2\u0006\u00109\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008:\u0010\u001cJ\u000f\u0010;\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008;\u0010<J!\u0010@\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u00102\u0008\u0010?\u001a\u0004\u0018\u00010>H\u0016\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010B\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008B\u0010\u000fJ\u0017\u0010D\u001a\u00020\u00042\u0006\u0010C\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008D\u0010EJ\u000f\u0010F\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008F\u0010\u000fJ\u0017\u0010H\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008H\u0010\rJ\u000f\u0010I\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008I\u0010\u000fJ\u000f\u0010J\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008J\u0010\u000fJ\u0019\u0010K\u001a\u00020\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008K\u0010,J\u000f\u0010L\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008L\u0010\u000fJ\u0017\u0010O\u001a\u00020\u000b2\u0006\u0010N\u001a\u00020MH\u0016\u00a2\u0006\u0004\u0008O\u0010PR\"\u0010X\u001a\u00020Q8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR\u001d\u0010^\u001a\u00020Y8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Z\u0010[\u001a\u0004\u0008\\\u0010]R(\u0010g\u001a\u00020_8\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0004\u0008`\u0010a\u0012\u0004\u0008f\u0010\u000f\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010e\u00a8\u0006i"
    }
    d2 = {
        "Lcom/truecaller/sdk/FullScreenConfirmActivity;",
        "Ln3/b/a/h;",
        "Le/a/v4/w0/c;",
        "Landroid/view/View$OnClickListener;",
        "",
        "text",
        "Landroid/text/Spanned;",
        "qa",
        "(Ljava/lang/String;)Landroid/text/Spanned;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "r4",
        "()V",
        "",
        "theme",
        "r",
        "(I)V",
        "g0",
        "Landroid/text/SpannableStringBuilder;",
        "brandingText",
        "B",
        "(Landroid/text/SpannableStringBuilder;)V",
        "",
        "visibility",
        "T1",
        "(Z)V",
        "M3",
        "phoneNumber",
        "partnerAppName",
        "fullName",
        "partnerIntentText",
        "isExpanded",
        "g8",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V",
        "",
        "Le/a/v4/o0/e;",
        "profileInfoList",
        "p",
        "(Ljava/util/List;)V",
        "avatarUrl",
        "U2",
        "(Ljava/lang/String;)V",
        "avatarLetter",
        "n",
        "Landroid/graphics/drawable/Drawable;",
        "partnerAppIcon",
        "T5",
        "(Landroid/graphics/drawable/Drawable;)V",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "expand",
        "M5",
        "visible",
        "m4",
        "U8",
        "()Z",
        "resultCode",
        "Landroid/content/Intent;",
        "result",
        "U1",
        "(ILandroid/content/Intent;)V",
        "V1",
        "resId",
        "Q",
        "(I)Ljava/lang/String;",
        "onDestroy",
        "outState",
        "onSaveInstanceState",
        "onBackPressed",
        "onStop",
        "R1",
        "S1",
        "Lcom/truecaller/android/sdk/TrueProfile;",
        "trueProfile",
        "o3",
        "(Lcom/truecaller/android/sdk/TrueProfile;)V",
        "Le/a/v4/k;",
        "f",
        "Le/a/v4/k;",
        "getAvatarXPresenter",
        "()Le/a/v4/k;",
        "setAvatarXPresenter",
        "(Le/a/v4/k;)V",
        "avatarXPresenter",
        "Le/a/v4/r0/c;",
        "e",
        "Ls1/g;",
        "pa",
        "()Le/a/v4/r0/c;",
        "binding",
        "Le/a/v4/g;",
        "d",
        "Le/a/v4/g;",
        "getPresenter$sdk_internal_release",
        "()Le/a/v4/g;",
        "setPresenter$sdk_internal_release",
        "(Le/a/v4/g;)V",
        "getPresenter$sdk_internal_release$annotations",
        "presenter",
        "<init>",
        "sdk-internal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/v4/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final e:Ls1/g;

.field public f:Le/a/v4/k;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/v4/u;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/sdk/FullScreenConfirmActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->e:Ls1/g;

    return-void
.end method


# virtual methods
.method public B(Landroid/text/SpannableStringBuilder;)V
    .locals 2

    const-string v0, "brandingText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->g:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.tcBrandingText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public M3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/g;->m()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->b:Landroidx/constraintlayout/widget/Group;

    const-string v1, "binding.containerLayoutGroup"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public M5(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    const-string v1, "binding"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Le/a/v4/r0/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    new-instance v1, Ln3/g0/s;

    invoke-direct {v1}, Ln3/g0/s;-><init>()V

    .line 4
    new-instance v2, Ln3/g0/f;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ln3/g0/f;-><init>(I)V

    invoke-virtual {v1, v2}, Ln3/g0/s;->M(Ln3/g0/m;)Ln3/g0/s;

    .line 5
    new-instance v2, Ln3/g0/f;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ln3/g0/f;-><init>(I)V

    const-wide/16 v3, 0x0

    .line 6
    iput-wide v3, v2, Ln3/g0/m;->c:J

    .line 7
    invoke-virtual {v1, v2}, Ln3/g0/s;->M(Ln3/g0/m;)Ln3/g0/s;

    .line 8
    new-instance v2, Ln3/g0/c;

    invoke-direct {v2}, Ln3/g0/c;-><init>()V

    invoke-virtual {v1, v2}, Ln3/g0/s;->M(Ln3/g0/m;)Ln3/g0/s;

    .line 9
    invoke-static {v0, v1}, Ln3/g0/q;->a(Landroid/view/ViewGroup;Ln3/g0/m;)V

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->i:Le/a/v4/r0/g;

    iget-object v0, v0, Le/a/v4/r0/g;->e:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.userInfoContainer.profileInfoListView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->i:Le/a/v4/r0/g;

    iget-object v0, v0, Le/a/v4/r0/g;->a:Landroid/view/View;

    const-string v3, "binding.userInfoContaine\u2026collapsableContentDivider"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->i:Le/a/v4/r0/g;

    iget-object v0, v0, Le/a/v4/r0/g;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "binding.userInfoContainer.expander"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/high16 p1, 0x43340000    # 180.0f

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public Q(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(resId)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public R1(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->c:Le/a/v4/r0/f;

    iget-object v0, v0, Le/a/v4/r0/f;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.footerContainer.\u2026ntinueWithDifferentNumber"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/c;->c:Le/a/v4/r0/f;

    iget-object p1, p1, Le/a/v4/r0/f;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/c;->c:Le/a/v4/r0/f;

    iget-object p1, p1, Le/a/v4/r0/f;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public S1()V
    .locals 0

    return-void
.end method

.method public T1(Z)V
    .locals 4

    const-string v0, "binding.footerContainer.root"

    const-string v1, "binding.footerContainer"

    const/4 v2, 0x0

    const-string v3, "binding.progressBar"

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/c;->f:Landroid/widget/ProgressBar;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/c;->c:Le/a/v4/r0/f;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Le/a/v4/r0/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/c;->f:Landroid/widget/ProgressBar;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/c;->c:Le/a/v4/r0/f;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Le/a/v4/r0/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public T5(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "partnerAppIcon"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->i:Le/a/v4/r0/g;

    iget-object v0, v0, Le/a/v4/r0/g;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public U1(ILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public U2(Ljava/lang/String;)V
    .locals 2

    const-string v0, "avatarUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->i:Le/a/v4/r0/g;

    iget-object v0, v0, Le/a/v4/r0/g;->d:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "Uri.parse(avatarUrl)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->F(Landroid/net/Uri;)V

    return-void
.end method

.method public U8()Z
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-static {p0, v0}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public g0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->i:Le/a/v4/r0/g;

    iget-object v0, v0, Le/a/v4/r0/g;->d:Lcom/truecaller/common/ui/avatar/AvatarXView;

    iget-object v1, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->f:Le/a/v4/k;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->i:Le/a/v4/r0/g;

    iget-object v0, v0, Le/a/v4/r0/g;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->c:Le/a/v4/r0/f;

    iget-object v0, v0, Le/a/v4/r0/f;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string v0, "avatarXPresenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string p5, "phoneNumber"

    invoke-static {p1, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "partnerAppName"

    invoke-static {p2, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "fullName"

    invoke-static {p3, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "partnerIntentText"

    invoke-static {p4, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p5

    iget-object p5, p5, Le/a/v4/r0/c;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.partnerLoginIntentText"

    invoke-static {p5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p4

    iget-object p4, p4, Le/a/v4/r0/c;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p5, "binding.partnerSecondaryText"

    invoke-static {p4, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget p5, Lcom/truecaller/sdk/R$string;->SdkSecondaryTitleText:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, p5, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const-string v1, "getString(R.string.SdkSe\u2026itleText, partnerAppName)"

    invoke-static {p5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->qa(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p4

    iget-object p4, p4, Le/a/v4/r0/c;->i:Le/a/v4/r0/g;

    iget-object p4, p4, Le/a/v4/r0/g;->f:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p5, "binding.userInfoContainer.userName"

    invoke-static {p4, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p3

    iget-object p3, p3, Le/a/v4/r0/c;->i:Le/a/v4/r0/g;

    iget-object p3, p3, Le/a/v4/r0/g;->g:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p4, "binding.userInfoContainer.userPhone"

    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/c;->c:Le/a/v4/r0/f;

    iget-object p1, p1, Le/a/v4/r0/f;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p3, "binding.footerContainer.legalText"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/truecaller/sdk/R$string;->SdkProfileShareTerms:I

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p2, p4, v2

    invoke-virtual {p0, p3, p4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "getString(R.string.SdkPr\u2026areTerms, partnerAppName)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->qa(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget p1, Lcom/truecaller/sdk/R$drawable;->ic_sdk_terms:I

    sget p2, Lcom/truecaller/sdk/R$attr;->tcx_textSecondary:I

    invoke-static {p0, p1, p2}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p2

    iget-object p2, p2, Le/a/v4/r0/c;->c:Le/a/v4/r0/f;

    iget-object p2, p2, Le/a/v4/r0/f;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public m4(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->c:Le/a/v4/r0/f;

    iget-object v0, v0, Le/a/v4/r0/f;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.footerContainer.\u2026ntinueWithDifferentNumber"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    const-string v0, "avatarLetter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->f:Le/a/v4/k;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Le/a/b0/a/b/a;->e:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, "avatarXPresenter"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public o3(Lcom/truecaller/android/sdk/TrueProfile;)V
    .locals 1

    const-string v0, "trueProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/v4/g;->c(Lcom/truecaller/android/sdk/TrueProfile;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/g;->d()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->c:Le/a/v4/r0/f;

    iget-object v0, v0, Le/a/v4/r0/f;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "presenter"

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->d:Le/a/v4/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/v4/g;->i()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->i:Le/a/v4/r0/g;

    iget-object v0, v0, Le/a/v4/r0/g;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->d:Le/a/v4/g;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Le/a/v4/g;->g()V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_3
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/c;->c:Le/a/v4/r0/f;

    iget-object v0, v0, Le/a/v4/r0/f;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->d:Le/a/v4/g;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Le/a/v4/g;->d()V

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->d:Le/a/v4/g;

    const/4 v1, 0x0

    const-string v2, "presenter"

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Le/a/v4/g;->f(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->d:Le/a/v4/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Le/a/v4/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    .line 5
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/e;->b()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/v4/g;->j(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/g;->k()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public p(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/v4/o0/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "profileInfoList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/v4/o0/f;

    invoke-direct {v0, p0, p1}, Le/a/v4/o0/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/c;->i:Le/a/v4/r0/g;

    iget-object p1, p1, Le/a/v4/r0/g;->e:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.userInfoContainer.profileInfoListView"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method public final pa()Le/a/v4/r0/c;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v4/r0/c;

    return-object v0
.end method

.method public final qa(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    const-string v0, "Html.fromHtml(text, Html.FROM_HTML_MODE_LEGACY)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    const-string v0, "Html.fromHtml(text)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public r(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget p1, Lcom/truecaller/sdk/R$style;->TrueCaller_Base_Dark:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/truecaller/sdk/R$style;->TrueCaller_Base_Light:I

    :goto_0
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setTheme(I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/FullScreenConfirmActivity;->pa()Le/a/v4/r0/c;

    move-result-object p1

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Le/a/v4/r0/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public r4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/FullScreenConfirmActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/g;->h()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
