.class public final Le/a/l/v2/i/a/h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/l/v2/i/a/h;->b:Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;

    iput-object p2, p0, Le/a/l/v2/i/a/h;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Le/a/l/v2/i/a/h;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Le/a/l/v2/i/a/h;->b:Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;

    iget-object v4, p0, Le/a/l/v2/i/a/h;->c:Landroid/content/Context;

    sget v5, Lcom/truecaller/premium/R$string;->PremiumMonthlyIntroductoryNote:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context.getString(R.stri\u2026mMonthlyIntroductoryNote)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v5, Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;->l:I

    .line 4
    invoke-virtual {v3, v4}, Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;->a(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    .line 5
    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 7
    sget v1, Lcom/truecaller/premium/R$style;->StyleX_Text_Caption_Medium:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/truecaller/premium/R$attr;->tcx_textTertiary:I

    invoke-static {v1, v3}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0x8

    const/16 v3, 0xc

    const/4 v4, 0x2

    .line 11
    invoke-static {v0, v1, v3, v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->n1(Landroid/widget/TextView;IIII)V

    return-object v0
.end method
