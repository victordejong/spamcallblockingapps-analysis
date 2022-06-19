.class public final synthetic Le/a/e/a/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/a/k3;

.field public final synthetic b:I

.field public final synthetic c:Lcom/truecaller/forcedupdate/UpdateType;


# direct methods
.method public synthetic constructor <init>(Le/a/e/a/k3;ILcom/truecaller/forcedupdate/UpdateType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/j1;->a:Le/a/e/a/k3;

    iput p2, p0, Le/a/e/a/j1;->b:I

    iput-object p3, p0, Le/a/e/a/j1;->c:Lcom/truecaller/forcedupdate/UpdateType;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object p1, p0, Le/a/e/a/j1;->a:Le/a/e/a/k3;

    iget v0, p0, Le/a/e/a/j1;->b:I

    iget-object v1, p0, Le/a/e/a/j1;->c:Lcom/truecaller/forcedupdate/UpdateType;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v2, Lcom/truecaller/forcedupdate/UpdateType;->NONE:Lcom/truecaller/forcedupdate/UpdateType;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_1

    const/4 v5, 0x3

    if-eq p2, v5, :cond_0

    move-object p2, v2

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lcom/truecaller/forcedupdate/UpdateType;->DISCONTINUED:Lcom/truecaller/forcedupdate/UpdateType;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p2, Lcom/truecaller/forcedupdate/UpdateType;->REQUIRED:Lcom/truecaller/forcedupdate/UpdateType;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p2, Lcom/truecaller/forcedupdate/UpdateType;->OPTIONAL:Lcom/truecaller/forcedupdate/UpdateType;

    .line 6
    :goto_0
    iget-object v5, p1, Le/a/e/a/k3;->e:Le/a/x3/c;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "market://details?id=com.truecaller"

    invoke-interface {v5, p2, v7, v6}, Le/a/x3/c;->e(Lcom/truecaller/forcedupdate/UpdateType;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    if-ne v0, v4, :cond_3

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v3, p1, Le/a/e/a/k3;->e:Le/a/x3/c;

    const-string v5, "fragmentManager"

    .line 8
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "forcedUpdateManager"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v3, v4}, Le/a/x3/c;->d(Z)Lcom/truecaller/forcedupdate/UpdateType;

    move-result-object v3

    if-eq v3, v2, :cond_4

    .line 10
    new-instance v2, Le/a/x3/h/d;

    invoke-direct {v2}, Le/a/x3/h/d;-><init>()V

    .line 11
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v5, "argForcedUpdateType"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 14
    const-class v3, Le/a/x3/h/d;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_4

    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/truecaller/forcedupdate/ui/ForcedUpdateActivity;->pa(Landroid/content/Context;Z)Z

    .line 16
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "State changed from "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Le/a/e/a/k3;->e:Le/a/x3/c;

    invoke-interface {p1}, Le/a/x3/c;->b()Lcom/truecaller/forcedupdate/UpdateType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
