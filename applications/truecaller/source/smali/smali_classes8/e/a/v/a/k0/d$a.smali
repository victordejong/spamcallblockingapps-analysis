.class public final Le/a/v/a/k0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/k0/d;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/k0/d;


# direct methods
.method public constructor <init>(Le/a/v/a/k0/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/k0/d$a;->a:Le/a/v/a/k0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/v/a/k0/d$a;->a:Le/a/v/a/k0/d;

    invoke-virtual {p1}, Le/a/v/a/k0/d;->getPresenter()Le/a/v/a/k0/a;

    move-result-object p1

    check-cast p1, Le/a/v/a/k0/c;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/k0/b;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/truecaller/premium/PremiumLaunchContext;->CONTACT_DETAIL_CONTACT_REQ:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {p1, v0}, Le/a/v/a/k0/b;->D0(Lcom/truecaller/premium/PremiumLaunchContext;)V

    :cond_0
    return-void
.end method
