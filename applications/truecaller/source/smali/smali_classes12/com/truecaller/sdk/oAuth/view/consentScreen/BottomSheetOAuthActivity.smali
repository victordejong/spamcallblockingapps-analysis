.class public final Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;
.super Le/a/v4/s0/m/a/c;
.source "SourceFile"

# interfaces
.implements Le/a/v4/s0/m/a/f;
.implements Landroid/view/View$OnClickListener;
.implements Le/a/v4/s0/h;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008v\u0010\u000bJ\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u0017\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0019J\u0017\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0019J\u0017\u0010\"\u001a\u00020\u00072\u0006\u0010!\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008$\u0010\u000bJ\u0017\u0010\'\u001a\u00020\u00072\u0006\u0010&\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010*\u001a\u00020\u00072\u0006\u0010)\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008*\u0010(J\u0017\u0010+\u001a\u00020\u00072\u0006\u0010)\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008+\u0010(J\u0017\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008-\u0010\u0019J\u001d\u00101\u001a\u00020\u00072\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020/0.H\u0016\u00a2\u0006\u0004\u00081\u00102J\u0017\u00104\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u00084\u0010\u0011J\u0011\u00106\u001a\u00020\u0007*\u000205\u00a2\u0006\u0004\u00086\u00107J\u0011\u00108\u001a\u00020\u0007*\u000205\u00a2\u0006\u0004\u00088\u00107J\'\u0010<\u001a\u00020\u00072\u0006\u00109\u001a\u00020%2\u0006\u0010:\u001a\u00020%2\u0006\u0010;\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010?\u001a\u00020\u00072\u0006\u0010>\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008?\u0010(J\u0017\u0010A\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008A\u0010\u0019J\u0017\u0010C\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008C\u0010\u0019J\u0017\u0010E\u001a\u00020\u00072\u0006\u0010D\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008E\u0010\u0019J\u0017\u0010G\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008G\u0010\u0019J\u0017\u0010J\u001a\u00020\u00072\u0006\u0010I\u001a\u00020HH\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u000f\u0010L\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008L\u0010\u000bJ\u0017\u0010N\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008N\u0010\u0019J\u000f\u0010O\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008O\u0010\u000bJ\u0017\u0010Q\u001a\u00020\u00072\u0006\u0010P\u001a\u000205H\u0016\u00a2\u0006\u0004\u0008Q\u00107J\u000f\u0010R\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008R\u0010\u000bJ\u000f\u0010S\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008S\u0010\u000bJ!\u0010W\u001a\u00020\u00072\u0006\u0010T\u001a\u00020%2\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008W\u0010XJ\u0017\u0010Z\u001a\u00020\u00072\u0006\u0010Y\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008Z\u0010\tJ\u000f\u0010[\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008[\u0010\u000bJ\u000f\u0010\\\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\\\u0010\u000bJ\u0017\u0010_\u001a\u00020\u00072\u0006\u0010^\u001a\u00020]H\u0016\u00a2\u0006\u0004\u0008_\u0010`R\u001d\u0010f\u001a\u00020a8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010eR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0016\u0010m\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\"\u0010u\u001a\u00020n8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008o\u0010p\u001a\u0004\u0008q\u0010r\"\u0004\u0008s\u0010t\u00a8\u0006w"
    }
    d2 = {
        "Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;",
        "Ln3/b/a/h;",
        "Le/a/v4/s0/m/a/f;",
        "Landroid/view/View$OnClickListener;",
        "Le/a/v4/s0/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onStart",
        "()V",
        "r4",
        "g0",
        "",
        "visible",
        "T1",
        "(Z)V",
        "Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;",
        "partnerDetails",
        "l6",
        "(Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;)V",
        "",
        "partnerIntentText",
        "X9",
        "(Ljava/lang/String;)V",
        "fullName",
        "i6",
        "numberWithoutExtension",
        "t9",
        "partnerAvatarLetter",
        "g6",
        "Landroid/net/Uri;",
        "logoUri",
        "p4",
        "(Landroid/net/Uri;)V",
        "N5",
        "",
        "backgroundColor",
        "Q1",
        "(I)V",
        "avatarColor",
        "X3",
        "z1",
        "text",
        "R1",
        "",
        "Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;",
        "scopes",
        "C6",
        "(Ljava/util/List;)V",
        "isChecked",
        "X7",
        "Landroid/view/View;",
        "enable",
        "(Landroid/view/View;)V",
        "disable",
        "buttonColor",
        "buttonTextColor",
        "buttonText",
        "P6",
        "(IILjava/lang/String;)V",
        "resourceId",
        "V3",
        "loginText",
        "E6",
        "privacyPolicyUrl",
        "y8",
        "termsOfServiceUrl",
        "q9",
        "url",
        "b",
        "Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;",
        "additionalPartnerInfo",
        "U6",
        "(Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;)V",
        "t6",
        "languageName",
        "n6",
        "S1",
        "view",
        "onClick",
        "onBackPressed",
        "V1",
        "resultCode",
        "Landroid/content/Intent;",
        "result",
        "U1",
        "(ILandroid/content/Intent;)V",
        "outState",
        "onSaveInstanceState",
        "onStop",
        "onDestroy",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "Le/a/v4/r0/a;",
        "d",
        "Ls1/g;",
        "pa",
        "()Le/a/v4/r0/a;",
        "binding",
        "Le/a/v4/s0/m/a/d;",
        "f",
        "Le/a/v4/s0/m/a/d;",
        "presenter",
        "e",
        "I",
        "selectedScopesCount",
        "Le/a/v4/k;",
        "g",
        "Le/a/v4/k;",
        "getAvatarXPresenter",
        "()Le/a/v4/k;",
        "setAvatarXPresenter",
        "(Le/a/v4/k;)V",
        "avatarXPresenter",
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
.field public final d:Ls1/g;

.field public e:I

.field public f:Le/a/v4/s0/m/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/v4/k;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/v4/s0/m/a/c;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->d:Ls1/g;

    return-void
.end method


# virtual methods
.method public C6(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scopes"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->e:I

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->k:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.oauthLayout.rvScopes"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Le/a/v4/s0/i;

    invoke-direct {v1, p1, p0}, Le/a/v4/s0/i;-><init>(Ljava/util/List;Le/a/v4/s0/h;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object p1, p1, Le/a/v4/r0/i;->k:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method public E6(Ljava/lang/String;)V
    .locals 2

    const-string v0, "loginText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->o:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.oauthLayout.tvLogin"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->d0(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public N5()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->e:Lcom/truecaller/common/ui/avatar/AvatarXView;

    new-instance v1, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$b;

    invoke-direct {v1, p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$b;-><init>(Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public P6(IILjava/lang/String;)V
    .locals 2

    const-string v0, "buttonText"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 2
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object p1, p1, Le/a/v4/r0/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object p1, p1, Le/a/v4/r0/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "binding.oauthLayout.tvConfirm"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Q1(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->g:Le/a/v4/k;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2
    iput-object p1, v0, Le/a/b0/a/b/a;->f:Ljava/lang/Integer;

    return-void

    :cond_0
    const-string p1, "avatarXPresenter"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public R1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->n:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.oauthLayout.tvContinueWithDifferentNumber"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public S1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    new-instance v1, Ln3/g0/b;

    invoke-direct {v1}, Ln3/g0/b;-><init>()V

    .line 3
    new-instance v2, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$i;

    invoke-direct {v2, p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$i;-><init>(Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;)V

    .line 4
    invoke-virtual {v1, v2}, Ln3/g0/s;->L(Ln3/g0/m$d;)Ln3/g0/s;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Ln3/g0/q;->a(Landroid/view/ViewGroup;Ln3/g0/m;)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.oauthLayout.tvConfirm"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/truecaller/sdk/R$string;->SDKPleaseWaitLoaderMsg:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->disable(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->i:Landroid/widget/ProgressBar;

    const-string v1, "binding.oauthLayout.pbConfirm"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->o:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.oauthLayout.tvLogin"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->k:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "binding.oauthLayout.rvScopes"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->g:Landroid/widget/LinearLayout;

    const-string v2, "binding.oauthLayout.llInfoContainer"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->n:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.oauthLayout.tvContinueWithDifferentNumber"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->l:Landroid/widget/Space;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->d:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "binding.oauthLayout.ivInfo"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public T1(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->j:Landroid/widget/ProgressBar;

    const-string v1, "binding.oauthLayout.pbLoader"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "binding.oauthLayout.llOauthView"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public U1(ILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public U6(Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;)V
    .locals 3

    const-string v0, "additionalPartnerInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Le/a/v4/s0/m/b/e;->j:Le/a/v4/s0/m/b/e;

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/v4/s0/m/b/e;

    invoke-direct {v0}, Le/a/v4/s0/m/b/e;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_partner_info"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 8
    sget-object v1, Le/a/v4/s0/m/b/e;->i:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
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

.method public V3(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    return-void
.end method

.method public X3(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->g:Le/a/v4/k;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/b0/a/b/a;->Wj(Ljava/lang/Integer;)V

    return-void

    :cond_0
    const-string p1, "avatarXPresenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public X7(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->e:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->e:I

    .line 3
    :goto_0
    iget p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->e:I

    const-string v0, "binding.oauthLayout.tvConfirm"

    if-lez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object p1, p1, Le/a/v4/r0/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->enable(Landroid/view/View;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object p1

    iget-object p1, p1, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object p1, p1, Le/a/v4/r0/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->disable(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public X9(Ljava/lang/String;)V
    .locals 2

    const-string v0, "partnerIntentText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->p:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.oauthLayout.tvPartnerName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Le/a/b0/q/t;->i(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public final disable(Landroid/view/View;)V
    .locals 1

    const-string v0, "$this$disable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3ec28f5c    # 0.38f

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public final enable(Landroid/view/View;)V
    .locals 1

    const-string v0, "$this$enable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public g0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->e:Lcom/truecaller/common/ui/avatar/AvatarXView;

    iget-object v1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->g:Le/a/v4/k;

    const/4 v2, 0x0

    const-string v3, "avatarXPresenter"

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->g:Le/a/v4/k;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Le/a/b0/a/b/a;->pk(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->d:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->n:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from\u2026g.oauthLayout.clRootView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    .line 9
    new-instance v1, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$c;

    invoke-direct {v1, p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$c;-><init>(Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;)V

    .line 10
    iget-object v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    sget v0, Lcom/truecaller/sdk/R$layout;->item_language:I

    .line 13
    sget-object v1, Le/a/v4/s0/a;->c:Le/a/v4/s0/a;

    .line 14
    sget-object v1, Le/a/v4/s0/a;->b:Ljava/util/List;

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 17
    check-cast v3, Le/a/b0/k/c;

    .line 18
    iget-object v3, v3, Le/a/b0/k/c;->a:Ljava/lang/String;

    .line 19
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, v0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 21
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 22
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const-string v1, "binding.oauthLayout.atvLanguage"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 23
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$d;

    invoke-direct {v1, p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$d;-><init>(Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    .line 24
    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 25
    :cond_3
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public g6(Ljava/lang/String;)V
    .locals 1

    const-string v0, "partnerAvatarLetter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->g:Le/a/v4/k;

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

.method public i6(Ljava/lang/String;)V
    .locals 2

    const-string v0, "fullName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->s:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.oauthLayout.tvUserName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l6(Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;)V
    .locals 1

    const-string v0, "partnerDetails"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/v4/s0/m/a/d;->d(Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;)V

    :cond_0
    return-void
.end method

.method public n6(Ljava/lang/String;)V
    .locals 2

    const-string v0, "languageName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/s0/m/a/d;->e()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->e:I

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Le/a/v4/s0/m/a/d;->j()V

    goto :goto_0

    .line 4
    :cond_0
    sget p1, Lcom/truecaller/sdk/R$string;->SdkNoScopeSelectedError:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, p1, v0, v1, v2}, Le/a/p5/s0/g;->S1(Landroid/content/Context;ILjava/lang/CharSequence;II)Landroid/widget/Toast;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->n:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Le/a/v4/s0/m/a/d;->h()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->d:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Le/a/v4/s0/m/a/d;->p()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Ln3/b/a/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Le/a/v4/s0/m/a/d;->f(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    const-string v1, "binding"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Le/a/v4/r0/a;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 4
    invoke-virtual {p0, v0}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/v4/s0/m/a/d;->g(Landroid/os/Bundle;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Le/a/v4/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/e;->b()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/v4/s0/m/a/d;->k(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/s0/m/a/d;->l()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/s0/m/a/d;->m()V

    :cond_0
    return-void
.end method

.method public p4(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "logoUri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->e:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->F(Landroid/net/Uri;)V

    return-void
.end method

.method public final pa()Le/a/v4/r0/a;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v4/r0/a;

    return-object v0
.end method

.method public q9(Ljava/lang/String;)V
    .locals 4

    const-string v0, "termsOfServiceUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.oauthLayout.tvTerms"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/truecaller/sdk/R$string;->SdkProfileTerms:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$h;

    invoke-direct {v1, p1}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$h;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v2

    iget-object v2, v2, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v2, v2, Le/a/v4/r0/i;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v3, v1}, Ln3/k/g/f/b;->b(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->r:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$g;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$g;-><init>(Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/v4/s0/m/a/d;->i()V

    :cond_0
    return-void
.end method

.method public t6()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public t9(Ljava/lang/String;)V
    .locals 2

    const-string v0, "numberWithoutExtension"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->t:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.oauthLayout.tvUserNumber"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public y8(Ljava/lang/String;)V
    .locals 4

    const-string v0, "privacyPolicyUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->q:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.oauthLayout.tvPrivacy"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/truecaller/sdk/R$string;->SdkProfilePrivacy:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$f;

    invoke-direct {v1, p1}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$f;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v2

    iget-object v2, v2, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v2, v2, Le/a/v4/r0/i;->q:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v3, v1}, Ln3/k/g/f/b;->b(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->pa()Le/a/v4/r0/a;

    move-result-object v0

    iget-object v0, v0, Le/a/v4/r0/a;->b:Le/a/v4/r0/i;

    iget-object v0, v0, Le/a/v4/r0/i;->q:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$e;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$e;-><init>(Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public z1(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->g:Le/a/v4/k;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2
    iput-object p1, v0, Le/a/b0/a/b/a;->g:Ljava/lang/Integer;

    return-void

    :cond_0
    const-string p1, "avatarXPresenter"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
