.class public final Le/a/i/d/g;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/i/d/n$c;


# instance fields
.field public final a:Le/a/i/a/f;

.field public final b:Le/a/i/d/e;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/i/d/e;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Le/a/i/d/g;->b:Le/a/i/d/e;

    .line 2
    check-cast p1, Le/a/i/a/f;

    iput-object p1, p0, Le/a/i/d/g;->a:Le/a/i/a/f;

    return-void
.end method


# virtual methods
.method public C1(Le/a/i/f0/m/f;)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d/g;->a:Le/a/i/a/f;

    .line 2
    iget-object v1, p1, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 3
    check-cast v1, Le/a/i/f0/n/d;

    .line 4
    iget-object p1, p1, Le/a/i/f0/m/b;->c:Le/a/i/f0/l/c;

    .line 5
    iget-object p1, p1, Le/a/i/f0/l/c;->d:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    .line 6
    invoke-static {v0, v1, p1}, Le/m/d/y/n;->p(Le/a/i/a/f;Le/a/i/f0/n/d;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;)V

    .line 7
    iget-object p1, p0, Le/a/i/d/g;->b:Le/a/i/d/e;

    invoke-interface {p1}, Le/a/i/d/e;->onAdShown()V

    return-void
.end method
