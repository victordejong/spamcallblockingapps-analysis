.class public Lcom/nimbusds/jose/n/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/security/Provider;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/nimbusds/jose/n/a;-><init>(Ljava/security/Provider;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Ljava/security/SecureRandom;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/nimbusds/jose/n/a;->a:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public a()Ljava/security/Provider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/n/a;->a:Ljava/security/Provider;

    return-object v0
.end method
