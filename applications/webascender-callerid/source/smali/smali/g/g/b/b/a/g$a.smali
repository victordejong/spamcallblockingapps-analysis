.class Lg/g/b/b/a/g$a;
.super Landroidx/room/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/b/a/g;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lg/g/b/b/e/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lg/g/b/b/a/g;Landroidx/room/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `local_override_ids` (`_id`,`phone_number`,`reported_name`,`user_comment`,`category_name`,`reputation_category_id`,`profile_tag`,`time_created`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lf/t/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lg/g/b/b/e/a/c;

    invoke-virtual {p0, p1, p2}, Lg/g/b/b/a/g$a;->k(Lf/t/a/f;Lg/g/b/b/e/a/c;)V

    return-void
.end method

.method public k(Lf/t/a/f;Lg/g/b/b/e/a/c;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->b()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lf/t/a/d;->g0(IJ)V

    .line 2
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 11
    :goto_2
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 14
    :goto_3
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->f()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 15
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lf/t/a/d;->g0(IJ)V

    .line 17
    :goto_4
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 18
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_5

    .line 19
    :cond_5
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 20
    :goto_5
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->g()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 21
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_6

    .line 22
    :cond_6
    invoke-virtual {p2}, Lg/g/b/b/e/a/c;->g()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lf/t/a/d;->g0(IJ)V

    :goto_6
    return-void
.end method
