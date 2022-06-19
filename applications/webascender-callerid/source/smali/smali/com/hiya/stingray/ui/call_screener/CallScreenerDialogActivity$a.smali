.class Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity$a;->a:Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity$a;->a:Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
