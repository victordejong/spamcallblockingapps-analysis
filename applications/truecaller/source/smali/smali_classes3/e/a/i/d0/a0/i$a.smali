.class public final Le/a/i/d0/a0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/a0/i;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Le/a/i/d0/a0/i;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Le/a/i/d0/a0/g$b;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/i/d0/a0/i;Ljava/util/Map;Le/a/i/d0/a0/g$b;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/a0/i$a;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/i/d0/a0/i$a;->b:Le/a/i/d0/a0/i;

    iput-object p3, p0, Le/a/i/d0/a0/i$a;->c:Ljava/util/Map;

    iput-object p4, p0, Le/a/i/d0/a0/i$a;->d:Le/a/i/d0/a0/g$b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    sget-object v0, Le/a/i/h0/m;->a:Ls1/z/b/l;

    const-string v1, "Criteo native ad is clicked"

    .line 2
    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Le/a/i/d0/a0/i$a;->b:Le/a/i/d0/a0/i;

    iget-object v1, v0, Le/a/i/d0/a0/i;->l:Le/a/i/d0/z;

    iget-object v0, v0, Le/a/i/d0/a0/i;->m:Ljava/lang/String;

    const-string v2, "Criteo"

    invoke-static {v2}, Le/m/d/y/n;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Le/a/i/d0/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAdClosed()V
    .locals 0

    invoke-static {p0}, Le/i/b/r1/c;->$default$onAdClosed(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method

.method public onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
    .locals 4

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d0/a0/i$a;->a:Lq3/a/n;

    new-instance v1, Le/a/i/d0/i;

    new-instance v2, Le/a/i/d0/l;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Criteo"

    invoke-direct {v2, p1, v3}, Le/a/i/d0/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    invoke-static {v0, v1}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 3

    .line 1
    sget-object v0, Le/a/i/h0/m;->a:Ls1/z/b/l;

    const-string v1, "Criteo native ad impression registered"

    .line 2
    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Le/a/i/d0/a0/i$a;->b:Le/a/i/d0/a0/i;

    iget-object v1, v0, Le/a/i/d0/a0/i;->l:Le/a/i/d0/z;

    iget-object v0, v0, Le/a/i/d0/a0/i;->m:Ljava/lang/String;

    const-string v2, "Criteo"

    invoke-static {v2}, Le/m/d/y/n;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Le/a/i/d0/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAdLeftApplication()V
    .locals 0

    invoke-static {p0}, Le/i/b/r1/c;->$default$onAdLeftApplication(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method

.method public onAdReceived(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 10

    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d0/a0/i$a;->b:Le/a/i/d0/a0/i;

    iget-object v0, v0, Le/a/i/d0/a0/i;->k:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->createNativeRenderedView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    iget-object v0, p0, Le/a/i/d0/a0/i$a;->a:Lq3/a/n;

    new-instance v2, Le/a/i/d0/k;

    new-instance v9, Le/a/i/d0/a0/g$a;

    iget-object v3, p0, Le/a/i/d0/a0/i$a;->b:Le/a/i/d0/a0/i;

    iget-object v4, v3, Le/a/i/d0/a0/i;->i:Le/a/i/d0/a0/g;

    iget-object v5, v3, Le/a/i/d0/a0/i;->k:Landroid/content/Context;

    iget-object v7, p0, Le/a/i/d0/a0/i$a;->c:Ljava/util/Map;

    iget-object v8, p0, Le/a/i/d0/a0/i$a;->d:Le/a/i/d0/a0/g$b;

    move-object v3, v9

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Le/a/i/d0/a0/g$a;-><init>(Le/a/i/d0/a0/g;Landroid/content/Context;Lcom/criteo/publisher/advancednative/CriteoNativeAd;Ljava/util/Map;Le/a/i/d0/a0/g$b;)V

    const/4 p1, 0x2

    invoke-direct {v2, v9, v1, p1}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-static {v0, v2}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method
