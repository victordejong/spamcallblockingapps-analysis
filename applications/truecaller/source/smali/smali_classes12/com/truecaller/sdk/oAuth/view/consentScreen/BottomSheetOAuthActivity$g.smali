.class public final Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->q9(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$g;->a:Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;

    iput-object p2, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$g;->a:Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;

    iget-object p1, p1, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$g;->b:Ljava/lang/String;

    const-string v1, "tos_clicked"

    invoke-virtual {p1, v1, v0}, Le/a/v4/s0/m/a/d;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
