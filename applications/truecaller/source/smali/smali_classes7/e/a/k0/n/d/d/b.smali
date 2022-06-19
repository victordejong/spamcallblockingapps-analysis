.class public abstract Le/a/k0/n/d/d/b;
.super Le/a/d5/g/o;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0004\u00a2\u0006\u0004\u0008\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Le/a/k0/n/d/d/b;",
        "Le/a/d5/g/o;",
        "Landroid/content/DialogInterface;",
        "dialog",
        "Ls1/s;",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;",
        "action",
        "dB",
        "(Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;)V",
        "",
        "k",
        "Z",
        "dismissedByAction",
        "<init>",
        "()V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/d5/g/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final dB(Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    instance-of v1, v0, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener;->p6(Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;)V

    :cond_1
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/a/k0/n/d/d/b;->k:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Le/a/d5/g/o;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-boolean p1, p0, Le/a/k0/n/d/d/b;->k:Z

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    instance-of v0, p1, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener;

    if-eqz p1, :cond_1

    .line 4
    sget-object v0, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;->DISMISSED:Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;

    invoke-interface {p1, v0}, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener;->p6(Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;)V

    :cond_1
    return-void
.end method
