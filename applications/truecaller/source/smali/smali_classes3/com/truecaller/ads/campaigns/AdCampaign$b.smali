.class public Lcom/truecaller/ads/campaigns/AdCampaign$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ads/campaigns/AdCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lw3/c/a/a/a/a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->b:[Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/ads/campaigns/AdCampaign;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->f:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lcom/truecaller/ads/campaigns/AdCampaign$Style;

    iget-object v2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iget-object v2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iget-object v2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iget-object v2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->f:Ljava/lang/String;

    .line 4
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->h:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/truecaller/ads/campaigns/AdCampaign$Style;-><init>(IIIILjava/lang/String;Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaign$a;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_0
    move-object v4, v1

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    :try_start_1
    new-instance v0, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    iget-object v2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;-><init>(IILcom/truecaller/ads/campaigns/AdCampaign$a;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    move-object v5, v1

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Lcom/truecaller/ads/campaigns/AdCampaign$CtaAttributes;

    iget-object v2, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->l:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/truecaller/ads/campaigns/AdCampaign$CtaAttributes;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaign$a;)V

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v1

    .line 11
    :goto_2
    new-instance v0, Lcom/truecaller/ads/campaigns/AdCampaign;

    iget-object v3, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/truecaller/ads/campaigns/AdCampaign$b;->b:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/truecaller/ads/campaigns/AdCampaign;-><init>(Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaign$Style;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;[Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaign$CtaAttributes;Lcom/truecaller/ads/campaigns/AdCampaign$a;)V

    return-object v0
.end method
