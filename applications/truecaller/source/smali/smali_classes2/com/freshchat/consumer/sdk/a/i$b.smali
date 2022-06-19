.class public Lcom/freshchat/consumer/sdk/a/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private final oy:Landroid/widget/TextView;

.field public final synthetic oz:Lcom/freshchat/consumer/sdk/a/i;


# direct methods
.method private constructor <init>(Lcom/freshchat/consumer/sdk/a/i;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/i$b;->oz:Lcom/freshchat/consumer/sdk/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/i$b;->oy:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/freshchat/consumer/sdk/a/i;Landroid/view/View;Lcom/freshchat/consumer/sdk/a/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/i$b;-><init>(Lcom/freshchat/consumer/sdk/a/i;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/i$b;Lcom/freshchat/consumer/sdk/k/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/a/i$b;->a(Lcom/freshchat/consumer/sdk/k/q;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/k/q;)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/i$b;->oy:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/q;->im()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/i$b;->oy:Landroid/widget/TextView;

    new-instance v1, Lcom/freshchat/consumer/sdk/a/k;

    invoke-direct {v1, p0, p1}, Lcom/freshchat/consumer/sdk/a/k;-><init>(Lcom/freshchat/consumer/sdk/a/i$b;Lcom/freshchat/consumer/sdk/k/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
