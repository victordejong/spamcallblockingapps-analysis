.class public final Le/a/e/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/e/a/a$a;->a:I

    iput-object p2, p0, Le/a/e/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Le/a/e/a/a$a;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/e/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/a/a;

    sget-object v0, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;->TRY_INBOX_CLEANER:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    .line 2
    iput-object v0, p1, Le/a/e/a/a;->b:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    .line 3
    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/e/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/a/a;

    sget-object v0, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;->JUST_DELETE_OTP:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    .line 6
    iput-object v0, p1, Le/a/e/a/a;->b:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    .line 7
    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method
