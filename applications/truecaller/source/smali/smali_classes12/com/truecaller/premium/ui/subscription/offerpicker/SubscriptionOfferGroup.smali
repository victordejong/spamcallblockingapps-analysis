.class public final Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J%\u0010\u000c\u001a\u00020\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u00020\u00052\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00052\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0016J7\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 R%\u0010&\u001a\n \"*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010#\u001a\u0004\u0008$\u0010%R%\u0010)\u001a\n \"*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010#\u001a\u0004\u0008(\u0010%R+\u0010-\u001a\u0010\u0012\u000c\u0012\n \"*\u0004\u0018\u00010!0!0\u00088B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010#\u001a\u0004\u0008+\u0010,R\"\u00103\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u0010\u0007R\u001c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\t048\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R$\u00109\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u00108R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R%\u0010?\u001a\n \"*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010#\u001a\u0004\u0008>\u0010%R$\u0010A\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u00108R%\u0010F\u001a\n \"*\u0004\u0018\u00010B0B8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008C\u0010#\u001a\u0004\u0008D\u0010E\u00a8\u0006G"
    }
    d2 = {
        "Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;",
        "Landroid/widget/LinearLayout;",
        "Landroid/view/View$OnClickListener;",
        "",
        "pos",
        "Ls1/s;",
        "setSelected",
        "(I)V",
        "",
        "Le/a/l/v2/i/c/a;",
        "subscriptionsOffers",
        "defaultSelectedPos",
        "e",
        "(Ljava/util/List;I)V",
        "Lkotlin/Function1;",
        "onClick",
        "setOfferActionButtonClick",
        "(Ls1/z/b/l;)V",
        "listener",
        "setOnOfferSelectedListener",
        "Landroid/view/View;",
        "view",
        "(Landroid/view/View;)V",
        "",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onLayout",
        "(ZIIII)V",
        "d",
        "()V",
        "Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;",
        "kotlin.jvm.PlatformType",
        "Ls1/g;",
        "getFirst",
        "()Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;",
        "first",
        "f",
        "getThird",
        "third",
        "i",
        "getSubscriptionButtons",
        "()Ljava/util/List;",
        "subscriptionButtons",
        "j",
        "I",
        "getCurrentSelected",
        "()I",
        "setCurrentSelected",
        "currentSelected",
        "",
        "a",
        "Ljava/util/List;",
        "subscriptionList",
        "Ls1/z/b/l;",
        "onOfferActionButtonClick",
        "Le/a/p5/i0;",
        "h",
        "Le/a/p5/i0;",
        "resourceProvider",
        "getSecond",
        "second",
        "c",
        "onOfferSelectedListener",
        "Lcom/google/android/material/button/MaterialButton;",
        "g",
        "getActionButton",
        "()Lcom/google/android/material/button/MaterialButton;",
        "actionButton",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/l/v2/i/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Le/a/l/v2/i/c/a;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Le/a/p5/i0;

.field public final i:Ls1/g;

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->a:Ljava/util/List;

    const p2, 0x7f0a0786

    .line 4
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->d:Ls1/g;

    const p2, 0x7f0a0ee2

    .line 5
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->e:Ls1/g;

    const p2, 0x7f0a1217

    .line 6
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->f:Ls1/g;

    const p2, 0x7f0a005d

    .line 7
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->g:Ls1/g;

    .line 8
    new-instance p2, Le/a/p5/i0;

    invoke-direct {p2, p1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->h:Le/a/p5/i0;

    .line 9
    new-instance p1, Le/a/l/v2/i/c/c;

    invoke-direct {p1, p0}, Le/a/l/v2/i/c/c;-><init>(Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->i:Ls1/g;

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p2, 0x7f0d0460

    .line 11
    invoke-static {p0, p2, p1, v1, v0}, Le/a/l4/k;->S(Landroid/view/ViewGroup;IZZI)Landroid/view/View;

    .line 12
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->getActionButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    const-string p2, "actionButton"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Le/a/l/v2/i/c/b;

    invoke-direct {p2, p0}, Le/a/l/v2/i/c/b;-><init>(Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1, p2}, Le/a/n/g0;->w0(Landroid/view/View;JLs1/z/b/l;)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->j:I

    return-void
.end method

.method public static final synthetic a(Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;)Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->getFirst()Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;)Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->getSecond()Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;)Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->getThird()Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    move-result-object p0

    return-object p0
.end method

.method private final getActionButton()Lcom/google/android/material/button/MaterialButton;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    return-object v0
.end method

.method private final getFirst()Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    return-object v0
.end method

.method private final getSecond()Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    return-object v0
.end method

.method private final getSubscriptionButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->i:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getThird()Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    return-object v0
.end method

.method private final setSelected(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/v2/i/c/a;

    .line 2
    iget-object v0, v0, Le/a/l/v2/i/c/a;->f:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->getSubscriptionButtons()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    if-ne v2, p1, :cond_0

    .line 5
    sget-object v2, Le/a/l/v2/i/c/d$b;->a:Le/a/l/v2/i/c/d$b;

    invoke-virtual {v3, v2}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->setOfferState(Le/a/l/v2/i/c/d;)V

    goto :goto_1

    .line 6
    :cond_0
    sget-object v2, Le/a/l/v2/i/c/d$a;->a:Le/a/l/v2/i/c/d$a;

    invoke-virtual {v3, v2}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->setOfferState(Le/a/l/v2/i/c/d;)V

    :goto_1
    move v2, v4

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->getActionButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    const-string v2, "actionButton"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iput p1, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->j:I

    .line 10
    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->c:Ls1/z/b/l;

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_3
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->getSubscriptionButtons()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->getInnerContainer()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->getInnerContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    .line 7
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v1}, Ls1/u/i;->X(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->getSubscriptionButtons()Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    .line 11
    invoke-virtual {v1, v3}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->setInnerContainerHeight(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final e(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/l/v2/i/c/a;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "subscriptionsOffers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_3

    check-cast v1, Le/a/l/v2/i/c/a;

    .line 6
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->getSubscriptionButtons()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "subscriptionButtons[pos]"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;

    .line 7
    iget-object v3, v1, Le/a/l/v2/i/c/a;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v3}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->setOfferPrice(Ljava/lang/String;)V

    .line 9
    iget-object v3, v1, Le/a/l/v2/i/c/a;->h:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->h:Le/a/p5/i0;

    const v4, 0x7f0405a1

    invoke-virtual {v3, v4}, Le/a/p5/i0;->l(I)I

    move-result v3

    :goto_1
    invoke-virtual {v0, v3}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->setOfferPriceTextColor(I)V

    .line 11
    iget-object v3, v1, Le/a/l/v2/i/c/a;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v3}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->setOfferDuration(Ljava/lang/String;)V

    .line 13
    iget-object v3, v1, Le/a/l/v2/i/c/a;->d:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v3}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->setOfferHeading(Ljava/lang/String;)V

    .line 15
    iget-object v3, v1, Le/a/l/v2/i/c/a;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v3}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->setOfferPricePerMoth(Ljava/lang/String;)V

    .line 17
    iget-object v3, v1, Le/a/l/v2/i/c/a;->e:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v3}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->setSubtext(Ljava/lang/String;)V

    .line 19
    iget v3, v1, Le/a/l/v2/i/c/a;->i:I

    .line 20
    invoke-virtual {v0, v3}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->setOuterBackground(I)V

    .line 21
    iget v3, v1, Le/a/l/v2/i/c/a;->j:I

    .line 22
    invoke-virtual {v0, v3}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->setInnerBackground(I)V

    .line 23
    iget v3, v1, Le/a/l/v2/i/c/a;->k:I

    .line 24
    invoke-virtual {v0, v3}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->setSubtextBackground(I)V

    .line 25
    iget v3, v1, Le/a/l/v2/i/c/a;->l:I

    .line 26
    invoke-virtual {v0, v3}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;->setSubtextFontColor(I)V

    .line 27
    iget-boolean v1, v1, Le/a/l/v2/i/c/a;->g:Z

    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    move v0, v2

    goto :goto_0

    .line 29
    :cond_3
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 p1, 0x0

    throw p1

    .line 30
    :cond_4
    invoke-direct {p0, p2}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->setSelected(I)V

    .line 31
    new-instance p1, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup$a;

    invoke-direct {p1, p0, p0}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup$a;-><init>(Landroid/view/View;Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;)V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final getCurrentSelected()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->j:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0786

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0ee2

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a1217

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 2
    invoke-direct {p0, p1}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->setSelected(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->setSelected(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->setSelected(I)V

    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->d()V

    :cond_0
    return-void
.end method

.method public final setCurrentSelected(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->j:I

    return-void
.end method

.method public final setOfferActionButtonClick(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Le/a/l/v2/i/c/a;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onClick"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->b:Ls1/z/b/l;

    return-void
.end method

.method public final setOnOfferSelectedListener(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->c:Ls1/z/b/l;

    return-void
.end method
