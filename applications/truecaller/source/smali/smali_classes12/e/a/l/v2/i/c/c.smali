.class public final Le/a/l/v2/i/c/c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;)V
    .locals 0

    iput-object p1, p0, Le/a/l/v2/i/c/c;->b:Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    .line 1
    iget-object v1, p0, Le/a/l/v2/i/c/c;->b:Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;

    invoke-static {v1}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->a(Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;)Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/a/l/v2/i/c/c;->b:Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;

    invoke-static {v1}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->b(Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;)Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Le/a/l/v2/i/c/c;->b:Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;

    invoke-static {v1}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->c(Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;)Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
