.class public Lcom/freshchat/consumer/sdk/activity/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/au;->pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/au;->pI:Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;->c(Lcom/freshchat/consumer/sdk/activity/FAQDetailsActivity;)Lcom/freshchat/consumer/sdk/activity/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    return-void
.end method
