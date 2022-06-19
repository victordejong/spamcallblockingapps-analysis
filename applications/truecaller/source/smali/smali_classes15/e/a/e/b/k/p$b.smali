.class public final Le/a/e/b/k/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/k/p;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/b/k/p;


# direct methods
.method public constructor <init>(Le/a/e/b/k/p;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/k/p$b;->a:Le/a/e/b/k/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/b/k/p$b;->a:Le/a/e/b/k/p;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->SPEED_DIAL:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    invoke-static {p1, v0}, Lcom/truecaller/ui/SingleActivity;->ua(Landroid/content/Context;Lcom/truecaller/ui/SingleActivity$FragmentSingle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
