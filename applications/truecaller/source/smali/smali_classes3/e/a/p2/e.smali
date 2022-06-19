.class public final synthetic Le/a/p2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

.field public final synthetic b:Lcom/truecaller/aftercall/PromotionType;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;Lcom/truecaller/aftercall/PromotionType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/p2/e;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    iput-object p2, p0, Le/a/p2/e;->b:Lcom/truecaller/aftercall/PromotionType;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Le/a/p2/e;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    iget-object v0, p0, Le/a/p2/e;->b:Lcom/truecaller/aftercall/PromotionType;

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->ua()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const v2, 0x7f0a0605

    .line 3
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "calls"

    const-string v2, "afterCall"

    .line 5
    invoke-static {p1, v1, v2}, Lcom/truecaller/ui/TruecallerInit;->xa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 6
    iget-object v0, v0, Lcom/truecaller/aftercall/PromotionType;->settingKey:Ljava/lang/String;

    const-string v2, "promotion_setting_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.permission.READ_CONTACTS"

    .line 8
    invoke-static {p1, v0, v2}, Le/a/p5/s0/g;->c1(Landroid/app/Activity;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 9
    invoke-static {p1, v0, v2}, Le/a/p5/s0/g;->c1(Landroid/app/Activity;Ljava/lang/String;I)Z

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Le/a/b0/g/a;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 12
    const-class v1, Lcom/truecaller/ui/WizardActivity;

    sget-object v2, Lcom/truecaller/wizard/framework/WizardStartContext;->AC_PROMOTION:Lcom/truecaller/wizard/framework/WizardStartContext;

    invoke-static {p1, v1, v0, v2}, Le/a/r/t/c;->Ca(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/truecaller/wizard/framework/WizardStartContext;)V

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->ua()V

    :goto_0
    return-void
.end method
