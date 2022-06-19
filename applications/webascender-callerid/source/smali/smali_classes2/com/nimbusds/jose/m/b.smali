.class abstract Lcom/nimbusds/jose/m/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nimbusds/jose/i;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/nimbusds/jose/n/a;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/nimbusds/jose/n/a;

    invoke-direct {v0}, Lcom/nimbusds/jose/n/a;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/m/b;->b:Lcom/nimbusds/jose/n/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/m/b;->a:Ljava/util/Set;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The supported JWS algorithm set must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/m/b;->a:Ljava/util/Set;

    return-object v0
.end method

.method public c()Lcom/nimbusds/jose/n/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/m/b;->b:Lcom/nimbusds/jose/n/a;

    return-object v0
.end method
