.class public final Lp3/a/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/t$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/google/common/base/Joiner;

.field public static final d:Lp3/a/t;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp3/a/t$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/base/Joiner;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    .line 2
    sput-object v0, Lp3/a/t;->c:Lcom/google/common/base/Joiner;

    .line 3
    new-instance v0, Lp3/a/t;

    invoke-direct {v0}, Lp3/a/t;-><init>()V

    .line 4
    new-instance v1, Lp3/a/k$a;

    invoke-direct {v1}, Lp3/a/k$a;-><init>()V

    .line 5
    new-instance v2, Lp3/a/t;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lp3/a/t;-><init>(Lp3/a/s;ZLp3/a/t;)V

    .line 6
    sget-object v0, Lp3/a/k$b;->a:Lp3/a/k;

    .line 7
    new-instance v1, Lp3/a/t;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lp3/a/t;-><init>(Lp3/a/s;ZLp3/a/t;)V

    .line 8
    sput-object v1, Lp3/a/t;->d:Lp3/a/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lp3/a/t;->a:Ljava/util/Map;

    new-array v0, v1, [B

    .line 23
    iput-object v0, p0, Lp3/a/t;->b:[B

    return-void
.end method

.method public constructor <init>(Lp3/a/s;ZLp3/a/t;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lp3/a/s;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Comma is currently not allowed in message encoding"

    invoke-static {v1, v2}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 4
    iget-object v1, p3, Lp3/a/t;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 5
    iget-object v2, p3, Lp3/a/t;->a:Ljava/util/Map;

    invoke-interface {p1}, Lp3/a/s;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 6
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 7
    iget-object p3, p3, Lp3/a/t;->a:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/t$a;

    .line 8
    iget-object v3, v1, Lp3/a/t$a;->a:Lp3/a/s;

    invoke-interface {v3}, Lp3/a/s;->a()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    new-instance v4, Lp3/a/t$a;

    iget-object v5, v1, Lp3/a/t$a;->a:Lp3/a/s;

    iget-boolean v1, v1, Lp3/a/t$a;->b:Z

    invoke-direct {v4, v5, v1}, Lp3/a/t$a;-><init>(Lp3/a/s;Z)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_2
    new-instance p3, Lp3/a/t$a;

    invoke-direct {p3, p1, p2}, Lp3/a/t$a;-><init>(Lp3/a/s;Z)V

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lp3/a/t;->a:Ljava/util/Map;

    .line 13
    sget-object p2, Lp3/a/t;->c:Lcom/google/common/base/Joiner;

    .line 14
    new-instance p3, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/t$a;

    iget-boolean v1, v1, Lp3/a/t$a;->b:Z

    if-eqz v1, :cond_3

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_4
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "US-ASCII"

    .line 20
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lp3/a/t;->b:[B

    return-void
.end method
