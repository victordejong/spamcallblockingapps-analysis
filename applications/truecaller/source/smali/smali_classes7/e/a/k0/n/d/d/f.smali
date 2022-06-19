.class public final Le/a/k0/n/d/d/f;
.super Le/a/k0/n/d/d/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0010J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0011\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Le/a/k0/n/d/d/f;",
        "Le/a/k0/n/d/d/b;",
        "",
        "ZA",
        "()Ljava/lang/String;",
        "YA",
        "XA",
        "WA",
        "",
        "QA",
        "()Ljava/lang/Integer;",
        "",
        "OA",
        "()Z",
        "Ls1/s;",
        "bB",
        "()V",
        "aB",
        "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "analyticsType",
        "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "cB",
        "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/k0/n/d/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public OA()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public QA()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public WA()Ljava/lang/String;
    .locals 2

    const v0, 0x7f120f6d

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.start\u2026recording_terms_negative)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public XA()Ljava/lang/String;
    .locals 2

    const v0, 0x7f120f6e

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.start\u2026recording_terms_positive)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public YA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f120f6f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120f6c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ZA()Ljava/lang/String;
    .locals 2

    const v0, 0x7f120f70

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.start\u2026allrecording_terms_title)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public aB()V
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;->TERMS_DECLINED:Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;

    invoke-virtual {p0, v0}, Le/a/k0/n/d/d/b;->dB(Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;)V

    .line 2
    invoke-super {p0}, Le/a/d5/g/o;->aB()V

    return-void
.end method

.method public bB()V
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;->TERMS_ACCEPTED:Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;

    invoke-virtual {p0, v0}, Le/a/k0/n/d/d/b;->dB(Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;)V

    .line 2
    invoke-super {p0}, Le/a/d5/g/o;->bB()V

    return-void
.end method

.method public cB()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
