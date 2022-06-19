.class public final Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->sv(Ljava/lang/String;Le/a/l/n2/f;Le/a/l/v2/i/a/b;Ljava/lang/String;)V
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
.field public final synthetic b:Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;

.field public final synthetic c:Le/a/l/n2/f;


# direct methods
.method public constructor <init>(Le/a/l/v2/i/a/b;Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;Le/a/l/n2/f;)V
    .locals 0

    iput-object p2, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$d;->b:Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;

    iput-object p3, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$d;->c:Le/a/l/n2/f;

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
    iget-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$d;->b:Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;

    invoke-virtual {p1}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->getPresenter()Le/a/l/v2/h/c;

    move-result-object p1

    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$d;->c:Le/a/l/n2/f;

    invoke-interface {p1, v0}, Le/a/l/v2/h/c;->Y7(Le/a/l/n2/f;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
