.class public Lcom/freshchat/consumer/sdk/m/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic pf:Lcom/freshchat/consumer/sdk/m/j;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/j;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/m;->pf:Lcom/freshchat/consumer/sdk/m/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/m;->pf:Lcom/freshchat/consumer/sdk/m/j;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/m/j;->c(Lcom/freshchat/consumer/sdk/m/j;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/m;->pf:Lcom/freshchat/consumer/sdk/m/j;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/m/j;->c(Lcom/freshchat/consumer/sdk/m/j;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/m;->pf:Lcom/freshchat/consumer/sdk/m/j;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/m/j;->a(Lcom/freshchat/consumer/sdk/m/j;)Lcom/freshchat/consumer/sdk/k/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/k;->bq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/m;->pf:Lcom/freshchat/consumer/sdk/m/j;

    sget-object v0, Lcom/freshchat/consumer/sdk/m/a$a;->oO:Lcom/freshchat/consumer/sdk/m/a$a;

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/m/a;->a(Lcom/freshchat/consumer/sdk/m/a$a;)V

    :cond_0
    return-void
.end method
