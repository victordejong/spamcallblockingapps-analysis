.class public Lcom/truecaller/aftercall/AfterCallPromotionActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/aftercall/AfterCallPromotionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/aftercall/PromotionType;

.field public final synthetic b:Lcom/truecaller/aftercall/AfterCallPromotionActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;Lcom/truecaller/aftercall/PromotionType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity$a;->b:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    iput-object p2, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity$a;->a:Lcom/truecaller/aftercall/PromotionType;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity$a;->b:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    iget-object p2, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity$a;->a:Lcom/truecaller/aftercall/PromotionType;

    .line 2
    sget v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->o:I

    .line 3
    invoke-virtual {p1, p2}, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->xa(Lcom/truecaller/aftercall/PromotionType;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/aftercall/AfterCallPromotionActivity$a;->b:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
