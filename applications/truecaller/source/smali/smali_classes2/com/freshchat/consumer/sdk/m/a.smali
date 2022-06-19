.class public abstract Lcom/freshchat/consumer/sdk/m/a;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/m/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/m/a$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/freshchat/consumer/sdk/m/a;->a(Lcom/freshchat/consumer/sdk/m/a$a;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/freshchat/consumer/sdk/m/a$a;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/m/a;->hB()Lcom/freshchat/consumer/sdk/m/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/m/f;->a(Lcom/freshchat/consumer/sdk/m/a$a;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Fragment load failed. Parent CalendarBottomSheetDialogFragment is null "

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public abstract cc(Landroid/content/Context;)V
.end method

.method public getCalendarMessageMeta()Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/m/a;->hB()Lcom/freshchat/consumer/sdk/m/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/m/f;->getCalendarMessageMeta()Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hB()Lcom/freshchat/consumer/sdk/m/f;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/freshchat/consumer/sdk/m/f;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/freshchat/consumer/sdk/m/f;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hC()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/m/a;->hB()Lcom/freshchat/consumer/sdk/m/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/m/f;->hL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hD()I
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/m/a;->hB()Lcom/freshchat/consumer/sdk/m/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/m/y;->getOrientation()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/m/a;->cc(Landroid/content/Context;)V

    return-void
.end method
