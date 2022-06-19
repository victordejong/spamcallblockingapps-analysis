.class public Lcom/freshchat/consumer/sdk/m/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic pb:Lcom/freshchat/consumer/sdk/m/f;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/f;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/i;->pb:Lcom/freshchat/consumer/sdk/m/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
