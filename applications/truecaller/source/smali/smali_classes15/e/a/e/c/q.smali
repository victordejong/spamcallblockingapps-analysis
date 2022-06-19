.class public final synthetic Le/a/e/c/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Lcom/truecaller/premium/PremiumLaunchContext;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Lcom/truecaller/premium/PremiumLaunchContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/q;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/q;->b:Lcom/truecaller/premium/PremiumLaunchContext;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Le/a/e/c/q;->a:Le/a/e/c/s1;

    iget-object v0, p0, Le/a/e/c/q;->b:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 1
    iget-object v1, p1, Le/a/e/c/s1;->O0:Le/a/l/a2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Le/a/l/a2;->b(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;)V

    return-void
.end method
