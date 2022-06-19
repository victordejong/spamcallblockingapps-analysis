.class public Le/a/e4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e4/i;


# instance fields
.field public final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/e4/j;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e4/j;->a:Landroid/os/Bundle;

    const-string v1, "maxImageWidth"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e4/j;->a:Landroid/os/Bundle;

    const-string v1, "sendMultipartSmsAsSeparateMessages"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e4/j;->a:Landroid/os/Bundle;

    const-string v1, "maxImageHeight"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e4/j;->a:Landroid/os/Bundle;

    const-string v1, "enableSMSDeliveryReports"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e4/j;->a:Landroid/os/Bundle;

    const-string v1, "enabledNotifyWapMMSC"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e4/j;->a:Landroid/os/Bundle;

    const-string v1, "supportMmsContentDisposition"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e4/j;->a:Landroid/os/Bundle;

    const-string v1, "maxMessageSize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
