.class public final Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->N5()V
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

    iput-object p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$b;->a:Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$b;->a:Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;

    .line 2
    iget-object v0, v0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->g:Le/a/v4/k;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Le/a/b0/a/b/a;->pk(Z)V

    return-void

    :cond_0
    const-string v0, "avatarXPresenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
