.class public abstract Lcom/nimbusds/jose/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final f:Lcom/nimbusds/jose/a;

.field private final g:Lcom/nimbusds/jose/e;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/nimbusds/jose/util/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/nimbusds/jose/c;->l:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lcom/nimbusds/jose/a;Lcom/nimbusds/jose/e;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lcom/nimbusds/jose/util/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/a;",
            "Lcom/nimbusds/jose/e;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nimbusds/jose/util/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    iput-object p1, p0, Lcom/nimbusds/jose/c;->f:Lcom/nimbusds/jose/a;

    .line 3
    iput-object p3, p0, Lcom/nimbusds/jose/c;->h:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/c;->i:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/nimbusds/jose/c;->i:Ljava/util/Set;

    :goto_0
    if-eqz p5, :cond_1

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/c;->j:Ljava/util/Map;

    goto :goto_1

    .line 7
    :cond_1
    sget-object p1, Lcom/nimbusds/jose/c;->l:Ljava/util/Map;

    iput-object p1, p0, Lcom/nimbusds/jose/c;->j:Ljava/util/Map;

    .line 8
    :goto_1
    iput-object p6, p0, Lcom/nimbusds/jose/c;->k:Lcom/nimbusds/jose/util/c;

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The algorithm \"alg\" header parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/nimbusds/jose/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/c;->f:Lcom/nimbusds/jose/a;

    return-object v0
.end method

.method public b()Lcom/nimbusds/jose/util/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/c;->k:Lcom/nimbusds/jose/util/c;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/nimbusds/jose/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/c;->c(Ljava/lang/String;)Lcom/nimbusds/jose/util/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public c()Ll/a/a/c;
    .locals 3

    .line 1
    new-instance v0, Ll/a/a/c;

    iget-object v1, p0, Lcom/nimbusds/jose/c;->j:Ljava/util/Map;

    invoke-direct {v0, v1}, Ll/a/a/c;-><init>(Ljava/util/Map;)V

    .line 2
    iget-object v1, p0, Lcom/nimbusds/jose/c;->f:Lcom/nimbusds/jose/a;

    invoke-virtual {v1}, Lcom/nimbusds/jose/a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/c;->g:Lcom/nimbusds/jose/e;

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/nimbusds/jose/c;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "cty"

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/c;->i:Ljava/util/Set;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nimbusds/jose/c;->i:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "crit"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/nimbusds/jose/e;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/c;->c()Ll/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Ll/a/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
