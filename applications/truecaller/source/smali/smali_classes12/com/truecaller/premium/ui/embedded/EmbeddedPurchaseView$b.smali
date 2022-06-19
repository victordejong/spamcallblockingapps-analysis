.class public final Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->setErrorMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$b;->a:Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$b;->a:Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;

    invoke-virtual {p1}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->getPresenter()Le/a/l/v2/h/c;

    move-result-object p1

    invoke-interface {p1}, Le/a/l/v2/h/c;->Db()V

    return-void
.end method
