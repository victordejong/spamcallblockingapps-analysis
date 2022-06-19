.class public final Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;
.super Le/a/v4/q;
.source "SourceFile"

# interfaces
.implements Le/a/v4/w0/a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008c\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J7\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0013J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J!\u0010*\u001a\u00020\u00062\u0008\u0010(\u001a\u0004\u0018\u00010\'2\u0006\u0010)\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008*\u0010+J+\u0010/\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00102\u0008\u0010-\u001a\u0004\u0018\u00010\u00102\u0008\u0010.\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u0017\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u00082\u0010\u0019J\u000f\u00103\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00083\u0010\nJ\u0019\u00106\u001a\u00020\u00102\u0008\u0008\u0001\u00105\u001a\u000204H\u0016\u00a2\u0006\u0004\u00086\u00107J!\u0010;\u001a\u00020\u00062\u0006\u00108\u001a\u0002042\u0008\u0010:\u001a\u0004\u0018\u000109H\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u000f\u0010=\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008=\u0010\nJ\u000f\u0010>\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008>\u0010\nJ\u0017\u0010@\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008@\u0010\u0008J\u000f\u0010A\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008A\u0010\nJ\u0017\u0010D\u001a\u00020\u00062\u0006\u0010C\u001a\u00020BH\u0016\u00a2\u0006\u0004\u0008D\u0010EJ\u000f\u0010F\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008F\u0010\nJ\u0017\u0010I\u001a\u00020\u00062\u0006\u0010H\u001a\u00020GH\u0016\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010K\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008K\u0010\nR(\u0010T\u001a\u00020L8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008M\u0010N\u0012\u0004\u0008S\u0010\n\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR\u001d\u0010Z\u001a\u00020U8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010YR\"\u0010b\u001a\u00020[8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\\\u0010]\u001a\u0004\u0008^\u0010_\"\u0004\u0008`\u0010a\u00a8\u0006d"
    }
    d2 = {
        "Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;",
        "Ln3/b/a/h;",
        "Le/a/v4/w0/a;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "r4",
        "()V",
        "g0",
        "Landroid/text/SpannableStringBuilder;",
        "brandingText",
        "B",
        "(Landroid/text/SpannableStringBuilder;)V",
        "",
        "text",
        "R1",
        "(Ljava/lang/String;)V",
        "",
        "U8",
        "()Z",
        "expand",
        "M5",
        "(Z)V",
        "phoneNumber",
        "partnerAppName",
        "fullName",
        "partnerIntentText",
        "isExpanded",
        "g8",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V",
        "avatarUrl",
        "U2",
        "Le/a/v4/q0/a;",
        "trueProfileCustomData",
        "S8",
        "(Le/a/v4/q0/a;)V",
        "Lcom/truecaller/android/sdk/clients/CustomDataBundle;",
        "customDataBundle",
        "numberWithoutExtension",
        "T",
        "(Lcom/truecaller/android/sdk/clients/CustomDataBundle;Ljava/lang/String;)V",
        "legalTextValue",
        "privacyPolicyUrl",
        "termsOfServiceUrl",
        "u7",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "rectangleShapeRequested",
        "a4",
        "V1",
        "",
        "resId",
        "Q",
        "(I)Ljava/lang/String;",
        "resultCode",
        "Landroid/content/Intent;",
        "result",
        "U1",
        "(ILandroid/content/Intent;)V",
        "M3",
        "onDestroy",
        "outState",
        "onSaveInstanceState",
        "onBackPressed",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "S1",
        "Lcom/truecaller/android/sdk/TrueProfile;",
        "trueProfile",
        "o3",
        "(Lcom/truecaller/android/sdk/TrueProfile;)V",
        "onStop",
        "Le/a/p5/h0;",
        "f",
        "Le/a/p5/h0;",
        "getThemedResourceProvider",
        "()Le/a/p5/h0;",
        "setThemedResourceProvider",
        "(Le/a/p5/h0;)V",
        "getThemedResourceProvider$annotations",
        "themedResourceProvider",
        "Le/a/v4/r0/b;",
        "e",
        "Ls1/g;",
        "pa",
        "()Le/a/v4/r0/b;",
        "binding",
        "Le/a/v4/g;",
        "d",
        "Le/a/v4/g;",
        "getMPresenter$sdk_internal_release",
        "()Le/a/v4/g;",
        "setMPresenter$sdk_internal_release",
        "(Le/a/v4/g;)V",
        "mPresenter",
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


# static fields
.field public static final synthetic g:I


# instance fields
.field public d:Le/a/v4/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final e:Ls1/g;

.field public f:Le/a/p5/h0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/v4/q;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$b;

    invoke-direct {v1, p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$b;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->e:Ls1/g;

    return-void
.end method


# virtual methods
.method public B(Landroid/text/SpannableStringBuilder;)V
    .locals 2

    const-string v0, "brandingText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->q:Landroid/widget/TextView;

    const-string v1, "binding.consentLayout.tcBrandingText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public M3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/g;->m()V

    return-void

    :cond_0
    const-string v0, "mPresenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public M5(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    const-string v1, "binding.consentLayout"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Le/a/v4/r0/d;->a:Landroid/widget/LinearLayout;

    .line 3
    new-instance v1, Ln3/g0/s;

    invoke-direct {v1}, Ln3/g0/s;-><init>()V

    .line 4
    new-instance v2, Ln3/g0/c;

    invoke-direct {v2}, Ln3/g0/c;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v3

    iget-object v3, v3, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v3, v3, Le/a/v4/r0/d;->i:Landroid/widget/LinearLayout;

    .line 6
    iget-object v4, v2, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v3, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$d;

    invoke-direct {v3, p0, p1}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$d;-><init>(Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;Z)V

    .line 8
    invoke-virtual {v2, v3}, Ln3/g0/m;->a(Ln3/g0/m$d;)Ln3/g0/m;

    .line 9
    invoke-virtual {v1, v2}, Ln3/g0/s;->M(Ln3/g0/m;)Ln3/g0/s;

    const/16 v2, 0x12c

    int-to-long v2, v2

    .line 10
    invoke-virtual {v1, v2, v3}, Ln3/g0/s;->O(J)Ln3/g0/s;

    .line 11
    invoke-static {v0, v1}, Ln3/g0/q;->a(Landroid/view/ViewGroup;Ln3/g0/m;)V

    .line 12
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->i:Landroid/widget/LinearLayout;

    const-string v1, "binding.consentLayout.infoContainer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

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
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->n:Landroid/view/View;

    const-string v1, "binding.consentLayout.legalTextDivider"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->d:Landroid/widget/TextView;

    const-string v2, "binding.consentLayout.continueWithDifferentNumber"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object p1, p1, Le/a/v4/r0/d;->d:Landroid/widget/TextView;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object p1, p1, Le/a/v4/r0/d;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public S1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    const-string v1, "binding.consentLayout"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Le/a/v4/r0/d;->a:Landroid/widget/LinearLayout;

    .line 3
    new-instance v1, Ln3/g0/b;

    invoke-direct {v1}, Ln3/g0/b;-><init>()V

    .line 4
    new-instance v2, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$e;

    invoke-direct {v2, p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$e;-><init>(Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;)V

    .line 5
    invoke-virtual {v1, v2}, Ln3/g0/s;->L(Ln3/g0/m$d;)Ln3/g0/s;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Ln3/g0/q;->a(Landroid/view/ViewGroup;Ln3/g0/m;)V

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    const-string v1, "binding.consentLayout.confirm"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/truecaller/sdk/R$string;->SDKPleaseWaitLoaderMsg:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->o:Landroid/widget/TextView;

    const-string v2, "binding.consentLayout.loginText"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->c:Landroid/widget/ProgressBar;

    const-string v3, "binding.consentLayout.confirmProgressBar"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->e:Landroid/widget/LinearLayout;

    const-string v1, "binding.consentLayout.ctaContainer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public S8(Le/a/v4/q0/a;)V
    .locals 5

    const-string v0, "trueProfileCustomData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->k:Landroid/widget/TextView;

    const-string v1, "binding.consentLayout.infoName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Le/a/v4/q0/a;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->l:Landroid/widget/TextView;

    const-string v1, "binding.consentLayout.infoNumber"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p1, Le/a/v4/q0/a;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p1, Le/a/v4/q0/a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const-string v3, "binding.consentLayout.infoEmail"

    const/16 v4, 0x8

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->j:Landroid/widget/TextView;

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v3, p1, Le/a/v4/q0/a;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->j:Landroid/widget/TextView;

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->f:Landroid/view/View;

    const-string v3, "binding.consentLayout.emailAddressDivider"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :goto_2
    iget-object v0, p1, Le/a/v4/q0/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 15
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    const-string v0, "binding.consentLayout.infoAddress"

    if-nez v1, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v1

    iget-object v1, v1, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v1, v1, Le/a/v4/r0/d;->h:Landroid/widget/TextView;

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p1, p1, Le/a/v4/q0/a;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object p1, p1, Le/a/v4/r0/d;->h:Landroid/widget/TextView;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public T(Lcom/truecaller/android/sdk/clients/CustomDataBundle;Ljava/lang/String;)V
    .locals 6

    const-string v0, "numberWithoutExtension"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 1
    iget v0, p1, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->a:I

    const-string v1, "themedResourceProvider"

    const-string v2, "binding.consentLayout.confirm"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    iget v4, p1, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->a:I

    .line 4
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->f:Le/a/p5/h0;

    if-eqz v4, :cond_3

    sget v5, Lcom/truecaller/sdk/R$color;->primary_dark:I

    invoke-interface {v4, v5}, Le/a/p5/c0;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 6
    :goto_0
    iget v0, p1, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->b:I

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    .line 8
    iget v1, p1, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->b:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->f:Le/a/p5/h0;

    if-eqz v4, :cond_2

    const v1, 0x106000b

    invoke-interface {v4, v1}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->o:Landroid/widget/TextView;

    const-string v1, "binding.consentLayout.loginText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/truecaller/sdk/R$array;->SdkPartnerLoginPrefixOptionsArray:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 13
    iget v4, p1, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->e:I

    .line 14
    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 15
    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/truecaller/sdk/R$array;->SdkPartnerLoginSuffixOptionsArray:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 16
    iget v5, p1, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->f:I

    .line 17
    aget-object v3, v3, v5

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const-string v3, ", "

    .line 18
    invoke-static {v3, v1}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/sdk/R$array;->SdkPartnerCTAPrefixOptionsArray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 21
    iget p1, p1, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->g:I

    .line 22
    aget-object p1, v1, p1

    const-string v1, "resources.getStringArray\u2026)[it.ctaTextPrefixOption]"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v4

    .line 23
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 24
    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 25
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_2
    return-void
.end method

.method public U1(ILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public U2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "avatarUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

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
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public a4(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object p1, p1, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    sget v0, Lcom/truecaller/sdk/R$drawable;->background_confirm_button:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object p1, p1, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    sget v0, Lcom/truecaller/sdk/R$drawable;->background_rounded_confirm_button:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public g0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    const-string v1, "binding.consentLayout.confirm"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->p:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from\u2026g.consentLayout.rootView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$c;

    invoke-direct {v1, p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$c;-><init>(Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;)V

    .line 6
    iget-object v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
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
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object p4

    iget-object p4, p4, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object p4, p4, Le/a/v4/r0/d;->m:Landroid/widget/TextView;

    const-string p5, "binding.consentLayout.legalText"

    invoke-static {p4, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget p5, Lcom/truecaller/sdk/R$string;->SdkProfileShareTerms:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, p5, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "getString(string.SdkProf\u2026areTerms, partnerAppName)"

    invoke-static {p2, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p5, v2, [Ljava/lang/Object;

    invoke-static {p5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p5

    invoke-static {p2, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "java.lang.String.format(format, *args)"

    invoke-static {p2, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object p2

    iget-object p2, p2, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object p2, p2, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    const-string p4, "binding.consentLayout.confirm"

    invoke-static {p2, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/truecaller/sdk/R$array;->SdkPartnerCTAPrefixOptionsArray:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p4

    aget-object p4, p4, v2

    const-string v1, "resources.getStringArray\u2026CTAPrefixOptionsArray)[0]"

    invoke-static {p4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object p1, p1, Le/a/v4/r0/d;->d:Landroid/widget/TextView;

    const-string p2, "binding.consentLayout.continueWithDifferentNumber"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/truecaller/sdk/R$string;->SdkContinueWithDifferentNumber:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object p1, p1, Le/a/v4/r0/d;->r:Landroid/widget/TextView;

    const-string p2, "binding.consentLayout.userName"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/truecaller/sdk/R$string;->SdkProfileHeaderText:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "getString(string.SdkProfileHeaderText)"

    invoke-static {p2, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public o3(Lcom/truecaller/android/sdk/TrueProfile;)V
    .locals 1

    const-string v0, "trueProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/v4/g;->c(Lcom/truecaller/android/sdk/TrueProfile;)V

    return-void

    :cond_0
    const-string p1, "mPresenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/g;->d()V

    return-void

    :cond_0
    const-string v0, "mPresenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->b:Landroid/widget/TextView;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "mPresenter"

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->d:Le/a/v4/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/v4/g;->i()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->d:Landroid/widget/TextView;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object p1, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->d:Le/a/v4/g;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Le/a/v4/g;->e()V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->g:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6
    iget-object p1, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->d:Le/a/v4/g;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Le/a/v4/g;->g()V

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
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    const-string v1, "binding"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Le/a/v4/r0/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 6
    invoke-virtual {p0, v0}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->d:Le/a/v4/g;

    const/4 v1, 0x0

    const-string v2, "mPresenter"

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Le/a/v4/g;->f(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->d:Le/a/v4/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Le/a/v4/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    .line 10
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/e;->b()V

    return-void

    :cond_0
    const-string v0, "mPresenter"

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
    iget-object v0, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/v4/g;->j(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p1, "mPresenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/g;->k()V

    return-void

    :cond_0
    const-string v0, "mPresenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final pa()Le/a/v4/r0/b;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v4/r0/b;

    return-object v0
.end method

.method public r4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->d:Le/a/v4/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/g;->h()V

    return-void

    :cond_0
    const-string v0, "mPresenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public u7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "legalTextValue"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object v0, v0, Le/a/v4/r0/d;->m:Landroid/widget/TextView;

    const-string v1, "binding.consentLayout.legalText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->d0(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p1

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3
    sget v0, Lcom/truecaller/sdk/R$string;->SdkProfilePp:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 4
    new-instance v3, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$a;

    invoke-direct {v3, v1, p2}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$a;-><init>(ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object p2

    iget-object p2, p2, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object p2, p2, Le/a/v4/r0/d;->m:Landroid/widget/TextView;

    invoke-static {p2, v0, v2, v2, v3}, Ln3/k/g/f/b;->b(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 6
    invoke-static {p3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    move v1, p1

    :cond_4
    if-nez v1, :cond_5

    .line 7
    sget p2, Lcom/truecaller/sdk/R$string;->SdkProfileTos:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 8
    new-instance v0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$a;

    invoke-direct {v0, p1, p3}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$a;-><init>(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object p1, p1, Le/a/v4/r0/d;->m:Landroid/widget/TextView;

    invoke-static {p1, p2, v2, v2, v0}, Ln3/k/g/f/b;->b(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_5
    return-void
.end method
