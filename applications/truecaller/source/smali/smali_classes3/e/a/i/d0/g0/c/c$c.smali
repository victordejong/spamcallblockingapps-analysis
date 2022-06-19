.class public Le/a/i/d0/g0/c/c$c;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/g0/c/c;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Le/a/i/d0/g0/c/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/d0/g0/c/c;


# direct methods
.method public constructor <init>(Le/a/i/d0/g0/c/c;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/d0/g0/c/c$c;->a:Le/a/i/d0/g0/c/c;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Le/a/i/d0/g0/c/e;

    .line 2
    iget-wide v0, p2, Le/a/i/d0/g0/c/e;->a:J

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    iget-object v0, p2, Le/a/i/d0/g0/c/e;->b:Ljava/lang/String;

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
    iget-object v0, p2, Le/a/i/d0/g0/c/e;->c:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 10
    :goto_1
    iget-object v0, p2, Le/a/i/d0/g0/c/e;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 11
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 13
    :goto_2
    iget-object v0, p2, Le/a/i/d0/g0/c/e;->e:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 14
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 16
    :goto_3
    iget-object v0, p0, Le/a/i/d0/g0/c/c$c;->a:Le/a/i/d0/g0/c/c;

    .line 17
    iget-object v0, v0, Le/a/i/d0/g0/c/c;->c:Le/a/i/y/a;

    .line 18
    iget-object v1, p2, Le/a/i/d0/g0/c/e;->f:Ljava/util/List;

    .line 19
    invoke-virtual {v0, v1}, Le/a/i/y/a;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 20
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 21
    :cond_4
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 22
    :goto_4
    iget-object v0, p2, Le/a/i/d0/g0/c/e;->g:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 23
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_5

    .line 24
    :cond_5
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_5
    const/16 v0, 0x8

    .line 25
    iget-wide v1, p2, Le/a/i/d0/g0/c/e;->h:J

    .line 26
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v0, 0x9

    .line 27
    iget-wide v1, p2, Le/a/i/d0/g0/c/e;->i:J

    .line 28
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `predictive_ecpm_config` (`_id`,`placement_id`,`partner_id`,`pricing_model`,`pricing_ecpm`,`ad_types`,`floor_price`,`ttl`,`expires_at`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?)"

    return-object v0
.end method
