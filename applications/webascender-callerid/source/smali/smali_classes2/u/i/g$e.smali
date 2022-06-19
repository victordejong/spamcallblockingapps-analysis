.class final Lu/i/g$e;
.super Lu/i/g$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/i/g$c<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field static final c:Lu/i/e$g;

.field static final d:Lu/i/e$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu/i/e$g;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lu/i/e$g;-><init>(I)V

    sput-object v0, Lu/i/g$e;->c:Lu/i/e$g;

    .line 2
    new-instance v0, Lu/i/e$g;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lu/i/e$g;-><init>(I)V

    sput-object v0, Lu/i/g$e;->d:Lu/i/e$g;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu/i/g$c;-><init>(I)V

    return-void
.end method


# virtual methods
.method bridge synthetic g(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lu/i/g$e;->k(Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method

.method bridge synthetic i(Lu/i/t;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lu/i/g$e;->l(Lu/i/t;Ljava/util/Map$Entry;)V

    return-void
.end method

.method j(Lu/i/h;Lu/g$a;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lu/i/h;->o()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lu/i/h;->c()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v0, 0x0

    const-string v3, ""

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lu/i/h;->c()I

    move-result v4

    if-ge v4, v2, :cond_4

    .line 4
    invoke-virtual {p1}, Lu/i/h;->o()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2

    .line 5
    invoke-static {p1, v4}, Lu/i/g;->a(Lu/i/h;I)V

    goto :goto_0

    .line 6
    :cond_2
    sget-object v4, Lu/i/g$e;->d:Lu/i/e$g;

    invoke-virtual {v4, p1}, Lu/i/e$f;->d(Lu/i/h;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 7
    :cond_3
    sget-object v0, Lu/i/g$e;->c:Lu/i/e$g;

    invoke-virtual {v0, p1}, Lu/i/e$f;->d(Lu/i/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    return v1

    .line 8
    :cond_5
    invoke-virtual {p2, v0, v3}, Lu/g$a;->r(Ljava/lang/String;Ljava/lang/String;)Lu/g$a;

    const/4 p1, 0x1

    return p1
.end method

.method k(Ljava/util/Map$Entry;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lu/i/g$e;->c:Lu/i/e$g;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/i/e$f;->f(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lu/i/g$e;->d:Lu/i/e$g;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lu/i/e$f;->f(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method l(Lu/i/t;Ljava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/i/t;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lu/i/g$e;->c:Lu/i/e$g;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lu/i/e$f;->h(Lu/i/t;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lu/i/g$e;->d:Lu/i/e$g;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lu/i/e$f;->h(Lu/i/t;Ljava/lang/Object;)V

    return-void
.end method
