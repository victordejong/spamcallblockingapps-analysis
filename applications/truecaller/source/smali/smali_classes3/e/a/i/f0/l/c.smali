.class public final Le/a/i/f0/l/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/i/s;

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

.field public final e:Z

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/i/s;Ljava/lang/String;[Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaign$Style;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p4, "config"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "unitId"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "uniqueId"

    invoke-static {p8, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/l/c;->a:Le/a/i/s;

    iput-object p2, p0, Le/a/i/f0/l/c;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/i/f0/l/c;->c:[Ljava/lang/String;

    iput-object p5, p0, Le/a/i/f0/l/c;->d:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    iput-boolean p6, p0, Le/a/i/f0/l/c;->e:Z

    iput-boolean p7, p0, Le/a/i/f0/l/c;->f:Z

    iput-object p8, p0, Le/a/i/f0/l/c;->g:Ljava/lang/String;

    iput-object p9, p0, Le/a/i/f0/l/c;->h:Ljava/lang/String;

    return-void
.end method
