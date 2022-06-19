.class public Lcom/freshchat/consumer/sdk/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ot:Lcom/freshchat/consumer/sdk/a/d;

.field public final synthetic pW:Landroid/view/View;

.field public final synthetic pX:Lcom/freshchat/consumer/sdk/a/d$e;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/a/d;Landroid/view/View;Lcom/freshchat/consumer/sdk/a/d$e;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/h;->ot:Lcom/freshchat/consumer/sdk/a/d;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/h;->pW:Landroid/view/View;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/h;->pX:Lcom/freshchat/consumer/sdk/a/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/h;->ot:Lcom/freshchat/consumer/sdk/a/d;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/h;->pW:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/a/d;->a(Lcom/freshchat/consumer/sdk/a/d;I)I

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/h;->ot:Lcom/freshchat/consumer/sdk/a/d;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/a/d;->a(Lcom/freshchat/consumer/sdk/a/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/h;->pX:Lcom/freshchat/consumer/sdk/a/d$e;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/a/d$e;->bc()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/a/h;->ot:Lcom/freshchat/consumer/sdk/a/d;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/a/d;->b(Lcom/freshchat/consumer/sdk/a/d;)I

    move-result v2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/a/h;->ot:Lcom/freshchat/consumer/sdk/a/d;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/a/d;->c(Lcom/freshchat/consumer/sdk/a/d;)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;II)V

    return-void
.end method
