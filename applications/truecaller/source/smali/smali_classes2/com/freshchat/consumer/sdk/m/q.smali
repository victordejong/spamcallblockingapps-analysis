.class public Lcom/freshchat/consumer/sdk/m/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic pl:Lcom/freshchat/consumer/sdk/m/n;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/n;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/q;->pl:Lcom/freshchat/consumer/sdk/m/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/q;->pl:Lcom/freshchat/consumer/sdk/m/n;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/m/a;->hB()Lcom/freshchat/consumer/sdk/m/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/m/f;->hM()V

    :cond_0
    return-void
.end method
