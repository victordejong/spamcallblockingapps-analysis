.class public final synthetic Le/a/p2/a;
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

    iput-object p1, p0, Le/a/p2/a;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    iput-object p2, p0, Le/a/p2/a;->b:Lcom/truecaller/aftercall/PromotionType;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Le/a/p2/a;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    iget-object v0, p0, Le/a/p2/a;->b:Lcom/truecaller/aftercall/PromotionType;

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
    invoke-virtual {p1, v0}, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->xa(Lcom/truecaller/aftercall/PromotionType;)V

    return-void
.end method
