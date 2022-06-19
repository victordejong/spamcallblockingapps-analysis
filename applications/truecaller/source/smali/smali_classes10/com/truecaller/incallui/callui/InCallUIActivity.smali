.class public final Lcom/truecaller/incallui/callui/InCallUIActivity;
.super Le/a/f/a/i;
.source "SourceFile"

# interfaces
.implements Le/a/f/a/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/incallui/callui/InCallUIActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 U2\u00020\u00012\u00020\u0002:\u0001VB\u0007\u00a2\u0006\u0004\u0008T\u0010\u0012J\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u0008\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0012J\u0019\u0010\u0019\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0012J\u000f\u0010\u001b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0012J\u0019\u0010\u001d\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0017J\u0019\u0010\u001e\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0017J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0012J\u0019\u0010 \u001a\u00020\u00052\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0017J\u0019\u0010!\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0017J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0012J\u000f\u0010\'\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0012J\u0017\u0010*\u001a\u00020\u00052\u0006\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010-\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008-\u0010%J\u000f\u0010.\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008.\u0010\u0012J\u001f\u00102\u001a\u00020\u00052\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00084\u0010\u0012J\u000f\u00105\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00085\u0010\u0012J\u000f\u00106\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00086\u0010\u0012J\u000f\u00107\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00087\u0010\u0012J\u0015\u0010:\u001a\u0008\u0012\u0004\u0012\u00020908H\u0016\u00a2\u0006\u0004\u0008:\u0010;J\u0015\u0010<\u001a\u0008\u0012\u0004\u0012\u00020908H\u0016\u00a2\u0006\u0004\u0008<\u0010;J\u000f\u0010=\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008=\u0010\u0012J\u000f\u0010>\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008>\u0010\u0012J\u000f\u0010?\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008?\u0010\u0012J\u000f\u0010@\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008@\u0010\u0012R\"\u0010H\u001a\u00020A8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\"\u0010O\u001a\u00020I8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008 \u0010J\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR\u0016\u0010S\u001a\u00020P8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008Q\u0010R\u00a8\u0006W"
    }
    d2 = {
        "Lcom/truecaller/incallui/callui/InCallUIActivity;",
        "Ln3/b/a/h;",
        "Le/a/f/a/m;",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "pa",
        "(Landroid/content/Intent;)V",
        "onNewIntent",
        "Landroid/content/Context;",
        "newBase",
        "attachBaseContext",
        "(Landroid/content/Context;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onStart",
        "()V",
        "onResume",
        "",
        "logo",
        "w",
        "(I)V",
        "G0",
        "X0",
        "v0",
        "r5",
        "color",
        "P0",
        "y2",
        "O1",
        "e",
        "x0",
        "",
        "brandName",
        "q1",
        "(Ljava/lang/String;)V",
        "C0",
        "r0",
        "Lcom/truecaller/incallui/service/CallState;",
        "state",
        "W0",
        "(Lcom/truecaller/incallui/service/CallState;)V",
        "profilePicture",
        "P9",
        "y0",
        "Le/a/k/a/k/l;",
        "config",
        "analyticsContext",
        "r2",
        "(Le/a/k/a/k/l;Ljava/lang/String;)V",
        "r1",
        "k2",
        "onBackPressed",
        "J0",
        "Lq3/a/x2/i1;",
        "Le/a/k/a/k/z/b;",
        "Z8",
        "()Lq3/a/x2/i1;",
        "p1",
        "t",
        "onPause",
        "onStop",
        "onDestroy",
        "Le/a/f/a/l;",
        "d",
        "Le/a/f/a/l;",
        "getPresenter",
        "()Le/a/f/a/l;",
        "setPresenter",
        "(Le/a/f/a/l;)V",
        "presenter",
        "Le/a/f/b;",
        "Le/a/f/b;",
        "getInCallUI",
        "()Le/a/f/b;",
        "setInCallUI",
        "(Le/a/f/b;)V",
        "inCallUI",
        "Le/a/f/x/a;",
        "f",
        "Le/a/f/x/a;",
        "binding",
        "<init>",
        "g",
        "a",
        "incallui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final g:Lcom/truecaller/incallui/callui/InCallUIActivity$a;


# instance fields
.field public d:Le/a/f/a/l;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/f/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/f/x/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/incallui/callui/InCallUIActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/incallui/callui/InCallUIActivity$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/incallui/callui/InCallUIActivity;->g:Lcom/truecaller/incallui/callui/InCallUIActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/f/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public C0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->e:Landroidx/constraintlayout/widget/Group;

    const-string v1, "binding.groupAd"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public G0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->g:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    const-string v1, "binding.imageTruecallerLogo"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public J0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->c0()V

    return-void
.end method

.method public O1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/f/x/a;->f:Landroid/widget/ImageView;

    const-string v3, "binding.imagePartnerLogo"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->k:Landroid/view/View;

    const-string v1, "binding.viewLogoDivider"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public P0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/f/x/a;->g:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/imageview/GoldShineImageView;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->h:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/imageview/GoldShineImageView;->setColor(I)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public P9(Ljava/lang/String;)V
    .locals 3

    const-string v0, "profilePicture"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->c:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/truecaller/incallui/callui/InCallUIActivity$c;

    invoke-direct {v2, p0, p1}, Lcom/truecaller/incallui/callui/InCallUIActivity$c;-><init>(Lcom/truecaller/incallui/callui/InCallUIActivity;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->e(Landroid/net/Uri;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;)V

    .line 5
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void

    :cond_0
    const-string p1, "binding"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public W0(Lcom/truecaller/incallui/service/CallState;)V
    .locals 6

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/f/x/a;->b:Landroid/widget/ImageButton;

    const-string v1, "binding.buttonMinimise"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "OUTGOING_CALL_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->K(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 4
    new-instance v2, Ln3/r/a/a;

    invoke-direct {v2, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 5
    sget v0, Lcom/truecaller/incallui/R$id;->view_fragment_container:I

    sget-object v3, Le/a/f/a/b/c;->o:Le/a/f/a/b/c$d;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "callState"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v3, Le/a/f/a/b/c;

    invoke-direct {v3}, Le/a/f/a/b/c;-><init>()V

    .line 8
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v5, "call_state"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {v2, v0, v3, v1}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 12
    invoke-virtual {v2}, Ln3/r/a/f0;->g()I

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 14
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 15
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->K(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.Fragment"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    new-instance v1, Ln3/r/a/f0$a;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p1}, Ln3/r/a/f0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Ln3/r/a/f0;->d(Ln3/r/a/f0$a;)V

    .line 17
    invoke-virtual {v0}, Ln3/r/a/a;->g()I

    :goto_0
    return-void

    :cond_1
    const-string p1, "binding"

    .line 18
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public X0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->h:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    .line 2
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void

    :cond_0
    const-string p1, "binding"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public Z8()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Le/a/k/a/k/z/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    invoke-virtual {v0}, Le/a/k/a/k/c;->getPlayingState()Lq3/a/x2/i1;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 3

    const-string v0, "newBase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3
    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 4
    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Ln3/b/a/h;->attachBaseContext(Landroid/content/Context;)V

    return-void

    .line 8
    :cond_1
    invoke-super {p0, p1}, Ln3/b/a/h;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->f:Landroid/widget/ImageView;

    const-string v1, "binding.imagePartnerLogo"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public k2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Le/a/f/x/a;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    .line 2
    iget-object v0, v0, Le/a/k/a/k/c;->a:Le/a/k/a/k/w;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Le/a/k/a/k/r;

    invoke-virtual {v0}, Le/a/k/a/k/r;->Oj()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/f/x/a;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    const-string v1, "binding.fullscreenVideoPlayer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->d:Le/a/f/a/l;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "supportFragmentManager"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->M()I

    move-result v1

    check-cast v0, Le/a/f/a/n;

    if-lez v1, :cond_0

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/m;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/f/a/m;->J0()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/m;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/f/a/m;->t()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3
    sget v2, Lcom/truecaller/incallui/R$layout;->activity_incallui:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 4
    sget v2, Lcom/truecaller/incallui/R$id;->button_minimise:I

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/ImageButton;

    if-eqz v7, :cond_5

    .line 6
    sget v2, Lcom/truecaller/incallui/R$id;->caller_gradient:I

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;

    if-eqz v8, :cond_5

    .line 8
    sget v2, Lcom/truecaller/incallui/R$id;->full_profile_picture:I

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

    if-eqz v9, :cond_5

    .line 10
    sget v2, Lcom/truecaller/incallui/R$id;->fullscreen_video_player:I

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    if-eqz v10, :cond_5

    .line 12
    sget v2, Lcom/truecaller/incallui/R$id;->group_ad:I

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroidx/constraintlayout/widget/Group;

    if-eqz v11, :cond_5

    .line 14
    sget v2, Lcom/truecaller/incallui/R$id;->guide_with_top_window_inset:I

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v12, :cond_5

    .line 16
    sget v3, Lcom/truecaller/incallui/R$id;->header_barrier:I

    .line 17
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v13, :cond_4

    .line 18
    sget v3, Lcom/truecaller/incallui/R$id;->image_partner_logo:I

    .line 19
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_4

    .line 20
    sget v3, Lcom/truecaller/incallui/R$id;->image_truecaller_logo:I

    .line 21
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    if-eqz v15, :cond_4

    .line 22
    sget v3, Lcom/truecaller/incallui/R$id;->image_truecaller_premium_logo:I

    .line 23
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    if-eqz v16, :cond_4

    .line 24
    move-object/from16 v17, v1

    check-cast v17, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    sget v3, Lcom/truecaller/incallui/R$id;->text_ad:I

    .line 26
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_4

    .line 27
    sget v3, Lcom/truecaller/incallui/R$id;->text_sponsored_ad:I

    .line 28
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_4

    .line 29
    sget v3, Lcom/truecaller/incallui/R$id;->view_fragment_container:I

    .line 30
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Landroid/widget/FrameLayout;

    if-eqz v20, :cond_4

    .line 31
    sget v3, Lcom/truecaller/incallui/R$id;->view_logo_divider:I

    .line 32
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_4

    .line 33
    new-instance v1, Le/a/f/x/a;

    move-object v5, v1

    move-object/from16 v6, v17

    invoke-direct/range {v5 .. v21}, Le/a/f/x/a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageButton;Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Lcom/truecaller/common/ui/imageview/GoldShineImageView;Lcom/truecaller/common/ui/imageview/GoldShineImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/view/View;)V

    const-string v3, "ActivityIncalluiBinding.inflate(layoutInflater)"

    .line 34
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    const-string v3, "binding"

    if-eqz v1, :cond_3

    .line 35
    iget-object v1, v1, Le/a/f/x/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    invoke-virtual {v0, v1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 37
    sget v1, Lcom/truecaller/incallui/R$anim;->fast_slide_in_up:I

    sget v5, Lcom/truecaller/incallui/R$anim;->fast_slide_out_down:I

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    const v1, 0x1020002

    .line 38
    invoke-virtual {v0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v2}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/Guideline;

    const/16 v5, 0x500

    .line 40
    invoke-virtual {v1, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 41
    new-instance v5, Le/a/f/a/j;

    invoke-direct {v5, v2}, Le/a/f/a/j;-><init>(Landroidx/constraintlayout/widget/Guideline;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 42
    invoke-static {v1}, Le/a/p5/s0/f;->J(Landroid/view/View;)V

    .line 43
    invoke-static/range {p0 .. p0}, Le/a/e/a2;->i0(Landroid/app/Activity;)V

    .line 44
    iget-object v1, v0, Lcom/truecaller/incallui/callui/InCallUIActivity;->d:Le/a/f/a/l;

    const-string v2, "presenter"

    if-eqz v1, :cond_2

    check-cast v1, Le/a/f/a/n;

    invoke-virtual {v1, v0}, Le/a/f/a/n;->Y0(Ljava/lang/Object;)V

    .line 45
    iget-object v1, v0, Lcom/truecaller/incallui/callui/InCallUIActivity;->d:Le/a/f/a/l;

    if-eqz v1, :cond_1

    check-cast v1, Le/a/f/a/n;

    .line 46
    iget-object v2, v1, Le/a/f/a/n;->j:Le/a/f/y/c;

    invoke-interface {v2}, Le/a/f/y/c;->h()Lq3/a/w2/h;

    move-result-object v2

    .line 47
    new-instance v5, Le/a/f/a/o;

    invoke-direct {v5, v1, v4}, Le/a/f/a/o;-><init>(Le/a/f/a/n;Ls1/w/d;)V

    invoke-static {v1, v2, v5}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 48
    iget-object v2, v1, Le/a/f/a/n;->n:Le/a/f/w/c;

    invoke-interface {v2}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object v2

    .line 49
    new-instance v5, Le/a/f/a/p;

    invoke-direct {v5, v1, v4}, Le/a/f/a/p;-><init>(Le/a/f/a/n;Ls1/w/d;)V

    invoke-static {v1, v2, v5}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 50
    iget-object v1, v1, Le/a/f/a/n;->o:Le/a/f/w/a;

    check-cast v1, Le/a/f/w/b;

    .line 51
    iget-object v1, v1, Le/a/f/w/b;->b:Le/a/f/z/f;

    check-cast v1, Le/a/f/f;

    .line 52
    iget-object v1, v1, Le/a/f/f;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/v/a;

    const-string v2, "fullScreenAfterCallScreen"

    invoke-interface {v1, v2}, Le/a/i/v/a;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/incallui/callui/InCallUIActivity;->pa(Landroid/content/Intent;)V

    .line 54
    iget-object v1, v0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v1, :cond_0

    iget-object v1, v1, Le/a/f/x/a;->b:Landroid/widget/ImageButton;

    new-instance v2, Lcom/truecaller/incallui/callui/InCallUIActivity$b;

    invoke-direct {v2, v0}, Lcom/truecaller/incallui/callui/InCallUIActivity$b;-><init>(Lcom/truecaller/incallui/callui/InCallUIActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 55
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 56
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_3
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_4
    move v2, v3

    .line 58
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->d:Le/a/f/a/l;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/f/a/n;

    invoke-virtual {v0}, Le/a/f/a/n;->c()V

    .line 2
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/truecaller/incallui/callui/InCallUIActivity;->pa(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    sget v0, Lcom/truecaller/incallui/R$anim;->fast_fade_in:I

    sget v1, Lcom/truecaller/incallui/R$anim;->fast_fade_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 2
    invoke-super {p0}, Ln3/r/a/l;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->e:Le/a/f/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/f/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->d:Le/a/f/a/l;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/f/a/n;

    .line 4
    iget-object v0, v0, Le/a/f/a/n;->j:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->F()V

    goto :goto_0

    :cond_0
    const-string v0, "presenter"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "inCallUI"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->d:Le/a/f/a/l;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/f/a/n;

    .line 3
    iget-object v1, v0, Le/a/f/a/n;->m:Le/a/f/y/v;

    invoke-interface {v1}, Le/a/f/y/v;->H0()V

    .line 4
    iget-object v1, v0, Le/a/f/a/n;->r:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->a()J

    move-result-wide v1

    iput-wide v1, v0, Le/a/f/a/n;->g:J

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onStop()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->d:Le/a/f/a/l;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/f/a/n;

    .line 2
    iget-object v1, v0, Le/a/f/a/n;->m:Le/a/f/y/v;

    invoke-interface {v1}, Le/a/f/y/v;->o1()V

    .line 3
    iget-object v1, v0, Le/a/f/a/n;->p:Le/a/f/z/m0/a;

    iget-object v2, v0, Le/a/f/a/n;->r:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->a()J

    move-result-wide v2

    iget-wide v4, v0, Le/a/f/a/n;->g:J

    sub-long/2addr v2, v4

    invoke-interface {v1, v2, v3}, Le/a/f/z/m0/a;->c(J)V

    .line 4
    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public p1()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Le/a/k/a/k/z/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    invoke-virtual {v0}, Le/a/k/a/k/c;->getPlayingState()Lq3/a/x2/i1;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final pa(Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.truecaller.incallui.callui.PARAM_CONTEXT"

    .line 1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3887cf67

    const-string v4, "presenter"

    const-string v5, "Notification"

    const v6, 0x2d45dd0b

    if-eq v2, v3, :cond_7

    const v3, 0x1590f923

    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "com.truecaller.incallui.callui.ACTION_ANSWER_CALL"

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->d:Le/a/f/a/l;

    if-eqz p1, :cond_6

    check-cast p1, Le/a/f/a/n;

    .line 4
    iget-object v0, p1, Le/a/f/a/n;->m:Le/a/f/y/v;

    invoke-interface {v0}, Le/a/f/y/v;->n1()V

    .line 5
    iget-object v0, p1, Le/a/f/a/n;->j:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->q()V

    if-nez v1, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq v0, v6, :cond_5

    goto :goto_2

    .line 7
    :cond_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p1, Le/a/f/a/n;->p:Le/a/f/z/m0/a;

    sget-object v0, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->ANSWER_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    invoke-interface {p1, v0}, Le/a/f/z/m0/a;->i(Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;)V

    goto :goto_2

    .line 8
    :cond_6
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v2, "com.truecaller.incallui.callui.ACTION_SHOW"

    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->d:Le/a/f/a/l;

    if-eqz p1, :cond_a

    check-cast p1, Le/a/f/a/n;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_8

    goto :goto_2

    .line 11
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq v0, v6, :cond_9

    goto :goto_2

    .line 12
    :cond_9
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p1, Le/a/f/a/n;->p:Le/a/f/z/m0/a;

    sget-object v0, Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;->CONTENT_CLICK:Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;

    invoke-interface {p1, v0}, Le/a/f/z/m0/a;->i(Lcom/truecaller/incallui/utils/notification/NotificationUIEvent;)V

    goto :goto_2

    .line 13
    :cond_a
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_2
    return-void
.end method

.method public q1(Ljava/lang/String;)V
    .locals 4

    const-string v0, "brandName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/f/x/a;->i:Landroid/widget/TextView;

    const-string v3, "binding.textAd"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz p1, :cond_0

    iget-object p1, p1, Le/a/f/x/a;->e:Landroidx/constraintlayout/widget/Group;

    const-string v0, "binding.groupAd"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public r0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->b:Landroid/widget/ImageButton;

    const-string v2, "binding.buttonMinimise"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3
    new-instance v2, Ln3/r/a/a;

    invoke-direct {v2, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    sget v0, Lcom/truecaller/incallui/R$id;->view_fragment_container:I

    sget-object v3, Le/a/f/a/a/a;->j:Le/a/f/a/a/a$c;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v3, Le/a/f/a/a/a;

    invoke-direct {v3}, Le/a/f/a/a/a;-><init>()V

    .line 7
    invoke-virtual {v2, v0, v3, v1}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 8
    invoke-virtual {v2}, Ln3/r/a/a;->g()I

    return-void

    :cond_0
    const-string v0, "binding"

    .line 9
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public r1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    const-string v1, "binding.fullscreenVideoPlayer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public r2(Le/a/k/a/k/l;Ljava/lang/String;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->d:Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    invoke-virtual {v0, p1, p2}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;->g(Le/a/k/a/k/l;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public r5()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/f/x/a;->g:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    invoke-virtual {v0}, Lcom/truecaller/common/ui/imageview/GoldShineImageView;->h()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->h:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    invoke-virtual {v0}, Lcom/truecaller/common/ui/imageview/GoldShineImageView;->h()V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public t()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public v0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->h:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    const-string v1, "binding.imageTruecallerPremiumLogo"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public w(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->g:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    .line 2
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void

    :cond_0
    const-string p1, "binding"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public x0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->k:Landroid/view/View;

    .line 2
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {p0, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public y0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/f/x/a;->c:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

    const-string v1, "binding.fullProfilePicture"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public y2(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Le/a/f/x/a;->g:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Le/a/f/x/a;->f:Landroid/widget/ImageView;

    const-string v0, "binding.imagePartnerLogo"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/incallui/callui/InCallUIActivity;->f:Le/a/f/x/a;

    if-eqz p1, :cond_0

    iget-object p1, p1, Le/a/f/x/a;->k:Landroid/view/View;

    const-string v0, "binding.viewLogoDivider"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
