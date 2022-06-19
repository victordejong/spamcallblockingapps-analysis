.class public final Le/a/l/v2/i/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;)V
    .locals 0

    iput-object p1, p0, Le/a/l/v2/i/b/b;->a:Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/l/v2/i/b/b;->a:Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;

    .line 2
    iget-object p1, p1, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->d:Ls1/z/b/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method
