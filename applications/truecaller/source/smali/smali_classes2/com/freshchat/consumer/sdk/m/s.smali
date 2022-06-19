.class public Lcom/freshchat/consumer/sdk/m/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic pm:Lcom/freshchat/consumer/sdk/m/r;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/r;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/s;->pm:Lcom/freshchat/consumer/sdk/m/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/s;->pm:Lcom/freshchat/consumer/sdk/m/r;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/m/r;->pl:Lcom/freshchat/consumer/sdk/m/n;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/m/a;->hB()Lcom/freshchat/consumer/sdk/m/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/m/s;->pm:Lcom/freshchat/consumer/sdk/m/r;

    iget-object v1, v1, Lcom/freshchat/consumer/sdk/m/r;->pl:Lcom/freshchat/consumer/sdk/m/n;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_calendar_limited_timeslot_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/m/y;->R(I)V

    :cond_0
    return-void
.end method
