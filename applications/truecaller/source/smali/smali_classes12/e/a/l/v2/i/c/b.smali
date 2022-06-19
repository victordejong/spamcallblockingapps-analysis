.class public final Le/a/l/v2/i/c/b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;)V
    .locals 0

    iput-object p1, p0, Le/a/l/v2/i/c/b;->b:Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/l/v2/i/c/b;->b:Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;

    invoke-virtual {p1}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->getCurrentSelected()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Le/a/l/v2/i/c/b;->b:Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;

    .line 5
    iget-object v0, p1, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->b:Ls1/z/b/l;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p1, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->a:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->getCurrentSelected()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 8
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
