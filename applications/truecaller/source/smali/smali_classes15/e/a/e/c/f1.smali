.class public final synthetic Le/a/e/c/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/f1;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/a/e/c/f1;->a:Le/a/e/c/s1;

    .line 1
    iget-boolean v1, v0, Le/a/e/c/s1;->p1:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Le/a/e/c/s1;->o1:Lcom/truecaller/referral/ReferralManager;

    if-eqz v1, :cond_0

    iget-object v3, v0, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    invoke-interface {v1, v3}, Lcom/truecaller/referral/ReferralManager;->dg(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2
    :goto_0
    iget-object v0, v0, Le/a/e/c/s1;->W:Landroid/view/View;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
