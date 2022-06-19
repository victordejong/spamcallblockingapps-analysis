.class public final Le/a/i/d0/a0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Le/a/i/d0/a0/d;

.field public final synthetic c:Le/a/i/d0/a0/p;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/i/d0/a0/d;Landroid/content/Context;Ljava/lang/String;Le/a/i/d0/a0/p;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/a0/f;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/i/d0/a0/f;->b:Le/a/i/d0/a0/d;

    iput-object p5, p0, Le/a/i/d0/a0/f;->c:Le/a/i/d0/a0/p;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsLoadedError(Lcom/appnext/core/AppnextError;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d0/a0/f;->a:Lq3/a/n;

    new-instance v1, Le/a/i/d0/i;

    new-instance v2, Le/a/i/d0/l;

    invoke-virtual {p1}, Lcom/appnext/core/AppnextError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "AppNext"

    invoke-direct {v2, p1, v3}, Le/a/i/d0/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    invoke-static {v0, v1}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method

.method public onAdsLoadedSuccessfully(Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;)V
    .locals 6

    const-string v0, "dataContainer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d0/a0/f;->a:Lq3/a/n;

    new-instance v1, Le/a/i/d0/k;

    iget-object v2, p0, Le/a/i/d0/a0/f;->b:Le/a/i/d0/a0/d;

    iget-object v3, p0, Le/a/i/d0/a0/f;->c:Le/a/i/d0/a0/p;

    .line 2
    iget-object v3, v3, Le/a/i/d0/a0/p;->b:Ljava/lang/String;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Le/a/i/d0/h0/g;

    invoke-direct {v2}, Le/a/i/d0/h0/g;-><init>()V

    .line 5
    sget-object v4, Lcom/truecaller/ads/mediation/model/AdPartner;->APPNEXT:Lcom/truecaller/ads/mediation/model/AdPartner;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<set-?>"

    .line 6
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v4, v2, Le/a/i/d0/h0/b;->f:Ljava/lang/String;

    .line 8
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object v3, v2, Le/a/i/d0/h0/b;->g:Ljava/lang/String;

    .line 10
    invoke-interface {p1}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;->getEcpm()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/a/i/d0/h0/a;->b(Ljava/lang/String;)V

    .line 11
    iget-object v3, v2, Le/a/i/d0/h0/a;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v3}, Le/a/i/d0/h0/a;->a(Ljava/lang/String;)V

    .line 13
    iput-object p1, v2, Le/a/i/d0/h0/g;->j:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;

    .line 14
    iget-object p1, v2, Le/a/i/d0/h0/a;->a:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 16
    iput-wide v3, v2, Le/a/i/d0/h0/a;->d:D

    const/4 p1, 0x0

    const/4 v3, 0x2

    .line 17
    invoke-direct {v1, v2, p1, v3}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method
