.class public final Le/a/i/d0/a0/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/CriteoBannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/a0/h;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Le/a/i/d0/a0/h;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/i/d0/a0/h;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/a0/h$a;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/i/d0/a0/h$a;->b:Le/a/i/d0/a0/h;

    iput-object p3, p0, Le/a/i/d0/a0/h$a;->c:Ljava/util/Map;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 1
    sget-object v0, Le/a/i/h0/m;->a:Ls1/z/b/l;

    const-string v1, "Criteo ad is clicked"

    .line 2
    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
    .locals 4

    const-string v0, "criteoErrorCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d0/a0/h$a;->a:Lq3/a/n;

    new-instance v1, Le/a/i/d0/i;

    new-instance v2, Le/a/i/d0/l;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/truecaller/ads/mediation/model/AdPartner;->CRITEO:Lcom/truecaller/ads/mediation/model/AdPartner;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Le/a/i/d0/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    invoke-static {v0, v1}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .line 1
    sget-object v0, Le/a/i/h0/m;->a:Ls1/z/b/l;

    const-string v1, "Criteo ad onAdLeftApplication called"

    .line 2
    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAdReceived(Lcom/criteo/publisher/CriteoBannerView;)V
    .locals 5

    const-string v0, "criteoBannerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d0/a0/h$a;->a:Lq3/a/n;

    new-instance v1, Le/a/i/d0/k;

    iget-object v2, p0, Le/a/i/d0/a0/h$a;->b:Le/a/i/d0/a0/h;

    iget-object v2, v2, Le/a/i/d0/a0/h;->h:Le/a/i/d0/a0/g;

    iget-object v3, p0, Le/a/i/d0/a0/h$a;->c:Ljava/util/Map;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Le/a/i/d0/h0/j;

    invoke-direct {v2}, Le/a/i/d0/h0/j;-><init>()V

    const-string v4, "crt_cpm"

    .line 4
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "0.0"

    :goto_0
    invoke-virtual {v2, v3}, Le/a/i/d0/h0/a;->b(Ljava/lang/String;)V

    .line 5
    iget-object v3, v2, Le/a/i/d0/h0/a;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v3}, Le/a/i/d0/h0/a;->a(Ljava/lang/String;)V

    const-string v3, "<set-?>"

    .line 7
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, v2, Le/a/i/d0/h0/j;->j:Lcom/criteo/publisher/CriteoBannerView;

    .line 9
    iget-object p1, v2, Le/a/i/d0/h0/a;->a:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 11
    iput-wide v3, v2, Le/a/i/d0/h0/a;->d:D

    const/4 p1, 0x0

    const/4 v3, 0x2

    .line 12
    invoke-direct {v1, v2, p1, v3}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method
