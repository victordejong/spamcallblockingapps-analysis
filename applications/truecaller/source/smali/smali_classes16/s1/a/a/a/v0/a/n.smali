.class public final Ls1/a/a/a/v0/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ls1/a/a/a/v0/f/a;",
            "Ls1/a/a/a/v0/f/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ls1/a/a/a/v0/f/a;",
            "Ls1/a/a/a/v0/f/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ls1/a/a/a/v0/a/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ls1/a/a/a/v0/a/n;

    invoke-direct {v0}, Ls1/a/a/a/v0/a/n;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/a/n;->e:Ls1/a/a/a/v0/a/n;

    .line 2
    invoke-static {}, Ls1/a/a/a/v0/a/m;->values()[Ls1/a/a/a/v0/a/m;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 4
    aget-object v5, v0, v4

    .line 5
    iget-object v5, v5, Ls1/a/a/a/v0/a/m;->a:Ls1/a/a/a/v0/f/e;

    .line 6
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/a/n;->a:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/a/n;->b:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/a/n;->c:Ljava/util/HashMap;

    .line 9
    invoke-static {}, Ls1/a/a/a/v0/a/m;->values()[Ls1/a/a/a/v0/a/m;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    .line 10
    aget-object v5, v0, v4

    .line 11
    iget-object v5, v5, Ls1/a/a/a/v0/a/m;->b:Ls1/a/a/a/v0/f/a;

    .line 12
    invoke-virtual {v5}, Ls1/a/a/a/v0/f/a;->j()Ls1/a/a/a/v0/f/e;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 13
    :cond_1
    sput-object v1, Ls1/a/a/a/v0/a/n;->d:Ljava/util/Set;

    .line 14
    invoke-static {}, Ls1/a/a/a/v0/a/m;->values()[Ls1/a/a/a/v0/a/m;

    move-result-object v0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v1, v0, v3

    .line 15
    sget-object v4, Ls1/a/a/a/v0/a/n;->b:Ljava/util/HashMap;

    .line 16
    iget-object v5, v1, Ls1/a/a/a/v0/a/m;->b:Ls1/a/a/a/v0/f/a;

    .line 17
    iget-object v6, v1, Ls1/a/a/a/v0/a/m;->c:Ls1/a/a/a/v0/f/a;

    .line 18
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v4, Ls1/a/a/a/v0/a/n;->c:Ljava/util/HashMap;

    .line 20
    iget-object v5, v1, Ls1/a/a/a/v0/a/m;->c:Ls1/a/a/a/v0/f/a;

    .line 21
    iget-object v1, v1, Ls1/a/a/a/v0/a/m;->b:Ls1/a/a/a/v0/f/a;

    .line 22
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ls1/a/a/a/v0/m/e0;)Z
    .locals 3

    const-string v0, "type"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/m/f1;->p(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p0

    invoke-interface {p0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "type.constructor.declara\u2026escriptor ?: return false"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    .line 3
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Ls1/a/a/a/v0/b/k;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    .line 5
    instance-of v2, v0, Ls1/a/a/a/v0/b/c0;

    if-eqz v2, :cond_1

    check-cast v0, Ls1/a/a/a/v0/b/c0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/c0;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    sget-object v2, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Ls1/a/a/a/v0/a/n;->a:Ljava/util/Set;

    invoke-interface {p0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
