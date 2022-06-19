.class public Lcom/hiya/stingray/manager/s2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/s2$e;,
        Lcom/hiya/stingray/manager/s2$c;,
        Lcom/hiya/stingray/manager/s2$d;,
        Lcom/hiya/stingray/manager/s2$a;,
        Lcom/hiya/stingray/manager/s2$b;
    }
.end annotation


# static fields
.field private static g:Z = true

.field private static h:Z = true


# instance fields
.field private final a:Li/c/b0/c/a;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/hiya/stingray/manager/x3;

.field private final d:Lcom/hiya/stingray/q/d/f;

.field private final e:Lcom/hiya/stingray/manager/e1;

.field private final f:Lcom/hiya/stingray/util/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/util/a0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfigManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSharedPreferences"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/s2;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/s2;->c:Lcom/hiya/stingray/manager/x3;

    iput-object p3, p0, Lcom/hiya/stingray/manager/s2;->d:Lcom/hiya/stingray/q/d/f;

    iput-object p4, p0, Lcom/hiya/stingray/manager/s2;->e:Lcom/hiya/stingray/manager/e1;

    iput-object p5, p0, Lcom/hiya/stingray/manager/s2;->f:Lcom/hiya/stingray/util/a0;

    .line 2
    new-instance p1, Li/c/b0/c/a;

    invoke-direct {p1}, Li/c/b0/c/a;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/s2;->a:Li/c/b0/c/a;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/s2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/s2;->u()V

    return-void
.end method

