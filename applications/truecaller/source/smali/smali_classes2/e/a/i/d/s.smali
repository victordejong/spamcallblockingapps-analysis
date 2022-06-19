.class public abstract Le/a/i/d/s;
.super Le/a/o2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Le/a/i/d/n;",
        ">",
        "Le/a/o2/d<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final b:Le/a/i/f0/c;


# direct methods
.method public constructor <init>(Le/a/i/f0/c;)V
    .locals 1

    const-string v0, "loader"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/d;-><init>()V

    iput-object p1, p0, Le/a/i/d/s;->b:Le/a/i/f0/c;

    return-void
.end method


# virtual methods
.method public abstract A(Le/a/i/d/n;Le/a/i/f0/m/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Le/a/i/f0/m/d;",
            ")V"
        }
    .end annotation
.end method

.method public abstract B(Le/a/i/f0/m/d;)Z
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/i/d/n;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/i/d/s;->b:Le/a/i/f0/c;

    invoke-interface {v0, p2}, Le/a/i/f0/c;->e(I)Le/a/i/f0/m/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/i/d/s;->A(Le/a/i/d/n;Le/a/i/f0/m/d;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    instance-of v1, p1, Le/a/i/d/n$c;

    if-eqz v1, :cond_0

    check-cast p1, Le/a/i/d/n$c;

    iget-object v0, p0, Le/a/i/d/s;->b:Le/a/i/f0/c;

    invoke-interface {v0, p2}, Le/a/i/f0/c;->e(I)Le/a/i/f0/m/d;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.truecaller.ads.provider.holders.AdHouseHolder"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/i/f0/m/f;

    invoke-interface {p1, p2}, Le/a/i/d/n$c;->C1(Le/a/i/f0/m/f;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, p1, Le/a/i/d/n$d;

    if-eqz v1, :cond_1

    check-cast p1, Le/a/i/d/n$d;

    iget-object v0, p0, Le/a/i/d/s;->b:Le/a/i/f0/c;

    invoke-interface {v0, p2}, Le/a/i/f0/c;->e(I)Le/a/i/f0/m/d;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.truecaller.ads.provider.holders.AdNativeHolder"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/i/f0/m/h;

    invoke-interface {p1, p2}, Le/a/i/d/n$d;->b4(Le/a/i/f0/m/h;)V

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, p1, Le/a/i/d/n$a;

    if-eqz v1, :cond_2

    check-cast p1, Le/a/i/d/n$a;

    iget-object v0, p0, Le/a/i/d/s;->b:Le/a/i/f0/c;

    invoke-interface {v0, p2}, Le/a/i/f0/c;->e(I)Le/a/i/f0/m/d;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.truecaller.ads.provider.holders.AdBannerHolder"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/i/f0/m/a;

    invoke-interface {p1, p2}, Le/a/i/d/n$a;->J1(Le/a/i/f0/m/a;)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v1, p1, Le/a/i/d/n$b;

    if-eqz v1, :cond_3

    check-cast p1, Le/a/i/d/n$b;

    iget-object v0, p0, Le/a/i/d/s;->b:Le/a/i/f0/c;

    invoke-interface {v0, p2}, Le/a/i/f0/c;->e(I)Le/a/i/f0/m/d;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.truecaller.ads.provider.holders.AdCustomHolder"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/i/f0/m/c;

    invoke-interface {p1, p2}, Le/a/i/d/n$b;->c4(Le/a/i/f0/m/c;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final m(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d/s;->b:Le/a/i/f0/c;

    invoke-interface {v0, p1}, Le/a/i/f0/c;->e(I)Le/a/i/f0/m/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/i/d/s;->B(Le/a/i/f0/m/d;)Z

    move-result p1

    return p1
.end method
