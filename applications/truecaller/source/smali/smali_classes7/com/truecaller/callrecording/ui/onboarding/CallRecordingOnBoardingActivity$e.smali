.class public final Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;->ob()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/common/ui/dialogs/StartupXDialogState;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity$e;->b:Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity$e;->b:Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;

    sget-object v0, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;->DISMISSED:Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;

    invoke-virtual {p1, v0}, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;->p6(Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;)V

    .line 4
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
