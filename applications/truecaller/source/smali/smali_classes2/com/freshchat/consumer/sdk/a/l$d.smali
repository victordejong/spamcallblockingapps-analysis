.class public Lcom/freshchat/consumer/sdk/a/l$d;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private final oJ:Landroid/widget/TextView;

.field public final synthetic oK:Lcom/freshchat/consumer/sdk/a/l;


# direct methods
.method private constructor <init>(Lcom/freshchat/consumer/sdk/a/l;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/l$d;->oK:Lcom/freshchat/consumer/sdk/a/l;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/l$d;->oJ:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/freshchat/consumer/sdk/a/l;Landroid/view/View;Lcom/freshchat/consumer/sdk/a/m;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/l$d;-><init>(Lcom/freshchat/consumer/sdk/a/l;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/l$d;Lcom/freshchat/consumer/sdk/k/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/a/l$d;->a(Lcom/freshchat/consumer/sdk/k/m;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/k/m;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/l$d;->oJ:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/m;->ib()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
