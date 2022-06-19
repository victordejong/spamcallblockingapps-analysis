.class public Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic hk:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1$2;->hk:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1$2;->hk:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hj:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1$2;->hk:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;

    iget-object v1, v0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hi:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hj:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->hg:Landroid/app/Activity;

    sget v2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatPlayIcon:I

    invoke-static {v0, v2}, Lcom/freshchat/consumer/sdk/j/aq;->j(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
