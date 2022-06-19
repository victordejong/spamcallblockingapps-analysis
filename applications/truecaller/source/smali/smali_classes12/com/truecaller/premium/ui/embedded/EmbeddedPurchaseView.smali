.class public final Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Le/a/l/v2/h/d;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000cJ!\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J%\u0010\u0017\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J3\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010%\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008%\u0010$J\u0017\u0010\'\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008)\u0010\u000cJ\u0017\u0010,\u001a\u00020\u00082\u0006\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008,\u0010-J1\u00101\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\u00192\u0008\u0008\u0001\u0010/\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u00083\u0010\u000cJ\u000f\u00104\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u00084\u0010\u000cJ\u001b\u00106\u001a\u00020\u00082\n\u0008\u0001\u00105\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0004\u00086\u00107R\u0016\u0010:\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\"\u0010B\u001a\u00020;8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u0018\u0010E\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u001c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020F0\u00128\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\"\u0010P\u001a\u00020J8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00086\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR$\u0010X\u001a\u0004\u0018\u00010Q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR\u0016\u0010Z\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Y\u00109R\u0016\u0010]\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\"\u0010e\u001a\u00020^8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008_\u0010`\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010d\u00a8\u0006f"
    }
    d2 = {
        "Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;",
        "Landroid/widget/LinearLayout;",
        "Le/a/l/v2/h/d;",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "Le/a/l/v2/i/a/b;",
        "kenyaButton",
        "Ls1/s;",
        "setKenyaButton",
        "(Le/a/l/v2/i/a/b;)V",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "Le/a/l/v2/i/a/d;",
        "buttons",
        "Ug",
        "(Le/a/l/v2/i/a/d;Le/a/l/v2/i/a/b;)V",
        "",
        "Lcom/truecaller/data/entity/Contact;",
        "contactsForPromo",
        "",
        "totalNumber",
        "Q2",
        "(Ljava/util/List;I)V",
        "",
        "topImage",
        "Le/a/l/n2/f;",
        "subscription",
        "subscriptionButton",
        "disclaimer",
        "sv",
        "(Ljava/lang/String;Le/a/l/n2/f;Le/a/l/v2/i/a/b;Ljava/lang/String;)V",
        "Lcom/truecaller/premium/PremiumLaunchContext;",
        "launchContext",
        "m7",
        "(Lcom/truecaller/premium/PremiumLaunchContext;)V",
        "setLaunchContext",
        "message",
        "setErrorMessage",
        "(Ljava/lang/String;)V",
        "a3",
        "",
        "show",
        "g2",
        "(Z)V",
        "promptText",
        "iconRes",
        "button",
        "Qy",
        "(Ljava/lang/String;ILe/a/l/n2/f;Le/a/l/v2/i/a/b;)V",
        "ge",
        "Xr",
        "layout",
        "b",
        "(Ljava/lang/Integer;)V",
        "f",
        "I",
        "contentLayout",
        "Le/a/l/o2/f;",
        "d",
        "Le/a/l/o2/f;",
        "getConsumablePurchasePrompter",
        "()Le/a/l/o2/f;",
        "setConsumablePurchasePrompter",
        "(Le/a/l/o2/f;)V",
        "consumablePurchasePrompter",
        "h",
        "Ljava/lang/String;",
        "fallBackText",
        "Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;",
        "e",
        "Ljava/util/List;",
        "subscriptionButtonViews",
        "Le/a/l/v2/h/c;",
        "Le/a/l/v2/h/c;",
        "getPresenter",
        "()Le/a/l/v2/h/c;",
        "setPresenter",
        "(Le/a/l/v2/h/c;)V",
        "presenter",
        "Le/a/l/v2/h/i;",
        "g",
        "Le/a/l/v2/h/i;",
        "getCallBack",
        "()Le/a/l/v2/h/i;",
        "setCallBack",
        "(Le/a/l/v2/h/i;)V",
        "callBack",
        "a",
        "defaultLayout",
        "i",
        "Z",
        "shouldUseTruecallerXTheme",
        "Le/a/l/a2;",
        "c",
        "Le/a/l/a2;",
        "getPremiumScreenNavigator",
        "()Le/a/l/a2;",
        "setPremiumScreenNavigator",
        "(Le/a/l/a2;)V",
        "premiumScreenNavigator",
        "premium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Le/a/l/v2/h/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/l/a2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/l/o2/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I

.field public g:Le/a/l/v2/h/i;

.field public h:Ljava/lang/String;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget v1, Lcom/truecaller/premium/R$layout;->layout_tcx_subscription_buttons_wvm:I

    iput v1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->a:I

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 4
    sget-object v3, Lcom/truecaller/premium/R$styleable;->EmbeddedPurchaseView:[I

    invoke-virtual {p1, p2, v3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v3, "context.obtainStyledAttr\u2026beddedPurchaseView, 0, 0)"

    invoke-static {p2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget v3, Lcom/truecaller/premium/R$styleable;->EmbeddedPurchaseView_embeddedSubsButtonContext:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    sget v4, Lcom/truecaller/premium/R$styleable;->EmbeddedPurchaseView_embeddedSubsButtonsLayout:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 7
    sget v4, Lcom/truecaller/premium/R$styleable;->EmbeddedPurchaseView_embeddedSubsButtonsFallBackText:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/truecaller/premium/R$string;->PremiumTitleNonPremium:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->h:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 10
    :goto_1
    iput v1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->f:I

    const/4 p2, 0x1

    .line 11
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v4, Lcom/truecaller/premium/R$dimen;->tcx_embedded_purchase_padding:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 13
    :cond_2
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "$this$premiumSupport"

    .line 14
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.truecaller.premium.PremiumSupportProvider"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/l/g2;

    invoke-interface {p1}, Le/a/l/g2;->D()Le/a/l/f2;

    move-result-object p1

    .line 16
    invoke-direct {p0}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "view"

    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "activity"

    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance p1, Le/a/l/v2/h/b;

    invoke-direct {p1, v1}, Le/a/l/v2/h/b;-><init>(Landroid/app/Activity;)V

    .line 19
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v1

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-class v4, Le/a/l/v2/h/b;

    invoke-static {p1, v4}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 22
    const-class v4, Le/a/j2;

    invoke-static {v1, v4}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 23
    new-instance v4, Le/a/l/v2/h/a;

    invoke-direct {v4, p1, v1, v2}, Le/a/l/v2/h/a;-><init>(Le/a/l/v2/h/b;Le/a/j2;Le/a/l/v2/h/a$a;)V

    .line 24
    iget-object p1, v4, Le/a/l/v2/h/a;->o:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/v2/h/c;

    .line 25
    iput-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->b:Le/a/l/v2/h/c;

    .line 26
    iget-object p1, v4, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->C3()Le/a/l/a2;

    move-result-object p1

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 27
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->c:Le/a/l/a2;

    .line 29
    iget-object p1, v4, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->d1()Le/a/l/o2/f;

    move-result-object p1

    .line 30
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->d:Le/a/l/o2/f;

    if-eqz v3, :cond_4

    .line 32
    invoke-static {v3}, Lcom/truecaller/premium/PremiumLaunchContext;->valueOf(Ljava/lang/String;)Lcom/truecaller/premium/PremiumLaunchContext;

    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->setLaunchContext(Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 34
    sget-object v1, Lcom/truecaller/premium/PremiumLaunchContext;->WHO_VIEWED_ME:Lcom/truecaller/premium/PremiumLaunchContext;

    if-ne p1, v1, :cond_3

    move v0, p2

    :cond_3
    iput-boolean v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->i:Z

    .line 35
    :cond_4
    iget-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->d:Le/a/l/o2/f;

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->b:Le/a/l/v2/h/c;

    if-eqz p2, :cond_5

    invoke-interface {p1, p2}, Le/a/l/o2/f;->b(Le/a/l/o2/b;)V

    return-void

    :cond_5
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p1, "consumablePurchasePrompter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public static a(Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;IZLandroid/view/ViewGroup;ZI)Landroid/view/View;
    .locals 0

    and-int/lit8 p3, p5, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p3, p5, 0x4

    if-eqz p3, :cond_1

    move-object p3, p0

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 1
    iget-boolean p4, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->i:Z

    .line 2
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p5, "context"

    invoke-static {p0, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p4}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "LayoutInflater.from(cont\u2026yout, root, attachToRoot)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 5
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t find activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setKenyaButton(Le/a/l/v2/i/a/b;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    sget v0, Lcom/truecaller/premium/R$id;->kenyaDivider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    :cond_0
    sget v0, Lcom/truecaller/premium/R$id;->kenyaTitle:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    :cond_1
    sget v0, Lcom/truecaller/premium/R$id;->kenyaSubTitle:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 4
    :cond_2
    sget v0, Lcom/truecaller/premium/R$id;->kenyaButton:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0, p1}, Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;->setButton(Le/a/l/v2/i/a/b;)V

    .line 6
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    const-wide/16 v1, 0x12c

    .line 7
    new-instance v3, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$c;

    invoke-direct {v3, p1, p0}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$c;-><init>(Le/a/l/v2/i/a/b;Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;)V

    invoke-static {v0, v1, v2, v3}, Le/a/n/g0;->w0(Landroid/view/View;JLs1/z/b/l;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public Q2(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/Contact;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "contactsForPromo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/premium/R$id;->friendUpgradedPromoView:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/premium/ui/friendpromo/PremiumFriendUpgradedPromoView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/truecaller/premium/ui/friendpromo/PremiumFriendUpgradedPromoView;->g1(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public Qy(Ljava/lang/String;ILe/a/l/n2/f;Le/a/l/v2/i/a/b;)V
    .locals 9

    const-string v0, "promptText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscription"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "button"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Ln3/b/a/h;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ln3/b/a/h;

    if-eqz v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->d:Le/a/l/o2/f;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v0, "supportFragmentManager"

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v3 .. v8}, Le/a/l/o2/f;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;ILe/a/l/n2/f;Le/a/l/v2/i/a/b;)V

    goto :goto_0

    :cond_1
    const-string p1, "consumablePurchasePrompter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void
.end method

.method public Ug(Le/a/l/v2/i/a/d;Le/a/l/v2/i/a/b;)V
    .locals 10

    const-string v0, "buttons"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->b(Ljava/lang/Integer;)V

    .line 2
    iget-object v1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->e:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 3
    iget-object v2, p1, Le/a/l/v2/i/a/d;->a:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_1

    check-cast v5, Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 6
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/l/v2/i/a/b;

    invoke-virtual {v5, v7}, Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;->setButton(Le/a/l/v2/i/a/b;)V

    .line 7
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-static {v5}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    const-wide/16 v7, 0x12c

    .line 9
    new-instance v9, Le/a/l/v2/h/h;

    invoke-direct {v9, v5, v4, p0, v2}, Le/a/l/v2/h/h;-><init>(Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;ILcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;Ljava/util/List;)V

    invoke-static {v5, v7, v8, v9}, Le/a/n/g0;->w0(Landroid/view/View;JLs1/z/b/l;)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {v5, v3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    :goto_1
    move v4, v6

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Ls1/u/i;->N0()V

    throw v0

    .line 12
    :cond_2
    sget v0, Lcom/truecaller/premium/R$id;->freeTrialLabel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 13
    iget-object v1, p1, Le/a/l/v2/i/a/d;->d:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move v3, v2

    :cond_4
    xor-int/lit8 v1, v3, 0x1

    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 15
    iget-object p1, p1, Le/a/l/v2/i/a/d;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-direct {p0, p2}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->setKenyaButton(Le/a/l/v2/i/a/b;)V

    return-void

    :cond_5
    const-string p1, "subscriptionButtonViews"

    .line 18
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public Xr()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->d:Le/a/l/o2/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l/o2/f;->dismiss()V

    return-void

    :cond_0
    const-string v0, "consumablePurchasePrompter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->g:Le/a/l/v2/h/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l/v2/h/i;->a3()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Integer;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget v1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->a(Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;IZLandroid/view/ViewGroup;ZI)Landroid/view/View;

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;

    const/4 v0, 0x0

    .line 3
    sget v1, Lcom/truecaller/premium/R$id;->first:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    .line 4
    sget v1, Lcom/truecaller/premium/R$id;->second:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    .line 5
    sget v1, Lcom/truecaller/premium/R$id;->third:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;

    aput-object v1, p1, v0

    .line 6
    invoke-static {p1}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->e:Ljava/util/List;

    .line 7
    sget p1, Lcom/truecaller/premium/R$id;->premiumFeaturesButton:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$a;

    invoke-direct {v0, p0}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$a;-><init>(Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public g2(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->g:Le/a/l/v2/h/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/l/v2/h/i;->g2(Z)V

    :cond_0
    return-void
.end method

.method public ge()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Ln3/b/a/h;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ln3/b/a/h;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Le/a/l/v2/g/a;

    invoke-direct {v1}, Le/a/l/v2/g/a;-><init>()V

    .line 3
    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v3, "supportFragmentManager"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Le/a/l/v2/g/a;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final getCallBack()Le/a/l/v2/h/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->g:Le/a/l/v2/h/i;

    return-object v0
.end method

.method public final getConsumablePurchasePrompter()Le/a/l/o2/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->d:Le/a/l/o2/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "consumablePurchasePrompter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getPremiumScreenNavigator()Le/a/l/a2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->c:Le/a/l/a2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "premiumScreenNavigator"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getPresenter()Le/a/l/v2/h/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->b:Le/a/l/v2/h/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public m7(Lcom/truecaller/premium/PremiumLaunchContext;)V
    .locals 3

    const-string v0, "launchContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->c:Le/a/l/a2;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Le/a/l/a2;->b(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;)V

    return-void

    :cond_0
    const-string p1, "premiumScreenNavigator"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->b:Le/a/l/v2/h/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->b:Le/a/l/v2/h/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setCallBack(Le/a/l/v2/h/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->g:Le/a/l/v2/h/i;

    return-void
.end method

.method public final setConsumablePurchasePrompter(Le/a/l/o2/f;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->d:Le/a/l/o2/f;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 6

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    sget p1, Lcom/truecaller/premium/R$layout;->view_launch_premium_screen:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    iget-boolean v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    sget p1, Lcom/truecaller/premium/R$layout;->view_launch_premium_screen_legacy:I

    :goto_1
    move v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, p0

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->a(Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;IZLandroid/view/ViewGroup;ZI)Landroid/view/View;

    move-result-object p1

    .line 4
    sget v0, Lcom/truecaller/premium/R$id;->fallback:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$b;

    invoke-direct {v0, p0}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$b;-><init>(Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLaunchContext(Lcom/truecaller/premium/PremiumLaunchContext;)V
    .locals 1

    const-string v0, "launchContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->b:Le/a/l/v2/h/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/l/v2/h/c;->G9(Lcom/truecaller/premium/PremiumLaunchContext;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setPremiumScreenNavigator(Le/a/l/a2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->c:Le/a/l/a2;

    return-void
.end method

.method public final setPresenter(Le/a/l/v2/h/c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->b:Le/a/l/v2/h/c;

    return-void
.end method

.method public sv(Ljava/lang/String;Le/a/l/n2/f;Le/a/l/v2/i/a/b;Ljava/lang/String;)V
    .locals 9

    const-string v0, "topImage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscription"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;->b(Ljava/lang/Integer;)V

    .line 2
    sget v0, Lcom/truecaller/premium/R$id;->first:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<SubscriptionButtonView>(R.id.first)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 3
    sget v0, Lcom/truecaller/premium/R$id;->second:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<SubscriptionButtonView>(R.id.second)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 4
    sget v0, Lcom/truecaller/premium/R$id;->third:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<SubscriptionButtonView>(R.id.third)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 5
    sget v0, Lcom/truecaller/premium/R$id;->topImageBannerView:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<LinearLayou\u2026(R.id.topImageBannerView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 6
    sget v0, Lcom/truecaller/premium/R$id;->promoBannerView:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 7
    invoke-static {v0}, Le/a/m0/a1$k;->L1(Landroid/view/View;)Le/a/z3/e;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/z3/d;

    .line 9
    iput-object p1, v2, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, v2, Le/f/a/h;->N:Z

    .line 11
    check-cast v1, Le/a/z3/d;

    const/4 v2, 0x2

    new-array v3, v2, [Le/f/a/n/m;

    .line 12
    new-instance v4, Le/f/a/n/q/d/i;

    invoke-direct {v4}, Le/f/a/n/q/d/i;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Le/f/a/n/q/d/y;

    const-string v6, "this"

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "this.context"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/truecaller/premium/R$dimen;->tcx_wvm_top_image_corner_radius:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v6}, Le/f/a/n/q/d/y;-><init>(I)V

    aput-object v4, v3, p1

    invoke-virtual {v1, v3}, Le/a/z3/d;->r0([Le/f/a/n/m;)Le/a/z3/d;

    move-result-object v1

    .line 13
    invoke-static {v0}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object v3

    check-cast v3, Le/a/z3/e;

    .line 14
    sget v4, Lcom/truecaller/premium/R$drawable;->img_premium_user_tab_promo_card_fallback:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/z3/e;->A(Ljava/lang/Integer;)Le/a/z3/d;

    move-result-object v3

    new-array v2, v2, [Le/f/a/n/m;

    .line 15
    new-instance v4, Le/f/a/n/q/d/i;

    invoke-direct {v4}, Le/f/a/n/q/d/i;-><init>()V

    aput-object v4, v2, v5

    .line 16
    new-instance v4, Le/f/a/n/q/d/y;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v6}, Le/f/a/n/q/d/y;-><init>(I)V

    aput-object v4, v2, p1

    .line 17
    invoke-virtual {v3, v2}, Le/a/z3/d;->r0([Le/f/a/n/m;)Le/a/z3/d;

    move-result-object v2

    .line 18
    iput-object v2, v1, Le/f/a/h;->L:Le/f/a/h;

    .line 19
    invoke-virtual {v1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    if-eqz p3, :cond_0

    .line 20
    sget v0, Lcom/truecaller/premium/R$id;->buyBtn:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;

    .line 21
    invoke-virtual {v0, p3}, Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;->setButton(Le/a/l/v2/i/a/b;)V

    .line 22
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 23
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    const-wide/16 v1, 0x12c

    .line 24
    new-instance v3, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$d;

    invoke-direct {v3, p3, p0, p2}, Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView$d;-><init>(Le/a/l/v2/i/a/b;Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;Le/a/l/n2/f;)V

    invoke-static {v0, v1, v2, v3}, Le/a/n/g0;->w0(Landroid/view/View;JLs1/z/b/l;)V

    .line 25
    :cond_0
    sget p2, Lcom/truecaller/premium/R$id;->disclaimerLabel:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p4, :cond_1

    .line 26
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    move v5, p1

    :cond_2
    xor-int/2addr p1, v5

    invoke-static {p2, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 27
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
