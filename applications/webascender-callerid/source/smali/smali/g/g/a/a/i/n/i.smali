.class public final Lg/g/a/a/i/n/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gson/u;"
    }
.end annotation


# instance fields
.field private final baseType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final labelToSubtype:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final maintainType:Z

.field private final subtypeToLabel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typeFieldName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lg/g/a/a/i/n/i;->labelToSubtype:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lg/g/a/a/i/n/i;->subtypeToLabel:Ljava/util/Map;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lg/g/a/a/i/n/i;->baseType:Ljava/lang/Class;

    .line 5
    iput-object p2, p0, Lg/g/a/a/i/n/i;->typeFieldName:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lg/g/a/a/i/n/i;->maintainType:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method static synthetic access$000(Lg/g/a/a/i/n/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg/g/a/a/i/n/i;->maintainType:Z

    return p0
.end method

.method static synthetic access$100(Lg/g/a/a/i/n/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/n/i;->typeFieldName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lg/g/a/a/i/n/i;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/n/i;->baseType:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$300(Lg/g/a/a/i/n/i;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/i/n/i;->subtypeToLabel:Ljava/util/Map;

    return-object p0
.end method

.method public static of(Ljava/lang/Class;)Lg/g/a/a/i/n/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lg/g/a/a/i/n/i<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lg/g/a/a/i/n/i;

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lg/g/a/a/i/n/i;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;)Lg/g/a/a/i/n/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lg/g/a/a/i/n/i<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lg/g/a/a/i/n/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lg/g/a/a/i/n/i;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Z)Lg/g/a/a/i/n/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Z)",
            "Lg/g/a/a/i/n/i<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/a/a/i/n/i;

    invoke-direct {v0, p0, p1, p2}, Lg/g/a/a/i/n/i;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public create(Lcom/google/gson/f;Lcom/google/gson/x/a;)Lcom/google/gson/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lcom/google/gson/x/a<",
            "TR;>;)",
            "Lcom/google/gson/t<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/gson/x/a;->getRawType()Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p0, Lg/g/a/a/i/n/i;->baseType:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lg/g/a/a/i/n/i;->labelToSubtype:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/gson/x/a;->get(Ljava/lang/Class;)Lcom/google/gson/x/a;

    move-result-object v3

    invoke-virtual {p1, p0, v3}, Lcom/google/gson/f;->p(Lcom/google/gson/u;Lcom/google/gson/x/a;)Lcom/google/gson/t;

    move-result-object v3

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lg/g/a/a/i/n/i$a;

    invoke-direct {p1, p0, p2, v0}, Lg/g/a/a/i/n/i$a;-><init>(Lg/g/a/a/i/n/i;Ljava/util/Map;Ljava/util/Map;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/gson/t;->nullSafe()Lcom/google/gson/t;

    move-result-object p1

    return-object p1
.end method

.method public registerSubtype(Ljava/lang/Class;)Lg/g/a/a/i/n/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lg/g/a/a/i/n/i<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lg/g/a/a/i/n/i;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lg/g/a/a/i/n/i;

    move-result-object p1

    return-object p1
.end method

.method public registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lg/g/a/a/i/n/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lg/g/a/a/i/n/i<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/n/i;->subtypeToLabel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/g/a/a/i/n/i;->labelToSubtype:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/g/a/a/i/n/i;->labelToSubtype:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lg/g/a/a/i/n/i;->subtypeToLabel:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "types and labels must be unique"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
