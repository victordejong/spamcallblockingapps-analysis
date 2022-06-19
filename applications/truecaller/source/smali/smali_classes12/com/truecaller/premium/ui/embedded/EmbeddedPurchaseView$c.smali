.class public final Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->setKenyaButton(Le/a/l/v2/i/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic b:Le/a/l/v2/i/a/b;

.field public final synthetic c:Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;


# direct methods
.method public constructor <init>(Le/a/l/v2/i/a/b;Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$c;->b:Le/a/l/v2/i/a/b;

    iput-object p2, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$c;->c:Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$c;->c:Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;

    invoke-virtual {p1}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->getPresenter()Le/a/l/v2/h/c;

    move-result-object p1

    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$c;->b:Le/a/l/v2/i/a/b;

    invoke-interface {p1, v0}, Le/a/l/v2/h/c;->k4(Le/a/l/v2/i/a/b;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
