.class public final Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;->w(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$c;->a:Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$c;->a:Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;

    invoke-virtual {p1}, Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;->getListener()Le/a/l/v2/e;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Le/a/e/y;

    .line 2
    iget-object p1, p1, Le/a/e/y;->a:Lcom/truecaller/ui/TruecallerInit;

    .line 3
    iget-object p1, p1, Lcom/truecaller/ui/TruecallerInit;->m:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$c;->a:Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "handler"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$c$a;

    invoke-direct {v1, p0}, Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$c$a;-><init>(Lcom/truecaller/premium/ui/PremiumNavDrawerItemView$c;)V

    .line 6
    new-instance v2, Le/a/l/v2/c;

    invoke-direct {v2, p1, v1}, Le/a/l/v2/c;-><init>(Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;Ls1/z/b/a;)V

    .line 7
    iput-object v2, p1, Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;->x:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    .line 8
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
