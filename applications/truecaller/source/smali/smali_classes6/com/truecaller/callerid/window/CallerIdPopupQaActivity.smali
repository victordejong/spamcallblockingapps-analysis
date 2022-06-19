.class public final Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008#\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008a\u0010\u0010J\u0013\u0010\u0003\u001a\u00020\u0002*\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0013\u0010\n\u001a\u00020\u0007H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001b\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0002H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R%\u0010\u0015\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R%\u0010\u0019\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0014\u001a\u0004\u0008\u0018\u0010\u0016R%\u0010\u001b\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0014\u001a\u0004\u0008\u001b\u0010\u0016R%\u0010\u001d\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0014\u001a\u0004\u0008\u001d\u0010\u0016R%\u0010\u001f\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0014\u001a\u0004\u0008\u001f\u0010\u0016R%\u0010\"\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0014\u001a\u0004\u0008!\u0010\u0016R\u001d\u0010\'\u001a\u00020#8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u0014\u001a\u0004\u0008%\u0010&R%\u0010)\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0014\u001a\u0004\u0008)\u0010\u0016R%\u0010,\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010\u0014\u001a\u0004\u0008+\u0010\u0016R%\u0010/\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\u0014\u001a\u0004\u0008.\u0010\u0016R\u0016\u0010\u000c\u001a\u00020\u00028\u0002@\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00080\u00101R%\u00103\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010\u0014\u001a\u0004\u00083\u0010\u0016R%\u00106\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u0010\u0014\u001a\u0004\u00085\u0010\u0016R%\u00109\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u0010\u0014\u001a\u0004\u00088\u0010\u0016R%\u0010;\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010\u0014\u001a\u0004\u0008;\u0010\u0016R%\u0010>\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010\u0014\u001a\u0004\u0008=\u0010\u0016R%\u0010C\u001a\n \u0012*\u0004\u0018\u00010?0?8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010\u0014\u001a\u0004\u0008A\u0010BR%\u0010F\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010\u0014\u001a\u0004\u0008E\u0010\u0016R%\u0010I\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008G\u0010\u0014\u001a\u0004\u0008H\u0010\u0016R\u0016\u0010K\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u00101R%\u0010M\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u0010\u0014\u001a\u0004\u0008M\u0010\u0016R%\u0010P\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u0010\u0014\u001a\u0004\u0008O\u0010\u0016R%\u0010R\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Q\u0010\u0014\u001a\u0004\u0008R\u0010\u0016R%\u0010U\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008S\u0010\u0014\u001a\u0004\u0008T\u0010\u0016R%\u0010W\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u0010\u0014\u001a\u0004\u0008W\u0010\u0016R%\u0010Z\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008X\u0010\u0014\u001a\u0004\u0008Y\u0010\u0016R%\u0010]\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008[\u0010\u0014\u001a\u0004\u0008\\\u0010\u0016R%\u0010`\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010\u0014\u001a\u0004\u0008_\u0010\u0016\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006b"
    }
    d2 = {
        "Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;",
        "Ln3/b/a/h;",
        "",
        "ra",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "sa",
        "(Ls1/w/d;)Ljava/lang/Object;",
        "phoneNumber",
        "pa",
        "(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;",
        "onDestroy",
        "()V",
        "Landroidx/appcompat/widget/SwitchCompat;",
        "kotlin.jvm.PlatformType",
        "s",
        "Ls1/g;",
        "isPrioritySwitch",
        "()Landroidx/appcompat/widget/SwitchCompat;",
        "l",
        "getHasSpamReportsSwitch",
        "hasSpamReportsSwitch",
        "n",
        "isBusinessSwitch",
        "t",
        "isSearchingSwitch",
        "v",
        "isVerifiedBusinessSwitch",
        "i",
        "getHasNameSwitch",
        "hasNameSwitch",
        "Le/a/j2;",
        "a",
        "qa",
        "()Le/a/j2;",
        "trueGraph",
        "u",
        "isSpamSwitch",
        "d",
        "getHasAddressSwitch",
        "hasAddressSwitch",
        "f",
        "getHasAvatarSwitch",
        "hasAvatarSwitch",
        "c",
        "Ljava/lang/String;",
        "w",
        "isVerifiedSwitch",
        "j",
        "getHasSearchWarnings",
        "hasSearchWarnings",
        "A",
        "getUseLongText",
        "useLongText",
        "q",
        "isPhonebookContact",
        "B",
        "getShowCallReasonPicker",
        "showCallReasonPicker",
        "Landroid/widget/Button;",
        "y",
        "getShowPopup",
        "()Landroid/widget/Button;",
        "showPopup",
        "g",
        "getHasIncomingVideoId",
        "hasIncomingVideoId",
        "m",
        "getHasTagSwitch",
        "hasTagSwitch",
        "b",
        "loremIpsum",
        "p",
        "isGoldSwitch",
        "e",
        "getHasAltNameSwitch",
        "hasAltNameSwitch",
        "r",
        "isPremiumSwitch",
        "k",
        "getHasSpamCategorySwitch",
        "hasSpamCategorySwitch",
        "o",
        "isCredPrivilegeSwitch",
        "z",
        "getShowTimezone",
        "showTimezone",
        "x",
        "getShowAd",
        "showAd",
        "h",
        "getHasJobSwitch",
        "hasJobSwitch",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic C:I


# instance fields
.field public final A:Ls1/g;

.field public final B:Ls1/g;

.field public final a:Ls1/g;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Ls1/g;

.field public final i:Ls1/g;

.field public final j:Ls1/g;

.field public final k:Ls1/g;

.field public final l:Ls1/g;

.field public final m:Ls1/g;

.field public final n:Ls1/g;

.field public final o:Ls1/g;

.field public final p:Ls1/g;

.field public final q:Ls1/g;

.field public final r:Ls1/g;

.field public final s:Ls1/g;

.field public final t:Ls1/g;

.field public final u:Ls1/g;

.field public final v:Ls1/g;

.field public final w:Ls1/g;

.field public final x:Ls1/g;

.field public final y:Ls1/g;

.field public final z:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$f;

    invoke-direct {v0, p0}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$f;-><init>(Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->a:Ls1/g;

    const-string v0, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, \n        |quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse \n        |cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est \n        |laborum."

    .line 3
    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->b:Ljava/lang/String;

    const-string v0, "+46704506210"

    .line 4
    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->c:Ljava/lang/String;

    const v0, 0x7f0a0909

    .line 5
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->d:Ls1/g;

    const v0, 0x7f0a090a

    .line 6
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->e:Ls1/g;

    const v0, 0x7f0a090b

    .line 7
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->f:Ls1/g;

    const v0, 0x7f0a0912

    .line 8
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->g:Ls1/g;

    const v0, 0x7f0a0913

    .line 9
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->h:Ls1/g;

    const v0, 0x7f0a0914

    .line 10
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->i:Ls1/g;

    const v0, 0x7f0a0916

    .line 11
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->j:Ls1/g;

    const v0, 0x7f0a0918

    .line 12
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->k:Ls1/g;

    const v0, 0x7f0a0919

    .line 13
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->l:Ls1/g;

    const v0, 0x7f0a091a

    .line 14
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->m:Ls1/g;

    const v0, 0x7f0a0a66

    .line 15
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->n:Ls1/g;

    const v0, 0x7f0a0a67

    .line 16
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->o:Ls1/g;

    const v0, 0x7f0a0a68

    .line 17
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->p:Ls1/g;

    const v0, 0x7f0a0a6d

    .line 18
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->q:Ls1/g;

    const v0, 0x7f0a0a6e

    .line 19
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->r:Ls1/g;

    const v0, 0x7f0a0a6f

    .line 20
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->s:Ls1/g;

    const v0, 0x7f0a0a70

    .line 21
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->t:Ls1/g;

    const v0, 0x7f0a0a71

    .line 22
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->u:Ls1/g;

    const v0, 0x7f0a0a72

    .line 23
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->v:Ls1/g;

    const v0, 0x7f0a0a73

    .line 24
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->w:Ls1/g;

    const v0, 0x7f0a0ff2

    .line 25
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->x:Ls1/g;

    const v0, 0x7f0a0fff

    .line 26
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->y:Ls1/g;

    const v0, 0x7f0a1006

    .line 27
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->z:Ls1/g;

    const v0, 0x7f0a1345

    .line 28
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->A:Ls1/g;

    const v0, 0x7f0a0ff4

    .line 29
    invoke-static {p0, v0}, Le/a/p5/s0/f;->q(Landroid/app/Activity;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->B:Ls1/g;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->qa()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v0

    const-string v1, "trueGraph.deviceInfoHelper()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Le/a/p5/g;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Le/a/p5/g;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 5
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002a

    .line 6
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 7
    iget-object p1, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->y:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 8
    new-instance v0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$b;

    invoke-direct {v0, p0}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$b;-><init>(Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    new-instance v3, Le/a/d0/a/c;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Le/a/d0/a/c;-><init>(Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 2
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void
.end method

.method public final synthetic pa(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$a;

    iget v2, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$a;->e:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$a;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$a;-><init>(Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;Ls1/w/d;)V

    :goto_0
    iget-object v0, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$a;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$a;->h:Ljava/lang/Object;

    check-cast v3, Le/a/k/h;

    iget-object v1, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$a;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-string v0, "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4"

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->qa()Le/a/j2;

    move-result-object v4

    invoke-interface {v4}, Le/a/j2;->y()Le/a/k/h;

    move-result-object v4

    .line 5
    new-instance v15, Le/a/k/l/b;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 7
    new-instance v16, Lcom/truecaller/videocallerid/data/VideoDetails;

    const-wide/16 v8, 0x4d2

    const-wide/16 v10, 0x162e

    const/4 v12, 0x0

    move-object/from16 v6, v16

    move-object v7, v0

    invoke-direct/range {v6 .. v12}, Lcom/truecaller/videocallerid/data/VideoDetails;-><init>(Ljava/lang/String;JJZ)V

    const/16 v17, 0x0

    const/16 v18, 0x20

    const-string v7, "1234"

    const-string v11, "abc"

    move-object v6, v15

    move-object/from16 v8, p1

    move-wide v9, v13

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move/from16 v14, v18

    .line 8
    invoke-direct/range {v6 .. v14}, Le/a/k/l/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/truecaller/videocallerid/data/VideoDetails;Lcom/truecaller/videocallerid/data/VideoType;I)V

    iput-object v0, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$a;->g:Ljava/lang/Object;

    iput-object v4, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$a;->h:Ljava/lang/Object;

    iput v5, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$a;->e:I

    .line 9
    invoke-interface {v4, v15, v1}, Le/a/k/h;->S(Le/a/k/l/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    move-object v1, v0

    move-object v3, v4

    .line 10
    :goto_1
    new-instance v0, Le/a/k/c/p$b;

    sget-object v4, Ln3/m0/q;->b:Ln3/m0/q;

    invoke-direct {v0, v1, v4}, Le/a/k/c/p$b;-><init>(Ljava/lang/String;Ln3/m0/q;)V

    invoke-interface {v3, v0}, Le/a/k/h;->t(Le/a/k/c/p;)V

    .line 11
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

.method public final qa()Le/a/j2;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j2;

    return-object v0
.end method

.method public final ra(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->A:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "useLongText"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->b:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public final sa(Ls1/w/d;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;

    iget v3, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;

    invoke-direct {v2, v1, v0}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;-><init>(Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;Ls1/w/d;)V

    :goto_0
    iget-object v0, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->e:I

    const-string v5, "showCallReasonPicker"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v7, :cond_1

    iget v3, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->l:I

    iget-object v4, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->k:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/data/entity/Number;

    iget-object v7, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->j:Ljava/lang/Object;

    check-cast v7, Le/a/d0/a/a;

    iget-object v8, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->i:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/data/entity/Contact;

    iget-object v9, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->h:Ljava/lang/Object;

    check-cast v9, Le/a/d0/a/a;

    iget-object v2, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->g:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Le/a/d0/a/a;

    sget-object v4, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$e;->a:Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$e;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->qa()Le/a/j2;

    move-result-object v8

    invoke-interface {v8}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v8

    const-string v9, "trueGraph.callingSettings()"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4, v8}, Le/a/d0/a/a;-><init>(Landroid/content/Context;Le/a/d0/a/y$b;Lcom/truecaller/settings/CallingSettings;)V

    .line 5
    :try_start_0
    invoke-virtual {v0}, Le/a/d0/a/y;->h()V

    .line 6
    invoke-virtual {v0}, Le/a/d0/a/y;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v4, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->c:Ljava/lang/String;

    .line 8
    new-instance v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    invoke-direct {v8}, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;-><init>()V

    const-string v9, "themobile"

    .line 9
    iput-object v9, v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->carrier:Ljava/lang/String;

    const-string v9, "SE"

    .line 10
    iput-object v9, v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->countryCode:Ljava/lang/String;

    .line 11
    sput-object v9, Lcom/truecaller/data/entity/Number;->c:Ljava/lang/String;

    const-string v10, ""

    if-nez v4, :cond_3

    move-object v11, v10

    goto :goto_1

    :cond_3
    move-object v11, v4

    .line 12
    :goto_1
    iput-object v11, v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    const-string v11, "+46"

    .line 13
    invoke-static {v4, v11}, Lw3/c/a/a/a/h;->w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "0"

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    move-object v4, v10

    :cond_5
    :goto_2
    iput-object v4, v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->rawNumberFormat:Ljava/lang/String;

    const-string v11, "openPhone"

    .line 14
    iput-object v11, v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->type:Ljava/lang/String;

    .line 15
    iput-object v4, v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->nationalFormat:Ljava/lang/String;

    const-string v4, "46"

    .line 16
    iput-object v4, v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->dialingCode:Ljava/lang/String;

    const-string v11, "MOBILE"

    .line 17
    iput-object v11, v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->numberType:Ljava/lang/String;

    const-string v12, "2"

    .line 18
    iput-object v12, v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->telType:Ljava/lang/String;

    .line 19
    iput-object v10, v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->telTypeLabel:Ljava/lang/String;

    .line 20
    new-instance v10, Lcom/truecaller/data/entity/Number;

    invoke-direct {v10, v8}, Lcom/truecaller/data/entity/Number;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;)V

    const-string v8, "Number.buildTestNumberObject(phoneNumber)"

    .line 21
    invoke-static {v10, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v8, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->B:Ls1/g;

    invoke-interface {v8}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/SwitchCompat;

    .line 23
    invoke-static {v8, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v8

    xor-int/2addr v8, v7

    .line 24
    new-instance v13, Lcom/truecaller/data/dto/ContactDto$Contact;

    invoke-direct {v13}, Lcom/truecaller/data/dto/ContactDto$Contact;-><init>()V

    new-array v7, v7, [Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    .line 25
    new-instance v14, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    invoke-direct {v14}, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;-><init>()V

    .line 26
    iget-object v15, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->c:Ljava/lang/String;

    iput-object v15, v14, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    .line 27
    iput-object v15, v14, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->rawNumberFormat:Ljava/lang/String;

    .line 28
    iput-object v4, v14, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->dialingCode:Ljava/lang/String;

    const-string v4, "Mobile carrier"

    .line 29
    invoke-virtual {v1, v4}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->ra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->carrier:Ljava/lang/String;

    .line 30
    iput-object v9, v14, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->countryCode:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v11}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->ra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->numberType:Ljava/lang/String;

    .line 32
    iput-object v12, v14, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->telType:Ljava/lang/String;

    .line 33
    iget-object v4, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->l:Ls1/g;

    invoke-interface {v4}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    const-string v11, "hasSpamReportsSwitch"

    .line 34
    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "123"

    iput-object v4, v14, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->spamScore:Ljava/lang/String;

    :cond_6
    aput-object v14, v7, v6

    .line 35
    invoke-static {v7}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v13, Lcom/truecaller/data/dto/ContactDto$Contact;->phones:Ljava/util/List;

    .line 36
    new-instance v4, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v4, v13}, Lcom/truecaller/data/entity/Contact;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact;)V

    .line 37
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->n:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v12, "isBusinessSwitch"

    .line 38
    invoke-static {v7, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    const-string v12, "True Software Scandinavia AB"

    if-eqz v7, :cond_7

    .line 39
    iget v7, v4, Lcom/truecaller/data/entity/Contact;->r:I

    add-int/lit8 v7, v7, 0x40

    .line 40
    iput v7, v4, Lcom/truecaller/data/entity/Contact;->r:I

    .line 41
    invoke-virtual {v1, v12}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->ra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/truecaller/data/entity/Contact;->N0(Ljava/lang/String;)V

    .line 42
    :cond_7
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->v:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v13, "isVerifiedBusinessSwitch"

    .line 43
    invoke-static {v7, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 44
    iget v7, v4, Lcom/truecaller/data/entity/Contact;->r:I

    add-int/lit16 v7, v7, 0x80

    .line 45
    iput v7, v4, Lcom/truecaller/data/entity/Contact;->r:I

    .line 46
    invoke-virtual {v1, v12}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->ra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/truecaller/data/entity/Contact;->N0(Ljava/lang/String;)V

    .line 47
    :cond_8
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->o:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v13, "isCredPrivilegeSwitch"

    .line 48
    invoke-static {v7, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 49
    iget v7, v4, Lcom/truecaller/data/entity/Contact;->r:I

    add-int/lit16 v7, v7, 0x100

    .line 50
    iput v7, v4, Lcom/truecaller/data/entity/Contact;->r:I

    .line 51
    :cond_9
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->i:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v13, "hasNameSwitch"

    .line 52
    invoke-static {v7, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "Alan Mamedi"

    invoke-virtual {v1, v7}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->ra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/truecaller/data/entity/Contact;->S0(Ljava/lang/String;)V

    .line 53
    :cond_a
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->e:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v13, "hasAltNameSwitch"

    .line 54
    invoke-static {v7, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "Bruce Wayne"

    invoke-virtual {v1, v7}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->ra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/truecaller/data/entity/Contact;->L0(Ljava/lang/String;)V

    .line 55
    :cond_b
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->h:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v13, "hasJobSwitch"

    .line 56
    invoke-static {v7, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 57
    invoke-virtual {v1, v12}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->ra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/truecaller/data/entity/Contact;->N0(Ljava/lang/String;)V

    const-string v7, "CEO"

    .line 58
    invoke-virtual {v1, v7}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->ra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/truecaller/data/entity/Contact;->R0(Ljava/lang/String;)V

    .line 59
    :cond_c
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->d:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v12, "hasAddressSwitch"

    .line 60
    invoke-static {v7, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 61
    new-instance v7, Lcom/truecaller/data/entity/Address;

    invoke-direct {v7}, Lcom/truecaller/data/entity/Address;-><init>()V

    const-string v12, "Stockholm"

    .line 62
    invoke-virtual {v1, v12}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->ra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/truecaller/data/entity/Address;->setCity(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v7, v9}, Lcom/truecaller/data/entity/Address;->setCountryCode(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4, v7}, Lcom/truecaller/data/entity/Contact;->b(Lcom/truecaller/data/entity/Address;)V

    .line 65
    :cond_d
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->f:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v9, "hasAvatarSwitch"

    .line 66
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 67
    iget-object v7, v4, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v7, Lcom/truecaller/data/dto/ContactDto$Contact;

    const-string v9, "https://storage.googleapis.com/tc-images-eu/myview/1/e9118ec2a5b4fdf1ab572ab98362bd74/3"

    iput-object v9, v7, Lcom/truecaller/data/dto/ContactDto$Contact;->image:Ljava/lang/String;

    .line 68
    :cond_e
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->m:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v9, "hasTagSwitch"

    .line 69
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_f

    new-instance v7, Lcom/truecaller/data/entity/Tag;

    invoke-direct {v7}, Lcom/truecaller/data/entity/Tag;-><init>()V

    sget-object v9, Ls1/c0/c;->b:Ls1/c0/c$a;

    const/16 v12, 0xc

    const/4 v13, 0x1

    invoke-virtual {v9, v13, v12}, Ls1/c0/c$a;->d(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/truecaller/data/entity/Tag;->setValue(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/truecaller/data/entity/Contact;->g(Lcom/truecaller/data/entity/Tag;)V

    .line 70
    :cond_f
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->z:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v9, "showTimezone"

    .line 71
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 72
    new-instance v7, Lcom/truecaller/data/entity/Address;

    invoke-direct {v7}, Lcom/truecaller/data/entity/Address;-><init>()V

    const-string v9, "India"

    .line 73
    invoke-virtual {v1, v9}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->ra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/truecaller/data/entity/Address;->setCity(Ljava/lang/String;)V

    const-string v9, "IN"

    .line 74
    invoke-virtual {v7, v9}, Lcom/truecaller/data/entity/Address;->setCountryCode(Ljava/lang/String;)V

    const-string v9, "+05:30"

    .line 75
    invoke-virtual {v7, v9}, Lcom/truecaller/data/entity/Address;->setTimeZone(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4, v7}, Lcom/truecaller/data/entity/Contact;->b(Lcom/truecaller/data/entity/Address;)V

    .line 77
    :cond_10
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->r:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v9, "isPremiumSwitch"

    .line 78
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Lcom/truecaller/data/entity/Contact$PremiumLevel;->REGULAR:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 79
    iput-object v7, v4, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 80
    :cond_11
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->p:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v9, "isGoldSwitch"

    .line 81
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_12

    sget-object v7, Lcom/truecaller/data/entity/Contact$PremiumLevel;->GOLD:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 82
    iput-object v7, v4, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 83
    :cond_12
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->w:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v9, "isVerifiedSwitch"

    .line 84
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 85
    iget v7, v4, Lcom/truecaller/data/entity/Contact;->r:I

    add-int/lit8 v7, v7, 0x2

    .line 86
    iput v7, v4, Lcom/truecaller/data/entity/Contact;->r:I

    .line 87
    :cond_13
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->u:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v9, "isSpamSwitch"

    .line 88
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 89
    iget-object v7, v4, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v7, Lcom/truecaller/data/dto/ContactDto$Contact;

    const-string v9, "SPAMMER"

    iput-object v9, v7, Lcom/truecaller/data/dto/ContactDto$Contact;->spamType:Ljava/lang/String;

    .line 90
    :cond_14
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->l:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    .line 91
    invoke-static {v7, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_15

    const/16 v7, 0x7b

    .line 92
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 93
    iget-object v7, v4, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v7, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object v9, v7, Lcom/truecaller/data/dto/ContactDto$Contact;->spamScore:Ljava/lang/Number;

    .line 94
    :cond_15
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->k:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v9, "hasSpamCategorySwitch"

    .line 95
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_16

    new-instance v7, Lcom/truecaller/data/entity/SpamData;

    invoke-direct {v7}, Lcom/truecaller/data/entity/SpamData;-><init>()V

    .line 96
    iget-object v9, v4, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v9, Lcom/truecaller/data/dto/ContactDto$Contact;

    const-string v11, "1"

    iput-object v11, v9, Lcom/truecaller/data/dto/ContactDto$Contact;->spamCategoryIds:Ljava/lang/String;

    .line 97
    iput-object v7, v4, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    .line 98
    :cond_16
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->s:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v9, "isPrioritySwitch"

    .line 99
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 100
    iget v7, v4, Lcom/truecaller/data/entity/Contact;->r:I

    add-int/lit8 v7, v7, 0x10

    .line 101
    iput v7, v4, Lcom/truecaller/data/entity/Contact;->r:I

    .line 102
    :cond_17
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->q:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v9, "isPhonebookContact"

    .line 103
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_18

    const-wide/16 v11, 0x4d2

    .line 104
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v11, v12}, Ljava/lang/Long;-><init>(J)V

    .line 105
    invoke-virtual {v4, v7}, Lcom/truecaller/data/entity/Contact;->T0(Ljava/lang/Long;)V

    .line 106
    :cond_18
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->j:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v9, "hasSearchWarnings"

    .line 107
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 108
    new-instance v7, Lcom/truecaller/data/entity/SearchWarning;

    invoke-direct {v7}, Lcom/truecaller/data/entity/SearchWarning;-><init>()V

    const-string v9, "3"

    invoke-virtual {v7, v9}, Lcom/truecaller/data/entity/SearchWarning;->setId(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/truecaller/data/entity/Contact;->e(Lcom/truecaller/data/entity/SearchWarning;)V

    .line 109
    :cond_19
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->g:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    const-string v9, "hasIncomingVideoId"

    .line 110
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 111
    iget-object v7, v1, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->c:Ljava/lang/String;

    iput-object v1, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->g:Ljava/lang/Object;

    iput-object v0, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->h:Ljava/lang/Object;

    iput-object v4, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->i:Ljava/lang/Object;

    iput-object v0, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->j:Ljava/lang/Object;

    iput-object v10, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->k:Ljava/lang/Object;

    iput v8, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->l:I

    const/4 v9, 0x1

    iput v9, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$c;->e:I

    invoke-virtual {v1, v7, v2}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->pa(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_1a

    return-object v3

    :cond_1a
    move-object v7, v0

    move-object v9, v7

    move-object v2, v1

    move v3, v8

    move-object v8, v4

    move-object v4, v10

    :goto_3
    move v11, v3

    move-object v13, v4

    move-object v0, v7

    move-object/from16 v18, v8

    goto :goto_4

    .line 112
    :cond_1b
    sget-object v11, Lq3/a/h1;->a:Lq3/a/h1;

    new-instance v14, Le/a/d0/a/c;

    const/4 v2, 0x0

    invoke-direct {v14, v1, v2}, Le/a/d0/a/c;-><init>(Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;Ls1/w/d;)V

    const/4 v13, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    invoke-static/range {v11 .. v16}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-object v9, v0

    move-object v2, v1

    move-object/from16 v18, v4

    move v11, v8

    move-object v13, v10

    :goto_4
    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    .line 113
    iget-object v3, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->B:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    .line 114
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 115
    invoke-virtual {v2}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->qa()Le/a/j2;

    move-result-object v3

    invoke-interface {v3}, Le/a/j2;->J()Le/a/o/c;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Le/a/o/c;->I(Z)V

    goto :goto_5

    .line 116
    :cond_1c
    invoke-virtual {v2}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->qa()Le/a/j2;

    move-result-object v3

    invoke-interface {v3}, Le/a/j2;->J()Le/a/o/c;

    move-result-object v3

    invoke-interface {v3, v6}, Le/a/o/c;->I(Z)V

    .line 117
    :goto_5
    sget-object v3, Ls1/s;->a:Ls1/s;

    .line 118
    sget-object v20, Lcom/truecaller/blocking/FilterMatch;->j:Lcom/truecaller/blocking/FilterMatch;

    .line 119
    new-instance v4, Le/a/d0/v;

    const/4 v15, 0x0

    const-string v19, ""

    move-object v10, v4

    invoke-direct/range {v10 .. v20}, Le/a/d0/v;-><init>(IILcom/truecaller/data/entity/Number;IZJLcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/blocking/FilterMatch;)V

    .line 120
    iget-object v5, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->t:Ls1/g;

    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/SwitchCompat;

    const-string v6, "isSearchingSwitch"

    .line 121
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    iput-boolean v5, v4, Le/a/d0/v;->k:Z

    .line 122
    invoke-virtual {v0, v4}, Le/a/d0/a/y;->i(Le/a/d0/v;)V

    .line 123
    iget-object v0, v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->x:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    const-string v4, "showAd"

    .line 124
    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$d;

    invoke-direct {v4, v2, v9}, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$d;-><init>(Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;Le/a/d0/a/a;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-object v3

    :catch_0
    move-exception v0

    .line 126
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Please, make sure you\'ve given DRAW OVER OTHER APPS permission. It might be a cause for "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
