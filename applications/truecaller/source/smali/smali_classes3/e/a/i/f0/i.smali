.class public abstract Le/a/i/f0/i;
.super Le/a/i/n;
.source "SourceFile"


# instance fields
.field public final a:Le/a/i/f0/d;

.field public final b:Le/a/i/s;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/i/f0/d;Le/a/i/s;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/i/n;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/i/f0/i;->a:Le/a/i/f0/d;

    .line 3
    iput-object p2, p0, Le/a/i/f0/i;->b:Le/a/i/s;

    .line 4
    iput-object p3, p0, Le/a/i/f0/i;->c:Ljava/lang/String;

    .line 5
    invoke-interface {p1, p2, p0, p3}, Le/a/i/f0/d;->l(Le/a/i/s;Le/a/i/m;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/i/f0/i;->a:Le/a/i/f0/d;

    iget-object v1, p0, Le/a/i/f0/i;->b:Le/a/i/s;

    iget-object v2, p0, Le/a/i/f0/i;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v3, v4, v2}, Le/a/i/f0/d;->g(Le/a/i/s;IZLjava/lang/String;)Le/a/i/f0/m/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/i/f0/i;->a:Le/a/i/f0/d;

    iget-object v2, p0, Le/a/i/f0/i;->b:Le/a/i/s;

    invoke-interface {v1, v2, p0}, Le/a/i/f0/d;->h(Le/a/i/s;Le/a/i/m;)V

    .line 3
    move-object v1, p0

    check-cast v1, Le/a/e/c/u1;

    .line 4
    iget-object v2, v1, Le/a/e/c/u1;->d:Le/a/e/c/s1;

    .line 5
    iget-object v4, v2, Le/a/e/c/s1;->R1:Le/a/i/f0/i;

    if-ne v4, v1, :cond_0

    const/4 v1, 0x0

    .line 6
    iput-object v1, v2, Le/a/e/c/s1;->R1:Le/a/i/f0/i;

    .line 7
    iput-boolean v3, v2, Le/a/e/c/s1;->E1:Z

    .line 8
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    iget-object v1, v2, Le/a/e/c/s1;->T:Lcom/truecaller/ads/ui/AdsSwitchView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    iget-object v1, v2, Le/a/e/c/s1;->T:Lcom/truecaller/ads/ui/AdsSwitchView;

    sget-object v2, Lcom/truecaller/ads/AdLayoutTypeX;->DETAILS:Lcom/truecaller/ads/AdLayoutTypeX;

    invoke-virtual {v1, v0, v2}, Lcom/truecaller/ads/ui/AdsSwitchView;->d(Le/a/i/f0/m/d;Le/a/i/g;)V

    :cond_0
    return-void
.end method
