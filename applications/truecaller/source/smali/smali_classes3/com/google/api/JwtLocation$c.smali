.class public final enum Lcom/google/api/JwtLocation$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/JwtLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/JwtLocation$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/api/JwtLocation$c;

.field public static final enum b:Lcom/google/api/JwtLocation$c;

.field public static final enum c:Lcom/google/api/JwtLocation$c;

.field public static final synthetic d:[Lcom/google/api/JwtLocation$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/api/JwtLocation$c;

    const-string v1, "HEADER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/JwtLocation$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/JwtLocation$c;->a:Lcom/google/api/JwtLocation$c;

    .line 2
    new-instance v1, Lcom/google/api/JwtLocation$c;

    const-string v4, "QUERY"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/api/JwtLocation$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/api/JwtLocation$c;->b:Lcom/google/api/JwtLocation$c;

    .line 3
    new-instance v4, Lcom/google/api/JwtLocation$c;

    const-string v6, "IN_NOT_SET"

    invoke-direct {v4, v6, v5, v2}, Lcom/google/api/JwtLocation$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/api/JwtLocation$c;->c:Lcom/google/api/JwtLocation$c;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/google/api/JwtLocation$c;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 4
    sput-object v6, Lcom/google/api/JwtLocation$c;->d:[Lcom/google/api/JwtLocation$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/JwtLocation$c;
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/JwtLocation$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation$c;

    return-object p0
.end method

.method public static values()[Lcom/google/api/JwtLocation$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/JwtLocation$c;->d:[Lcom/google/api/JwtLocation$c;

    invoke-virtual {v0}, [Lcom/google/api/JwtLocation$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/JwtLocation$c;

    return-object v0
.end method
