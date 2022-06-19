.class public final Le/a/l/v2/h/h;
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
.field public final synthetic b:Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;

.field public final synthetic c:Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;ILcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/l/v2/h/h;->b:Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;

    iput-object p3, p0, Le/a/l/v2/h/h;->c:Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;

    iput-object p4, p0, Le/a/l/v2/h/h;->d:Ljava/util/List;

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
    iget-object p1, p0, Le/a/l/v2/h/h;->c:Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;

    invoke-virtual {p1}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->getPresenter()Le/a/l/v2/h/c;

    move-result-object p1

    iget-object v0, p0, Le/a/l/v2/h/h;->b:Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.premium.ui.subscription.buttons.SubscriptionButton"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/l/v2/i/a/b;

    invoke-interface {p1, v0}, Le/a/l/v2/h/c;->k4(Le/a/l/v2/i/a/b;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
