.class Lg/g/b/b/a/e$a;
.super Landroidx/room/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/b/a/e;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lg/g/b/b/e/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lg/g/b/b/a/e;Landroidx/room/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `caller_ids` (`_id`,`entity_type`,`phone_number`,`reputation_level`,`display_name`,`display_location`,`display_image_url`,`attribution_image`,`attribution_url`,`attribution_name`,`profile_tag`,`display_line_type`,`entity_expired_time_millis`,`source_type`,`last_access_time_millis`,`profile_icon_type`,`reputation_category_id`,`category_name`,`display_category_name`,`line_type_id`,`display_detail`,`display_description`,`language_tag`,`display_background_url`,`display_background_assettype`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lf/t/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lg/g/b/b/e/a/b;

    invoke-virtual {p0, p1, p2}, Lg/g/b/b/a/e$a;->k(Lf/t/a/f;Lg/g/b/b/e/a/b;)V

    return-void
.end method

.method public k(Lf/t/a/f;Lg/g/b/b/e/a/b;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->p()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lf/t/a/d;->g0(IJ)V

    .line 2
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->o()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->t()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->t()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->x()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->x()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 11
    :goto_2
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->m()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->m()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 14
    :goto_3
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->l()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 15
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 17
    :goto_4
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 18
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_5

    .line 19
    :cond_5
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 20
    :goto_5
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 21
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_6

    .line 22
    :cond_6
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 23
    :goto_6
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->c()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_7

    .line 24
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_7

    .line 25
    :cond_7
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 26
    :goto_7
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_8

    .line 27
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_8

    .line 28
    :cond_8
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 29
    :goto_8
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->v()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_9

    .line 30
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_9

    .line 31
    :cond_9
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->v()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 32
    :goto_9
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->k()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_a

    .line 33
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_a

    .line 34
    :cond_a
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 35
    :goto_a
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->n()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_b

    .line 36
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_b

    .line 37
    :cond_b
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lf/t/a/d;->g0(IJ)V

    .line 38
    :goto_b
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->y()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_c

    .line 39
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_c

    .line 40
    :cond_c
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->y()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 41
    :goto_c
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->r()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xf

    if-nez v0, :cond_d

    .line 42
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_d

    .line 43
    :cond_d
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->r()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lf/t/a/d;->g0(IJ)V

    .line 44
    :goto_d
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->u()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_e

    .line 45
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_e

    .line 46
    :cond_e
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->u()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 47
    :goto_e
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->w()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x11

    if-nez v0, :cond_f

    .line 48
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_f

    .line 49
    :cond_f
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->w()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lf/t/a/d;->g0(IJ)V

    .line 50
    :goto_f
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->d()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    if-nez v0, :cond_10

    .line 51
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_10

    .line 52
    :cond_10
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 53
    :goto_10
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->g()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    if-nez v0, :cond_11

    .line 54
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_11

    .line 55
    :cond_11
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 56
    :goto_11
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->s()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    if-nez v0, :cond_12

    .line 57
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_12

    .line 58
    :cond_12
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->s()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 59
    :goto_12
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->i()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15

    if-nez v0, :cond_13

    .line 60
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_13

    .line 61
    :cond_13
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 62
    :goto_13
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16

    if-nez v0, :cond_14

    .line 63
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_14

    .line 64
    :cond_14
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 65
    :goto_14
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->q()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    if-nez v0, :cond_15

    .line 66
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_15

    .line 67
    :cond_15
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 68
    :goto_15
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    const/16 v0, 0x18

    .line 69
    invoke-interface {p1, v0}, Lf/t/a/d;->M0(I)V

    goto :goto_16

    :cond_16
    const/16 v0, 0x18

    .line 70
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 71
    :goto_16
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    const/16 p2, 0x19

    .line 72
    invoke-interface {p1, p2}, Lf/t/a/d;->M0(I)V

    goto :goto_17

    :cond_17
    const/16 v0, 0x19

    .line 73
    invoke-virtual {p2}, Lg/g/b/b/e/a/b;->e()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lf/t/a/d;->x(ILjava/lang/String;)V

    :goto_17
    return-void
.end method
