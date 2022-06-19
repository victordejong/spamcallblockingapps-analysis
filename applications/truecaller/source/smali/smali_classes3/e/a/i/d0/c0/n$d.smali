.class public Le/a/i/d0/c0/n$d;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/c0/n;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Le/a/i/d0/c0/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/d0/c0/n;


# direct methods
.method public constructor <init>(Le/a/i/d0/c0/n;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/d0/c0/n$d;->a:Le/a/i/d0/c0/n;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Le/a/i/d0/c0/p;

    .line 2
    iget-wide v0, p2, Le/a/i/d0/c0/p;->a:J

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    iget-object v0, p2, Le/a/i/d0/c0/p;->b:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 7
    :goto_0
    iget-object v0, p0, Le/a/i/d0/c0/n$d;->a:Le/a/i/d0/c0/n;

    .line 8
    iget-object v0, v0, Le/a/i/d0/c0/n;->c:Le/a/i/y/a;

    .line 9
    iget-object v1, p2, Le/a/i/d0/c0/p;->c:Lcom/truecaller/ads/mediation/model/AdPartner;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    if-nez v1, :cond_1

    .line 12
    invoke-interface {p1, v2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {p1, v2, v1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 14
    :goto_1
    iget-object v1, p0, Le/a/i/d0/c0/n$d;->a:Le/a/i/d0/c0/n;

    .line 15
    iget-object v1, v1, Le/a/i/d0/c0/n;->c:Le/a/i/y/a;

    .line 16
    iget-object v2, p2, Le/a/i/d0/c0/p;->d:Lcom/truecaller/ads/adsrouter/ui/AdType;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 19
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 20
    :cond_2
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 21
    :goto_2
    iget-object v0, p2, Le/a/i/d0/c0/p;->e:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 22
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 23
    :cond_3
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 24
    :goto_3
    iget-object v0, p2, Le/a/i/d0/c0/p;->f:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 25
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 26
    :cond_4
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 27
    :goto_4
    iget-object v0, p2, Le/a/i/d0/c0/p;->g:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 28
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_5

    .line 29
    :cond_5
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_5
    const/16 v0, 0x8

    .line 30
    iget-wide v1, p2, Le/a/i/d0/c0/p;->h:J

    .line 31
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `partner_ads` (`_id`,`ad_placement`,`ad_partner`,`ad_type`,`ad_response`,`ad_ecpm`,`ad_raw_ecpm`,`ad_expiry`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    return-object v0
.end method
