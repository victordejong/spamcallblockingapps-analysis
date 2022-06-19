.class public final Lcom/nimbusds/jose/f;
.super Lcom/nimbusds/jose/a;
.source "SourceFile"


# static fields
.field public static final h:Lcom/nimbusds/jose/f;

.field public static final i:Lcom/nimbusds/jose/f;

.field public static final j:Lcom/nimbusds/jose/f;

.field public static final k:Lcom/nimbusds/jose/f;

.field public static final l:Lcom/nimbusds/jose/f;

.field public static final m:Lcom/nimbusds/jose/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/nimbusds/jose/f;

    sget-object v1, Lcom/nimbusds/jose/l;->REQUIRED:Lcom/nimbusds/jose/l;

    const-string v2, "HS256"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    .line 2
    new-instance v0, Lcom/nimbusds/jose/f;

    sget-object v1, Lcom/nimbusds/jose/l;->OPTIONAL:Lcom/nimbusds/jose/l;

    const-string v2, "HS384"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    .line 3
    new-instance v0, Lcom/nimbusds/jose/f;

    const-string v2, "HS512"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    .line 4
    new-instance v0, Lcom/nimbusds/jose/f;

    sget-object v2, Lcom/nimbusds/jose/l;->RECOMMENDED:Lcom/nimbusds/jose/l;

    const-string v3, "RS256"

    invoke-direct {v0, v3, v2}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    sput-object v0, Lcom/nimbusds/jose/f;->h:Lcom/nimbusds/jose/f;

    .line 5
    new-instance v0, Lcom/nimbusds/jose/f;

    const-string v3, "RS384"

    invoke-direct {v0, v3, v1}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    sput-object v0, Lcom/nimbusds/jose/f;->i:Lcom/nimbusds/jose/f;

    .line 6
    new-instance v0, Lcom/nimbusds/jose/f;

    const-string v3, "RS512"

    invoke-direct {v0, v3, v1}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    sput-object v0, Lcom/nimbusds/jose/f;->j:Lcom/nimbusds/jose/f;

    .line 7
    new-instance v0, Lcom/nimbusds/jose/f;

    const-string v3, "ES256"

    invoke-direct {v0, v3, v2}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    .line 8
    new-instance v0, Lcom/nimbusds/jose/f;

    const-string v2, "ES256K"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    .line 9
    new-instance v0, Lcom/nimbusds/jose/f;

    const-string v2, "ES384"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    .line 10
    new-instance v0, Lcom/nimbusds/jose/f;

    const-string v2, "ES512"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    .line 11
    new-instance v0, Lcom/nimbusds/jose/f;

    const-string v2, "PS256"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    sput-object v0, Lcom/nimbusds/jose/f;->k:Lcom/nimbusds/jose/f;

    .line 12
    new-instance v0, Lcom/nimbusds/jose/f;

    const-string v2, "PS384"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    sput-object v0, Lcom/nimbusds/jose/f;->l:Lcom/nimbusds/jose/f;

    .line 13
    new-instance v0, Lcom/nimbusds/jose/f;

    const-string v2, "PS512"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    sput-object v0, Lcom/nimbusds/jose/f;->m:Lcom/nimbusds/jose/f;

    .line 14
    new-instance v0, Lcom/nimbusds/jose/f;

    const-string v2, "EdDSA"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/f;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/a;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/l;)V

    return-void
.end method
