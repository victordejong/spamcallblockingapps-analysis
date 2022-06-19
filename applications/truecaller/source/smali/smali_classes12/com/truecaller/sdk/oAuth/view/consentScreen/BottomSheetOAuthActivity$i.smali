.class public final Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$i;
.super Ln3/g0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->S1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$i;->a:Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;

    invoke-direct {p0}, Ln3/g0/p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ln3/g0/m;)V
    .locals 1

    const-string v0, "transition"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$i;->a:Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$i;->a:Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;

    iget-object p1, p1, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/v4/s0/m/a/d;->n()V

    :cond_0
    return-void
.end method
