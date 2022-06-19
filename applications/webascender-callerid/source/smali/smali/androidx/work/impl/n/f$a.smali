.class Landroidx/work/impl/n/f$a;
.super Landroidx/room/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/n/f;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Landroidx/work/impl/n/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/work/impl/n/f;Landroidx/room/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lf/t/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroidx/work/impl/n/d;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/n/f$a;->k(Lf/t/a/f;Landroidx/work/impl/n/d;)V

    return-void
.end method

.method public k(Lf/t/a/f;Landroidx/work/impl/n/d;)V
    .locals 3

    .line 1
    iget-object v0, p2, Landroidx/work/impl/n/d;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, v1, v0}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p2, p2, Landroidx/work/impl/n/d;->b:Ljava/lang/Long;

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 5
    invoke-interface {p1, v0}, Lf/t/a/d;->M0(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lf/t/a/d;->g0(IJ)V

    :goto_1
    return-void
.end method
