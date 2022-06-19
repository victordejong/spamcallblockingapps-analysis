.class Lg/g/b/b/a/c$a;
.super Landroidx/room/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/b/a/c;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lg/g/b/b/e/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lg/g/b/b/a/c;Landroidx/room/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `block_numbers` (`_id`,`phone_number`,`normalized_number`,`created_time_millis`,`is_partial`,`country_calling_code`) VALUES (nullif(?, 0),?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lf/t/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lg/g/b/b/e/a/a;

    invoke-virtual {p0, p1, p2}, Lg/g/b/b/a/c$a;->k(Lf/t/a/f;Lg/g/b/b/e/a/a;)V

    return-void
.end method

.method public k(Lf/t/a/f;Lg/g/b/b/e/a/a;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lg/g/b/b/e/a/a;->c()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lf/t/a/d;->g0(IJ)V

    .line 2
    invoke-virtual {p2}, Lg/g/b/b/e/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lg/g/b/b/e/a/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lg/g/b/b/e/a/a;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lg/g/b/b/e/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p2}, Lg/g/b/b/e/a/a;->b()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lf/t/a/d;->g0(IJ)V

    .line 9
    invoke-virtual {p2}, Lg/g/b/b/e/a/a;->f()Z

    move-result v0

    const/4 v1, 0x5

    int-to-long v2, v0

    .line 10
    invoke-interface {p1, v1, v2, v3}, Lf/t/a/d;->g0(IJ)V

    .line 11
    invoke-virtual {p2}, Lg/g/b/b/e/a/a;->a()Ljava/lang/Short;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_2

    .line 12
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p2}, Lg/g/b/b/e/a/a;->a()Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    int-to-long v2, p2

    invoke-interface {p1, v1, v2, v3}, Lf/t/a/d;->g0(IJ)V

    :goto_2
    return-void
.end method
