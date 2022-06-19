.class public final synthetic Le/a/b/a/a/a/o;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/k;)V
    .locals 7

    const-class v3, Le/a/b/a/a/a/k;

    const/4 v1, 0x0

    const-string v4, "onEmailClicked"

    const-string v5, "onEmailClicked()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/a/a/k;

    .line 2
    sget v1, Le/a/b/a/a/a/k;->i:I

    .line 3
    invoke-virtual {v0}, Le/a/b/a/a/a/k;->PA()Le/a/b/a/a/d/b;

    move-result-object v1

    .line 4
    iget-object v1, v1, Le/a/b/a/a/d/b;->i:Landroidx/lifecycle/LiveData;

    .line 5
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Le/a/b/l/q$c;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Le/a/b/l/q$c;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v1, Le/a/b/l/q;->a:Ljava/lang/Object;

    .line 7
    check-cast v1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getOnlineIds()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 8
    :cond_1
    new-instance v1, Le/a/b/a/a/a/g0;

    invoke-direct {v1}, Le/a/b/a/a/a/g0;-><init>()V

    .line 9
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "biz_email"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v2, Le/a/b/a/a/a/g0;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 11
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
