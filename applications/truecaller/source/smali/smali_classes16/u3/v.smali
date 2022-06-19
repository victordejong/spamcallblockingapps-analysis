.class public final Lu3/v;
.super Lu3/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/v$a;
    }
.end annotation


# static fields
.field public static final d:Lu3/c0;


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lu3/c0;->f:Lu3/c0$a;

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lu3/c0$a;->a(Ljava/lang/String;)Lu3/c0;

    move-result-object v0

    sput-object v0, Lu3/v;->d:Lu3/c0;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "encodedNames"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedValues"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lu3/j0;-><init>()V

    .line 2
    invoke-static {p1}, Lu3/p0/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lu3/v;->b:Ljava/util/List;

    .line 3
    invoke-static {p2}, Lu3/p0/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lu3/v;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lu3/v;->d(Lv3/g;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lu3/c0;
    .locals 1

    .line 1
    sget-object v0, Lu3/v;->d:Lu3/c0;

    return-object v0
.end method

.method public c(Lv3/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lu3/v;->d(Lv3/g;Z)J

    return-void
.end method

.method public final d(Lv3/g;Z)J
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lv3/f;

    invoke-direct {p1}, Lv3/f;-><init>()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lv3/g;->getBuffer()Lv3/f;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lu3/v;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const/16 v2, 0x26

    .line 3
    invoke-virtual {p1, v2}, Lv3/f;->B0(I)Lv3/f;

    .line 4
    :cond_1
    iget-object v2, p0, Lu3/v;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lv3/f;->K0(Ljava/lang/String;)Lv3/f;

    const/16 v2, 0x3d

    .line 5
    invoke-virtual {p1, v2}, Lv3/f;->B0(I)Lv3/f;

    .line 6
    iget-object v2, p0, Lu3/v;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lv3/f;->K0(Ljava/lang/String;)Lv3/f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    iget-wide v0, p1, Lv3/f;->b:J

    .line 8
    invoke-virtual {p1, v0, v1}, Lv3/f;->skip(J)V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0

    .line 9
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1
.end method
