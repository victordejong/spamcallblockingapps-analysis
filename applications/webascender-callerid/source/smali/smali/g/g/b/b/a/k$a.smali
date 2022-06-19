.class Lg/g/b/b/a/k$a;
.super Landroidx/room/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/b/a/k;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lg/g/b/b/e/a/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lg/g/b/b/a/k;Landroidx/room/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `translated_strings` (`_id`,`key`,`translated_text`) VALUES (nullif(?, 0),?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lf/t/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lg/g/b/b/e/a/e;

    invoke-virtual {p0, p1, p2}, Lg/g/b/b/a/k$a;->k(Lf/t/a/f;Lg/g/b/b/e/a/e;)V

    return-void
.end method

.method public k(Lf/t/a/f;Lg/g/b/b/e/a/e;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lg/g/b/b/e/a/e;->a()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lf/t/a/d;->g0(IJ)V

    .line 2
    invoke-virtual {p2}, Lg/g/b/b/e/a/e;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lg/g/b/b/e/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lg/g/b/b/e/a/e;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lg/g/b/b/e/a/e;->c()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lf/t/a/d;->x(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
