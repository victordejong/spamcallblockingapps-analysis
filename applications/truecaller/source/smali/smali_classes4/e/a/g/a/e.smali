.class public final Le/a/g/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;


# direct methods
.method public constructor <init>(Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/e;->a:Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/g/a/e;->a:Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;

    .line 2
    iget-object p1, p1, Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;->v:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
