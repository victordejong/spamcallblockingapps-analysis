.class public final enum Lcom/nimbusds/jose/k$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nimbusds/jose/k$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BASE64URL:Lcom/nimbusds/jose/k$a;

.field public static final enum BYTE_ARRAY:Lcom/nimbusds/jose/k$a;

.field private static final synthetic ENUM$VALUES:[Lcom/nimbusds/jose/k$a;

.field public static final enum JSON:Lcom/nimbusds/jose/k$a;

.field public static final enum JWS_OBJECT:Lcom/nimbusds/jose/k$a;

.field public static final enum SIGNED_JWT:Lcom/nimbusds/jose/k$a;

.field public static final enum STRING:Lcom/nimbusds/jose/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/nimbusds/jose/k$a;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nimbusds/jose/k$a;-><init>(Ljava/lang/String;I)V

    .line 2
    sput-object v0, Lcom/nimbusds/jose/k$a;->JSON:Lcom/nimbusds/jose/k$a;

    .line 3
    new-instance v1, Lcom/nimbusds/jose/k$a;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/nimbusds/jose/k$a;-><init>(Ljava/lang/String;I)V

    .line 4
    sput-object v1, Lcom/nimbusds/jose/k$a;->STRING:Lcom/nimbusds/jose/k$a;

    .line 5
    new-instance v3, Lcom/nimbusds/jose/k$a;

    const-string v5, "BYTE_ARRAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/nimbusds/jose/k$a;-><init>(Ljava/lang/String;I)V

    .line 6
    sput-object v3, Lcom/nimbusds/jose/k$a;->BYTE_ARRAY:Lcom/nimbusds/jose/k$a;

    .line 7
    new-instance v5, Lcom/nimbusds/jose/k$a;

    const-string v7, "BASE64URL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/nimbusds/jose/k$a;-><init>(Ljava/lang/String;I)V

    .line 8
    sput-object v5, Lcom/nimbusds/jose/k$a;->BASE64URL:Lcom/nimbusds/jose/k$a;

    .line 9
    new-instance v7, Lcom/nimbusds/jose/k$a;

    const-string v9, "JWS_OBJECT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/nimbusds/jose/k$a;-><init>(Ljava/lang/String;I)V

    .line 10
    sput-object v7, Lcom/nimbusds/jose/k$a;->JWS_OBJECT:Lcom/nimbusds/jose/k$a;

    .line 11
    new-instance v9, Lcom/nimbusds/jose/k$a;

    const-string v11, "SIGNED_JWT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/nimbusds/jose/k$a;-><init>(Ljava/lang/String;I)V

    .line 12
    sput-object v9, Lcom/nimbusds/jose/k$a;->SIGNED_JWT:Lcom/nimbusds/jose/k$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/nimbusds/jose/k$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 13
    sput-object v11, Lcom/nimbusds/jose/k$a;->ENUM$VALUES:[Lcom/nimbusds/jose/k$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nimbusds/jose/k$a;
    .locals 1

    .line 1
    const-class v0, Lcom/nimbusds/jose/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nimbusds/jose/k$a;

    return-object p0
.end method

.method public static values()[Lcom/nimbusds/jose/k$a;
    .locals 4

    .line 1
    sget-object v0, Lcom/nimbusds/jose/k$a;->ENUM$VALUES:[Lcom/nimbusds/jose/k$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/nimbusds/jose/k$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