.method private final d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/hiya/stingray/manager/s2$a;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/s2;->d:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->b()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/hiya/stingray/manager/s2$b;

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/p;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/manager/s2$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/hiya/stingray/manager/s2$b;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lkotlin/s/k;->m0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lkotlin/s/h0;->b()Ljava/util/Set;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private final g(I)Ljava/lang/String;
    .locals 13

    .line 1
    invoke-static {}, Lcom/hiya/stingray/manager/s2$c;->values()[Lcom/hiya/stingray/manager/s2$c;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 4
    invoke-virtual {v5}, Lcom/hiya/stingray/manager/s2$c;->getDone()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/s/k;->Z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/s/k;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Lcom/hiya/stingray/manager/s2$c;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 8
    invoke-static {p0, v2, v3, v4, v5}, Lcom/hiya/stingray/manager/s2;->n(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/s2$c;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v2, v3, v4, v5}, Lcom/hiya/stingray/manager/s2;->n(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_2

    .line 9
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_4
    invoke-static {v1, p1}, Lkotlin/s/k;->f0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-string v5, ","

    invoke-static/range {v4 .. v12}, Lkotlin/s/k;->R(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/c0/m;->s(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "none"

    :cond_5
    return-object v0
.end method

.method private final i()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/s2;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/s2;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static synthetic n(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/s2;->m(Lcom/hiya/stingray/manager/s2$c;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getVariant"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic r(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Z
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/s2;->q(Lcom/hiya/stingray/manager/s2$c;Z)Z

    move-result p0

    return p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: isParticipating"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final s(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/hiya/stingray/manager/s2$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/s2;->d:Lcom/hiya/stingray/q/d/f;

    new-instance v1, Lcom/hiya/stingray/manager/s2$b;

    invoke-static {p1}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/hiya/stingray/manager/s2$b;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lcom/hiya/stingray/util/p;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->x(Ljava/lang/String;)V

    return-void
.end method

.method private final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/s2;->e:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/s2;->k()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/e1;->f(Ljava/util/Map;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/s2;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "experiments"

    invoke-static {v1, v0}, Lcom/hiya/stingray/manager/e1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x21

    invoke-direct {p0, v1}, Lcom/hiya/stingray/manager/s2;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/hiya/stingray/manager/s2;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/hiya/stingray/manager/s2$d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hiya/stingray/manager/s2$c;->values()[Lcom/hiya/stingray/manager/s2$c;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 4
    invoke-virtual {v5}, Lcom/hiya/stingray/manager/s2$c;->getDone()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/s/k;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/hiya/stingray/manager/s2$c;

    .line 7
    invoke-static {p0, v6, v3, v5, v4}, Lcom/hiya/stingray/manager/s2;->r(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Lcom/hiya/stingray/manager/s2$c;

    .line 11
    new-instance v6, Lcom/hiya/stingray/manager/s2$d;

    invoke-static {p0, v2, v3, v5, v4}, Lcom/hiya/stingray/manager/s2;->n(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lcom/hiya/stingray/manager/s2$d;-><init>(Lcom/hiya/stingray/manager/s2$c;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/s/k;->m0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/hiya/stingray/manager/s2$c;)Ljava/lang/String;
    .locals 5

    const-string v0, "experiment"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/s2;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/hiya/stingray/manager/s2$a;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/s2$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/hiya/stingray/manager/s2$a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/s2$a;->b()Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/s2;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/s2;->c:Lcom/hiya/stingray/manager/x3;

    const-string v1, "experiments"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/hiya/stingray/manager/s2$d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hiya/stingray/manager/s2$c;->values()[Lcom/hiya/stingray/manager/s2$c;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 4
    invoke-virtual {v5}, Lcom/hiya/stingray/manager/s2$c;->getDone()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/s/k;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/hiya/stingray/manager/s2$c;

    .line 7
    invoke-virtual {p0, v4, v3}, Lcom/hiya/stingray/manager/s2;->q(Lcom/hiya/stingray/manager/s2$c;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Lcom/hiya/stingray/manager/s2$c;

    .line 11
    new-instance v4, Lcom/hiya/stingray/manager/s2$d;

    invoke-virtual {p0, v2, v3}, Lcom/hiya/stingray/manager/s2;->m(Lcom/hiya/stingray/manager/s2$c;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/hiya/stingray/manager/s2$d;-><init>(Lcom/hiya/stingray/manager/s2$c;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/s/k;->m0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/s2;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "experiments"

    invoke-static {v1, v0}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    invoke-static {v0}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/hiya/stingray/manager/s2;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/hiya/stingray/manager/s2;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(Lcom/hiya/stingray/manager/s2$c;Z)Ljava/lang/String;
    .locals 3

    const-string v0, "experiment"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/s2;->c:Lcom/hiya/stingray/manager/x3;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/s2$c;->getRemoteConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/s2;->e(Lcom/hiya/stingray/manager/s2$c;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-boolean v1, Lcom/hiya/stingray/manager/s2;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/hiya/stingray/manager/s2;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/c0/m;->s(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    return-object v2

    .line 4
    :cond_2
    sget-boolean p1, Lcom/hiya/stingray/manager/s2;->g:Z

    if-eqz p1, :cond_3

    invoke-static {v0}, Lkotlin/c0/m;->s(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    :cond_3
    move-object v0, v2

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final o()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/s2;->u()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/s2;->f:Lcom/hiya/stingray/util/a0;

    const-class v1, Lcom/hiya/stingray/manager/x3$b;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/hiya/stingray/s/c;->c()Li/c/b0/b/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/stingray/manager/s2$f;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/s2$f;-><init>(Lcom/hiya/stingray/manager/s2;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/manager/s2;->a:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public p(Lcom/hiya/stingray/manager/s2$c;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/hiya/stingray/manager/s2;->r(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public q(Lcom/hiya/stingray/manager/s2$c;Z)Z
    .locals 6

    const-string v0, "experiment"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/s2;->c:Lcom/hiya/stingray/manager/x3;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/s2$c;->getRemoteConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/s2;->e(Lcom/hiya/stingray/manager/s2$c;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-boolean v1, Lcom/hiya/stingray/manager/s2;->g:Z

    const-string v2, "0"

    const-string v3, "1"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v0, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v5

    if-nez v0, :cond_2

    :cond_1
    sget-boolean v0, Lcom/hiya/stingray/manager/s2;->h:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 5
    iget-object p2, p0, Lcom/hiya/stingray/manager/s2;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/c0/m;->s(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v5

    if-eqz p2, :cond_3

    invoke-static {p1, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    return v4
.end method

.method public final t(Lcom/hiya/stingray/manager/s2$c;Ljava/lang/String;)V
    .locals 5

    const-string v0, "experiment"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p2}, Lkotlin/c0/m;->s(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hiya/stingray/manager/s2$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/hiya/stingray/manager/s2$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/s/h0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/s/h0;->b()Ljava/util/Set;

    move-result-object p2

    .line 2
    :goto_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/s2;->d()Ljava/util/Set;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/hiya/stingray/manager/s2$a;

    .line 5
    invoke-virtual {v3}, Lcom/hiya/stingray/manager/s2$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1, p2}, Lkotlin/s/k;->X(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/k;->m0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/s2;->s(Ljava/util/Set;)V

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/manager/s2;->u()V

    return-void
.end method
