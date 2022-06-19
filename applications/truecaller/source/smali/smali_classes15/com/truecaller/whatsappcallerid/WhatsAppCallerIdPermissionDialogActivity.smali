.class public final Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity;
.super Le/a/q5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity;",
        "Le/a/e/n0;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "granted",
        "pa",
        "(Z)V",
        "Le/a/q5/k/a;",
        "j",
        "Le/a/q5/k/a;",
        "getWhatsAppCallerIdEventLogger",
        "()Le/a/q5/k/a;",
        "setWhatsAppCallerIdEventLogger",
        "(Le/a/q5/k/a;)V",
        "whatsAppCallerIdEventLogger",
        "<init>",
        "()V",
        "k",
        "b",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final k:Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity$b;


# instance fields
.field public j:Le/a/q5/k/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity;->k:Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/q5/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Le/a/e/n0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Le/a/c3/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Le/a/e/a2;->Y(Landroid/app/Activity;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const-string v0, "theme"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Le/a/l4/k;->m(Landroid/content/res/Resources$Theme;Z)V

    const p1, 0x7f0d014a

    .line 5
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    const p1, 0x7f0a0064

    .line 6
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0059

    .line 7
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity$a;

    invoke-direct {v1, v0, p0}, Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public pa(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Le/a/e/n0;->pa(Z)V

    .line 2
    iget-object v0, p0, Le/a/e/n0;->f:Lcom/truecaller/premium/util/NotificationAccessSource;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;->WHATSAPP_CALLERID_SETTINGS:Lcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;->PREMIUM_USER_TAB:Lcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;

    :goto_0
    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    const-string v2, "card_position"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity;->j:Le/a/q5/k/a;

    const/4 v2, 0x0

    const-string v3, "whatsAppCallerIdEventLogger"

    if-eqz v1, :cond_2

    invoke-interface {v1, v0, p1}, Le/a/q5/k/a;->k(Lcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;I)V

    .line 8
    iget-object v1, p0, Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity;->j:Le/a/q5/k/a;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0, p1}, Le/a/q5/k/a;->b(ZLcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;I)V

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    return-void
.end method
