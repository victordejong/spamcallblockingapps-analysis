.class public final synthetic Le/a/q4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/q4/r0;

.field public final synthetic b:Le/a/q4/r0$a;


# direct methods
.method public synthetic constructor <init>(Le/a/q4/r0;Le/a/q4/r0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/o;->a:Le/a/q4/r0;

    iput-object p2, p0, Le/a/q4/o;->b:Le/a/q4/r0$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Le/a/q4/o;->a:Le/a/q4/r0;

    iget-object v0, p0, Le/a/q4/o;->b:Le/a/q4/r0$a;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Le/a/q4/r0$a;->a:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/truecaller/referral/ReferralUrl;->d:Ln3/g/a;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v0, v2}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/truecaller/referral/ReferralUrl$b;

    if-nez v1, :cond_0

    .line 6
    sget-object v1, Lcom/truecaller/referral/ReferralUrl$b;->k:Lcom/truecaller/referral/ReferralUrl$b;

    .line 7
    :cond_0
    iget-object v2, p1, Le/a/q4/r0;->c:Lcom/truecaller/referral/ReferralUrl;

    .line 8
    iput-object v1, v2, Lcom/truecaller/referral/ReferralUrl;->a:Lcom/truecaller/referral/ReferralUrl$b;

    .line 9
    invoke-virtual {v2}, Lcom/truecaller/referral/ReferralUrl;->a()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.SEND"

    .line 11
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x7f120e8b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    .line 12
    iget-object v5, p1, Le/a/q4/r0;->g:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    .line 14
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Le/a/b0/q/t;->n(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
