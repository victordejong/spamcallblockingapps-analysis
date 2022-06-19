.class Lg/g/b/b/a/i$a;
.super Landroidx/room/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/b/a/i;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lg/g/b/b/e/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lg/g/b/b/a/i;Landroidx/room/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `postevent_data` (`_id`,`type`,`direction`,`phone_number`,`country_hint`,`duration`,`is_missed`,`is_blocked`,`is_contact`,`timestamp`,`profile_tag`,`block_reason`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lf/t/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lg/g/b/b/e/a/d;

    invoke-virtual {p0, p1, p2}, Lg/g/b/b/a/i$a;->k(Lf/t/a/f;Lg/g/b/b/e/a/d;)V

    return-void
.end method

.method public k(Lf/t/a/f;Lg/g/b/b/e/a/d;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->f()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lf/t/a/d;->g0(IJ)V

    .line 2
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 11
    :goto_2
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x6

    .line 14
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->c()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lf/t/a/d;->g0(IJ)V

    .line 15
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->l()Z

    move-result v0

    const/4 v1, 0x7

    int-to-long v2, v0

    .line 16
    invoke-interface {p1, v1, v2, v3}, Lf/t/a/d;->g0(IJ)V

    .line 17
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->j()Z

    move-result v0

    const/16 v1, 0x8

    int-to-long v2, v0

    .line 18
    invoke-interface {p1, v1, v2, v3}, Lf/t/a/d;->g0(IJ)V

    .line 19
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->k()Z

    move-result v0

    const/16 v1, 0x9

    int-to-long v2, v0

    .line 20
    invoke-interface {p1, v1, v2, v3}, Lf/t/a/d;->g0(IJ)V

    const/16 v0, 0xa

    .line 21
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->i()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lf/t/a/d;->g0(IJ)V

    .line 22
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_4

    .line 23
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_4

    .line 24
    :cond_4
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    :goto_4
    const/16 v0, 0xc

    .line 25
    invoke-virtual {p2}, Lg/g/b/b/e/a/d;->a()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lf/t/a/d;->g0(IJ)V

    return-void
.end method
