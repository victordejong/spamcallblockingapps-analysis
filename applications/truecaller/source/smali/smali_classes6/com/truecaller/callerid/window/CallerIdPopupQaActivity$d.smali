.class public final Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->sa(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;

.field public final synthetic b:Le/a/d0/a/a;


# direct methods
.method public constructor <init>(Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;Le/a/d0/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$d;->a:Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;

    iput-object p2, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$d;->b:Le/a/d0/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$d;->a:Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;

    iget-object v1, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$d;->b:Le/a/d0/a/a;

    .line 2
    sget v2, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;->C:I

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/truecaller/ads/campaigns/AdCampaign$b;

    const-string v2, ""

    invoke-direct {v0, v2}, Lcom/truecaller/ads/campaigns/AdCampaign$b;-><init>(Ljava/lang/String;)V

    const-string v2, "#FFED00"

    .line 5
    iput-object v2, v0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->c:Ljava/lang/String;

    const-string v3, "#ED232A"

    .line 6
    iput-object v3, v0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->d:Ljava/lang/String;

    .line 7
    iput-object v2, v0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->e:Ljava/lang/String;

    .line 8
    iput-object v3, v0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->f:Ljava/lang/String;

    const-string v2, "https://upload.wikimedia.org/wikipedia/en/e/ed/Maggi_logo.png"

    .line 9
    iput-object v2, v0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->g:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Lcom/truecaller/ads/campaigns/AdCampaign$b;->a()Lcom/truecaller/ads/campaigns/AdCampaign;

    move-result-object v0

    .line 11
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/truecaller/ads/campaigns/AdCampaign;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ads/campaigns/AdCampaign;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v2, [Lcom/truecaller/ads/campaigns/AdCampaign;

    .line 13
    :goto_0
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 14
    iget-object v5, v4, Lcom/truecaller/ads/campaigns/AdCampaign;->b:Lcom/truecaller/ads/campaigns/AdCampaign$Style;

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    .line 15
    iget-object v0, v4, Lcom/truecaller/ads/campaigns/AdCampaign;->b:Lcom/truecaller/ads/campaigns/AdCampaign$Style;

    if-eqz v0, :cond_3

    const-string v2, "it"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Le/a/d0/a/a;->M5(Lcom/truecaller/ads/campaigns/AdCampaign$Style;)V

    :cond_3
    return-void
.end method
