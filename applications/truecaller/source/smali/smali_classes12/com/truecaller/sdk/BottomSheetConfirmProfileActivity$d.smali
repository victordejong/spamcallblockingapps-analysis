.class public final Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$d;
.super Ln3/g0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->M5(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$d;->a:Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;

    iput-boolean p2, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$d;->b:Z

    invoke-direct {p0}, Ln3/g0/p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ln3/g0/m;)V
    .locals 1

    const-string v0, "transition"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$d;->a:Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;

    .line 2
    sget v0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->g:I

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->pa()Le/a/v4/r0/b;

    move-result-object p1

    .line 4
    iget-object p1, p1, Le/a/v4/r0/b;->b:Le/a/v4/r0/d;

    iget-object p1, p1, Le/a/v4/r0/d;->g:Landroid/widget/ImageView;

    .line 5
    iget-boolean v0, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$d;->b:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/truecaller/sdk/R$drawable;->ic_sdk_arrow_up:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/truecaller/sdk/R$drawable;->ic_sdk_arrow_down:I

    .line 6
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
