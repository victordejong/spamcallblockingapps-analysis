.class public final Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/truecaller/premium/util/NotificationAccessSource;Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "card_position"

    .line 2
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p4, "Intent(context, WhatsApp\u2026D_POSITION, cardPosition)"

    invoke-static {p1, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const p4, 0x7f120274

    .line 3
    invoke-static {p1, p2, p4, p3}, Le/a/e/n0;->ra(Landroid/content/Intent;Lcom/truecaller/premium/util/NotificationAccessSource;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
