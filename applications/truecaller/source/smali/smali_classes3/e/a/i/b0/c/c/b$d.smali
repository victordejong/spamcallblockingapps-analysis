.class public Le/a/i/b0/c/c/b$d;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/b0/c/c/b;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Le/a/i/b0/c/d/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/i/b0/c/c/b;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Le/a/i/b0/c/d/a;

    .line 2
    iget-wide v0, p2, Le/a/i/b0/c/d/a;->a:J

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    iget-object v0, p2, Le/a/i/b0/c/d/a;->b:Ljava/lang/String;

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
    iget-object v0, p2, Le/a/i/b0/c/d/a;->c:Ljava/lang/String;

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
    iget-object v0, p2, Le/a/i/b0/c/d/a;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 11
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x5

    .line 13
    iget-wide v1, p2, Le/a/i/b0/c/d/a;->e:J

    .line 14
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    .line 15
    iget-object v0, p2, Le/a/i/b0/c/d/a;->f:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 16
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 17
    :cond_3
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 18
    :goto_3
    iget-object v0, p2, Le/a/i/b0/c/d/a;->g:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 19
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 20
    :cond_4
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 21
    :goto_4
    iget-object v0, p2, Le/a/i/b0/c/d/a;->h:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_5

    .line 22
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_5

    .line 23
    :cond_5
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 24
    :goto_5
    iget-object v0, p2, Le/a/i/b0/c/d/a;->i:Ljava/lang/String;

    const/16 v1, 0x9

    if-nez v0, :cond_6

    .line 25
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_6

    .line 26
    :cond_6
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 27
    :goto_6
    iget-object v0, p2, Le/a/i/b0/c/d/a;->j:Ljava/lang/String;

    const/16 v1, 0xa

    if-nez v0, :cond_7

    .line 28
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_7

    .line 29
    :cond_7
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 30
    :goto_7
    iget-object v0, p2, Le/a/i/b0/c/d/a;->k:Ljava/lang/String;

    const/16 v1, 0xb

    if-nez v0, :cond_8

    .line 31
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_8

    .line 32
    :cond_8
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 33
    :goto_8
    iget-object v0, p2, Le/a/i/b0/c/d/a;->l:Ljava/lang/String;

    const/16 v1, 0xc

    if-nez v0, :cond_9

    .line 34
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_9

    .line 35
    :cond_9
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 36
    :goto_9
    iget-object p2, p2, Le/a/i/b0/c/d/a;->m:Ljava/lang/String;

    const/16 v0, 0xd

    if-nez p2, :cond_a

    .line 37
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    goto :goto_a

    .line 38
    :cond_a
    invoke-interface {p1, v0, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_a
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `ad_campaigns` (`_id`,`campaign_id`,`phone_number`,`placement_name`,`expires_at`,`main_color`,`light_color`,`button_color`,`banner_background_color`,`image_url`,`brand_name`,`cta_text_color`,`cta_background_color`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
