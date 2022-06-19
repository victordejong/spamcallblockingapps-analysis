.class public final Le/a/r5/v$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r5/v;->TA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r5/v;


# direct methods
.method public constructor <init>(Le/a/r5/v;)V
    .locals 0

    iput-object p1, p0, Le/a/r5/v$b;->a:Le/a/r5/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/r5/v$b;->a:Le/a/r5/v;

    .line 2
    iget-object v0, p1, Le/a/r5/v;->h:Le/a/l/a2;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "requireContext()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/truecaller/premium/PremiumLaunchContext;->WHO_VIEWED_ME:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {v0, p1, v1}, Le/a/l/a2;->b(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;)V

    return-void

    :cond_0
    const-string p1, "premiumScreenNavigator"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
