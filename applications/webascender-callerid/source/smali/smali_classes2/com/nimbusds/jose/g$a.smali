.class public Lcom/nimbusds/jose/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/nimbusds/jose/f;

.field private b:Lcom/nimbusds/jose/e;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/net/URI;

.field private f:Lcom/nimbusds/jose/o/a;

.field private g:Ljava/net/URI;

.field private h:Lcom/nimbusds/jose/util/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private i:Lcom/nimbusds/jose/util/c;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/nimbusds/jose/util/c;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/nimbusds/jose/a;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/a;->g:Lcom/nimbusds/jose/a;

    invoke-virtual {v1}, Lcom/nimbusds/jose/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/nimbusds/jose/g$a;->a:Lcom/nimbusds/jose/f;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWS algorithm \"alg\" cannot be \"none\""

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/nimbusds/jose/g;
    .locals 15

    .line 1
    new-instance v14, Lcom/nimbusds/jose/g;

    .line 2
    iget-object v1, p0, Lcom/nimbusds/jose/g$a;->a:Lcom/nimbusds/jose/f;

    iget-object v2, p0, Lcom/nimbusds/jose/g$a;->b:Lcom/nimbusds/jose/e;

    iget-object v3, p0, Lcom/nimbusds/jose/g$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/nimbusds/jose/g$a;->d:Ljava/util/Set;

    .line 3
    iget-object v5, p0, Lcom/nimbusds/jose/g$a;->e:Ljava/net/URI;

    iget-object v6, p0, Lcom/nimbusds/jose/g$a;->f:Lcom/nimbusds/jose/o/a;

    iget-object v7, p0, Lcom/nimbusds/jose/g$a;->g:Ljava/net/URI;

    iget-object v8, p0, Lcom/nimbusds/jose/g$a;->h:Lcom/nimbusds/jose/util/c;

    iget-object v9, p0, Lcom/nimbusds/jose/g$a;->i:Lcom/nimbusds/jose/util/c;

    iget-object v10, p0, Lcom/nimbusds/jose/g$a;->j:Ljava/util/List;

    iget-object v11, p0, Lcom/nimbusds/jose/g$a;->k:Ljava/lang/String;

    .line 4
    iget-object v12, p0, Lcom/nimbusds/jose/g$a;->l:Ljava/util/Map;

    iget-object v13, p0, Lcom/nimbusds/jose/g$a;->m:Lcom/nimbusds/jose/util/c;

    move-object v0, v14

    .line 5
    invoke-direct/range {v0 .. v13}, Lcom/nimbusds/jose/g;-><init>(Lcom/nimbusds/jose/f;Lcom/nimbusds/jose/e;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/o/a;Ljava/net/URI;Lcom/nimbusds/jose/util/c;Lcom/nimbusds/jose/util/c;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/nimbusds/jose/util/c;)V

    return-object v14
.end method

.method public b(Ljava/util/List;)Lcom/nimbusds/jose/g$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/a;",
            ">;)",
            "Lcom/nimbusds/jose/g$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/g$a;->j:Ljava/util/List;

    return-object p0
.end method
