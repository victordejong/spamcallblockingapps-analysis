.class public final Lorg/apache/http/conn/util/PublicSuffixMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final exceptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/conn/util/DomainType;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/conn/util/DomainType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/http/conn/util/PublicSuffixList;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Domain suffix lists"

    .line 12
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/util/PublicSuffixList;

    .line 16
    invoke-virtual {v0}, Lorg/apache/http/conn/util/PublicSuffixList;->getType()Lorg/apache/http/conn/util/DomainType;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lorg/apache/http/conn/util/PublicSuffixList;->getRules()Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 19
    iget-object v4, p0, Lorg/apache/http/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/conn/util/PublicSuffixList;->getExceptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    iget-object v3, p0, Lorg/apache/http/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/http/conn/util/DomainType;->UNKNOWN:Lorg/apache/http/conn/util/DomainType;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/http/conn/util/PublicSuffixMatcher;-><init>(Lorg/apache/http/conn/util/DomainType;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/util/DomainType;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/conn/util/DomainType;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Domain type"

    .line 3
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Domain suffix rules"

    .line 4
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lorg/apache/http/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lorg/apache/http/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    if-eqz p3, :cond_1

    .line 9
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lorg/apache/http/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static hasEntry(Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/conn/util/DomainType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/conn/util/DomainType;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/http/conn/util/DomainType;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/conn/util/DomainType;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method private hasException(Ljava/lang/String;Lorg/apache/http/conn/util/DomainType;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lorg/apache/http/conn/util/PublicSuffixMatcher;->hasEntry(Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/conn/util/DomainType;)Z

    move-result p1

    return p1
.end method

.method private hasRule(Ljava/lang/String;Lorg/apache/http/conn/util/DomainType;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lorg/apache/http/conn/util/PublicSuffixMatcher;->hasEntry(Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/conn/util/DomainType;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getDomainRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/conn/util/PublicSuffixMatcher;->getDomainRoot(Ljava/lang/String;Lorg/apache/http/conn/util/DomainType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDomainRoot(Ljava/lang/String;Lorg/apache/http/conn/util/DomainType;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "."

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_7

    .line 4
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/http/conn/util/PublicSuffixMatcher;->hasException(Ljava/lang/String;Lorg/apache/http/conn/util/DomainType;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    .line 5
    :cond_2
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/http/conn/util/PublicSuffixMatcher;->hasRule(Ljava/lang/String;Lorg/apache/http/conn/util/DomainType;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x2e

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 7
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_5

    const-string v5, "*."

    .line 8
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lorg/apache/http/conn/util/PublicSuffixMatcher;->hasRule(Ljava/lang/String;Lorg/apache/http/conn/util/DomainType;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    if-eq v2, v3, :cond_6

    move-object v1, p1

    :cond_6
    move-object p1, v4

    goto :goto_0

    :cond_7
    :goto_2
    return-object v1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/conn/util/PublicSuffixMatcher;->matches(Ljava/lang/String;Lorg/apache/http/conn/util/DomainType;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/String;Lorg/apache/http/conn/util/DomainType;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "."

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/conn/util/PublicSuffixMatcher;->getDomainRoot(Ljava/lang/String;Lorg/apache/http/conn/util/DomainType;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method
