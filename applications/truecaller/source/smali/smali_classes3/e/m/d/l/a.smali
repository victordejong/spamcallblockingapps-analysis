.class public abstract Le/m/d/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInvitation(Le/m/d/p/b;)Le/m/d/l/a;
    .locals 2

    .line 1
    iget-object p0, p0, Le/m/d/p/b;->a:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->o2()Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "com.google.firebase.appinvite.fdl.extension.InvitationId"

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/appinvite/zzt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/appinvite/zzt;-><init>(Landroid/os/Bundle;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public abstract getInvitationId()Ljava/lang/String;
.end method
