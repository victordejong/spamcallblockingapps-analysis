.class public final Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/r/a/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity$a;->a:Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity$a;->a:Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;

    sget-object p2, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;->DEFAULT_DIALER_CONTINUE:Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;

    invoke-virtual {p1, p2}, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;->p6(Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;)V

    return-void
.end method
