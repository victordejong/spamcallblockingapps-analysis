.class public Le/a/i/e/h/a/f$g;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/h/a/f;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Le/a/i/e/h/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/e/h/a/f;


# direct methods
.method public constructor <init>(Le/a/i/e/h/a/f;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/e/h/a/f$g;->a:Le/a/i/e/h/a/f;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Le/a/i/e/h/b/b;

    .line 2
    iget-wide v0, p2, Le/a/i/e/h/b/b;->a:J

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    iget-object v0, p2, Le/a/i/e/h/b/b;->b:Ljava/lang/String;

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
    iget-object v0, p2, Le/a/i/e/h/b/b;->c:Ljava/lang/String;

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
    iget-object v0, p0, Le/a/i/e/h/a/f$g;->a:Le/a/i/e/h/a/f;

    .line 11
    iget-object v0, v0, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 12
    iget-object v1, p2, Le/a/i/e/h/b/b;->d:Landroid/net/Uri;

    .line 13
    invoke-virtual {v0, v1}, Le/a/i/y/a;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 14
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 15
    :cond_2
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 16
    :goto_2
    iget-object v0, p0, Le/a/i/e/h/a/f$g;->a:Le/a/i/e/h/a/f;

    .line 17
    iget-object v0, v0, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 18
    iget-object v1, p2, Le/a/i/e/h/b/b;->e:Landroid/net/Uri;

    .line 19
    invoke-virtual {v0, v1}, Le/a/i/y/a;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 20
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 21
    :cond_3
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 22
    :goto_3
    iget-object v0, p0, Le/a/i/e/h/a/f$g;->a:Le/a/i/e/h/a/f;

    .line 23
    iget-object v0, v0, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 24
    iget-object v1, p2, Le/a/i/e/h/b/b;->f:Landroid/net/Uri;

    .line 25
    invoke-virtual {v0, v1}, Le/a/i/y/a;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 26
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 27
    :cond_4
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 28
    :goto_4
    iget-object v0, p2, Le/a/i/e/h/b/b;->g:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 29
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_5

    .line 30
    :cond_5
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 31
    :goto_5
    iget-object v0, p2, Le/a/i/e/h/b/b;->h:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 32
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_6

    .line 33
    :cond_6
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 34
    :goto_6
    iget-object v0, p2, Le/a/i/e/h/b/b;->i:Ljava/lang/String;

    const/16 v1, 0x9

    if-nez v0, :cond_7

    .line 35
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_7

    .line 36
    :cond_7
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 37
    :goto_7
    iget-object v0, p2, Le/a/i/e/h/b/b;->j:Ljava/lang/String;

    const/16 v1, 0xa

    if-nez v0, :cond_8

    .line 38
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_8

    .line 39
    :cond_8
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 40
    :goto_8
    iget-object v0, p2, Le/a/i/e/h/b/b;->k:Ljava/lang/String;

    const/16 v1, 0xb

    if-nez v0, :cond_9

    .line 41
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_9

    .line 42
    :cond_9
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 43
    :goto_9
    iget-object v0, p2, Le/a/i/e/h/b/b;->l:Ljava/lang/String;

    const/16 v1, 0xc

    if-nez v0, :cond_a

    .line 44
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_a

    .line 45
    :cond_a
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 46
    :goto_a
    iget-object v0, p2, Le/a/i/e/h/b/b;->m:Ljava/lang/String;

    const/16 v1, 0xd

    if-nez v0, :cond_b

    .line 47
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_b

    .line 48
    :cond_b
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 49
    :goto_b
    iget-object v0, p2, Le/a/i/e/h/b/b;->n:Ljava/lang/String;

    const/16 v1, 0xe

    if-nez v0, :cond_c

    .line 50
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_c

    .line 51
    :cond_c
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 52
    :goto_c
    iget-object v0, p2, Le/a/i/e/h/b/b;->o:Ljava/lang/Integer;

    const/16 v1, 0xf

    if-nez v0, :cond_d

    .line 53
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_d

    .line 54
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 55
    :goto_d
    iget-object v0, p2, Le/a/i/e/h/b/b;->p:Ljava/lang/Integer;

    const/16 v1, 0x10

    if-nez v0, :cond_e

    .line 56
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_e

    .line 57
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 58
    :goto_e
    iget-object v0, p0, Le/a/i/e/h/a/f$g;->a:Le/a/i/e/h/a/f;

    .line 59
    iget-object v0, v0, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 60
    iget-object v1, p2, Le/a/i/e/h/b/b;->q:Ljava/util/List;

    .line 61
    invoke-virtual {v0, v1}, Le/a/i/y/a;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    if-nez v0, :cond_f

    .line 62
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_f

    .line 63
    :cond_f
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 64
    :goto_f
    iget-object v0, p0, Le/a/i/e/h/a/f$g;->a:Le/a/i/e/h/a/f;

    .line 65
    iget-object v0, v0, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 66
    iget-object v1, p2, Le/a/i/e/h/b/b;->r:Ljava/util/List;

    .line 67
    invoke-virtual {v0, v1}, Le/a/i/y/a;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    if-nez v0, :cond_10

    .line 68
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_10

    .line 69
    :cond_10
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 70
    :goto_10
    iget-object v0, p0, Le/a/i/e/h/a/f$g;->a:Le/a/i/e/h/a/f;

    .line 71
    iget-object v0, v0, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 72
    iget-object v1, p2, Le/a/i/e/h/b/b;->s:Ljava/util/List;

    .line 73
    invoke-virtual {v0, v1}, Le/a/i/y/a;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    if-nez v0, :cond_11

    .line 74
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_11

    .line 75
    :cond_11
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 76
    :goto_11
    iget-object v0, p0, Le/a/i/e/h/a/f$g;->a:Le/a/i/e/h/a/f;

    .line 77
    iget-object v0, v0, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 78
    iget-object v1, p2, Le/a/i/e/h/b/b;->t:Ljava/util/List;

    .line 79
    invoke-virtual {v0, v1}, Le/a/i/y/a;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    if-nez v0, :cond_12

    .line 80
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_12

    .line 81
    :cond_12
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 82
    :goto_12
    iget-object v0, p0, Le/a/i/e/h/a/f$g;->a:Le/a/i/e/h/a/f;

    .line 83
    iget-object v0, v0, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 84
    iget-object v1, p2, Le/a/i/e/h/b/b;->u:Ljava/util/List;

    .line 85
    invoke-virtual {v0, v1}, Le/a/i/y/a;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15

    if-nez v0, :cond_13

    .line 86
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_13

    .line 87
    :cond_13
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_13
    const/16 v0, 0x16

    .line 88
    iget v1, p2, Le/a/i/e/h/b/b;->v:I

    int-to-long v1, v1

    .line 89
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v0, 0x17

    .line 90
    iget-wide v1, p2, Le/a/i/e/h/b/b;->w:J

    .line 91
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    .line 92
    iget-object v0, p2, Le/a/i/e/h/b/b;->x:Ljava/lang/String;

    const/16 v1, 0x18

    if-nez v0, :cond_14

    .line 93
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_14

    .line 94
    :cond_14
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 95
    :goto_14
    iget-object v0, p2, Le/a/i/e/h/b/b;->y:Ljava/lang/String;

    const/16 v1, 0x19

    if-nez v0, :cond_15

    .line 96
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_15

    .line 97
    :cond_15
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 98
    :goto_15
    iget-object v0, p2, Le/a/i/e/h/b/b;->z:Ljava/lang/String;

    const/16 v1, 0x1a

    if-nez v0, :cond_16

    .line 99
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_16

    .line 100
    :cond_16
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 101
    :goto_16
    iget-object v0, p2, Le/a/i/e/h/b/b;->A:Ljava/lang/String;

    const/16 v1, 0x1b

    if-nez v0, :cond_17

    .line 102
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_17

    .line 103
    :cond_17
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 104
    :goto_17
    iget-object v0, p2, Le/a/i/e/h/b/b;->B:Ljava/lang/String;

    const/16 v1, 0x1c

    if-nez v0, :cond_18

    .line 105
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_18

    .line 106
    :cond_18
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 107
    :goto_18
    iget-boolean v0, p2, Le/a/i/e/h/b/b;->C:Z

    const/16 v1, 0x1d

    int-to-long v2, v0

    .line 108
    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 109
    iget-object v0, p2, Le/a/i/e/h/b/b;->D:Ljava/lang/Integer;

    const/16 v1, 0x1e

    if-nez v0, :cond_19

    .line 110
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_19

    .line 111
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 112
    :goto_19
    iget-object p2, p2, Le/a/i/e/h/b/b;->E:Ljava/lang/Integer;

    const/16 v0, 0x1f

    if-nez p2, :cond_1a

    .line 113
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1a

    .line 114
    :cond_1a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1a
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `offline_ads` (`_id`,`ad_type`,`ad_html_content`,`ad_video_uri`,`ad_logo_uri`,`ad_image_uri`,`ad_title`,`ad_body`,`ad_landing_url`,`ad_external_landing_url`,`ad_cta`,`ad_ecpm`,`ad_raw_ecpm`,`ad_advertiser_name`,`ad_height`,`ad_width`,`ad_click`,`ad_impression`,`ad_view_impression`,`ad_video_impression`,`ad_thank_you_pixels`,`ad_ttl`,`ad_expiry`,`ad_partner`,`ad_campaign_type`,`ad_publisher`,`ad_partner_logo`,`ad_partner_privacy`,`ad_ui_config_available`,`ad_imp_per_user`,`ad_click_per_user`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
