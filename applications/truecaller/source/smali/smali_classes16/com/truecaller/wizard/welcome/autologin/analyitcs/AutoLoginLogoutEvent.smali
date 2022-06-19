.class public final Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;
    }
.end annotation


# instance fields
.field public final a:Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;


# direct methods
.method public constructor <init>(Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;)V
    .locals 1

    const-string v0, "logoutReason"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent;->a:Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent;->a:Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;

    invoke-virtual {v1}, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Reason"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Le/a/q2/x$b;

    const-string v2, "AutoLoginLogout"

    invoke-direct {v1, v2, v0}, Le/a/q2/x$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent;

    iget-object v0, p0, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent;->a:Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;

    iget-object p1, p1, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent;->a:Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent;->a:Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AutoLoginLogoutEvent(logoutReason="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent;->a:Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
