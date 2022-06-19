.class public Lcom/freshchat/consumer/sdk/activity/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field public final synthetic qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/be;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/be;->qL:Lcom/freshchat/consumer/sdk/activity/FAQSearchActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
