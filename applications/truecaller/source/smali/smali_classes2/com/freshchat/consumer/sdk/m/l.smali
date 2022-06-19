.class public Lcom/freshchat/consumer/sdk/m/l;
.super Lcom/freshchat/consumer/sdk/j/cp;
.source "SourceFile"


# instance fields
.field public final synthetic pf:Lcom/freshchat/consumer/sdk/m/j;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/j;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/l;->pf:Lcom/freshchat/consumer/sdk/m/j;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/cp;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/m/l;->pf:Lcom/freshchat/consumer/sdk/m/j;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/m/j;->a(Lcom/freshchat/consumer/sdk/m/j;)Lcom/freshchat/consumer/sdk/k/k;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/freshchat/consumer/sdk/k/k;->aK(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/freshchat/consumer/sdk/m/l;->pf:Lcom/freshchat/consumer/sdk/m/j;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/m/j;->b(Lcom/freshchat/consumer/sdk/m/j;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
