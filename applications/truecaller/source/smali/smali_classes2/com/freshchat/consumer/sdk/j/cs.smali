.class public Lcom/freshchat/consumer/sdk/j/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic iC:Lcom/freshchat/consumer/sdk/j/ak;

.field public final synthetic iD:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/j/ak;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/cs;->iC:Lcom/freshchat/consumer/sdk/j/ak;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/j/cs;->iD:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/cs;->iC:Lcom/freshchat/consumer/sdk/j/ak;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/j/ak;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/cs;->iD:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->b(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
