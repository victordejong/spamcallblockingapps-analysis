.class public final Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$b;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$b$a;->b:Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$b$a;->b:Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$b;

    iget-object v0, v0, Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$b;->a:Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;

    invoke-virtual {v0}, Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;->getViewPresenter()Le/a/l/v2/d;

    move-result-object v0

    invoke-virtual {v0}, Le/a/l/v2/d;->Hj()V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
