.class public final Le/a/e/b/o/o$c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/o/o$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ui.settings.privacy.PrivacySettingsPresenter$onRectifyMyDataRequested$1$1"
    f = "PrivacySettingsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/e/b/o/o$c;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/e/b/o/o$c;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/o/o$c$a;->e:Le/a/e/b/o/o$c;

    iput-object p2, p0, Le/a/e/b/o/o$c$a;->f:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e/b/o/o$c$a;

    iget-object v0, p0, Le/a/e/b/o/o$c$a;->e:Le/a/e/b/o/o$c;

    iget-object v1, p0, Le/a/e/b/o/o$c$a;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/e/b/o/o$c$a;-><init>(Le/a/e/b/o/o$c;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/e/b/o/o$c$a;->e:Le/a/e/b/o/o$c;

    iget-object v1, p0, Le/a/e/b/o/o$c$a;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-nez p2, :cond_0

    iget-object p2, v0, Le/a/e/b/o/o$c;->f:Le/a/e/b/o/o;

    iget-object v0, v0, Le/a/e/b/o/o$c;->g:Landroid/content/Context;

    .line 5
    iget-object v1, p2, Le/a/e/b/o/o;->s:Le/a/m4/a;

    .line 6
    sget-object v2, Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;->OTHERS:Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;

    invoke-virtual {v1, v0, v2}, Le/a/m4/a;->b(Landroid/content/Context;Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;)Landroid/content/Intent;

    move-result-object v0

    .line 7
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/e/b/o/n;

    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Le/a/e/b/o/n;->Sb(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, v0, Le/a/e/b/o/o$c;->f:Le/a/e/b/o/o;

    .line 9
    iget-object p2, p2, Le/a/e/b/o/o;->m:Le/a/u3/g;

    .line 10
    invoke-virtual {p2}, Le/a/u3/g;->x()Le/a/u3/b;

    move-result-object p2

    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, v0, Le/a/e/b/o/o$c;->f:Le/a/e/b/o/o;

    .line 11
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/e/b/o/n;

    if-eqz p2, :cond_2

    .line 12
    invoke-interface {p2}, Le/a/e/b/o/n;->Sg()V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p2, v0, Le/a/e/b/o/o$c;->f:Le/a/e/b/o/o;

    .line 14
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/e/b/o/n;

    if-eqz p2, :cond_2

    .line 15
    invoke-interface {p2}, Le/a/e/b/o/n;->Ll()V

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/e/b/o/o$c$a;->f:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/e/b/o/o$c$a;->e:Le/a/e/b/o/o$c;

    iget-object v0, p1, Le/a/e/b/o/o$c;->f:Le/a/e/b/o/o;

    iget-object p1, p1, Le/a/e/b/o/o$c;->g:Landroid/content/Context;

    .line 3
    iget-object v1, v0, Le/a/e/b/o/o;->s:Le/a/m4/a;

    .line 4
    sget-object v2, Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;->OTHERS:Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;

    invoke-virtual {v1, p1, v2}, Le/a/m4/a;->b(Landroid/content/Context;Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;)Landroid/content/Intent;

    move-result-object p1

    .line 5
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Le/a/e/b/o/n;->Sb(Landroid/content/Intent;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/e/b/o/o$c$a;->e:Le/a/e/b/o/o$c;

    iget-object p1, p1, Le/a/e/b/o/o$c;->f:Le/a/e/b/o/o;

    .line 7
    iget-object p1, p1, Le/a/e/b/o/o;->m:Le/a/u3/g;

    .line 8
    invoke-virtual {p1}, Le/a/u3/g;->x()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/e/b/o/o$c$a;->e:Le/a/e/b/o/o$c;

    iget-object p1, p1, Le/a/e/b/o/o$c;->f:Le/a/e/b/o/o;

    .line 9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/o/n;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Le/a/e/b/o/n;->Sg()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Le/a/e/b/o/o$c$a;->e:Le/a/e/b/o/o$c;

    iget-object p1, p1, Le/a/e/b/o/o$c;->f:Le/a/e/b/o/o;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/o/n;

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1}, Le/a/e/b/o/n;->Ll()V

    .line 14
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
