.class public final synthetic Le/a/h0/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/h0/a/r;


# direct methods
.method public synthetic constructor <init>(Le/a/h0/a/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h0/a/h;->a:Le/a/h0/a/r;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Le/a/h0/a/h;->a:Le/a/h0/a/r;

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p2, Lcom/truecaller/ui/TruecallerInit;

    if-eqz v0, :cond_1

    const-string p1, "blocking"

    const-string v0, "blockView"

    .line 3
    invoke-static {p2, p1, v0}, Lcom/truecaller/ui/TruecallerInit;->xa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p1, Le/a/h0/a/r;->d:I

    invoke-static {p2, p1}, Lcom/truecaller/filters/blockedevents/BlockedEventsActivity;->qa(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    .line 5
    :goto_0
    sget-object v0, Lcom/truecaller/premium/util/NotificationAccessSource;->BLOCK_CALL_RING_SILENT:Lcom/truecaller/premium/util/NotificationAccessSource;

    const v1, 0x7f120faa

    invoke-static {p2, v0, v1, p1}, Lcom/truecaller/ui/NotificationAccessActivity;->sa(Landroid/content/Context;Lcom/truecaller/premium/util/NotificationAccessSource;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
