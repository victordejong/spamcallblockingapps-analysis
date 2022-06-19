.class public final enum Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;

.field public static final enum Package:Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;

.field public static final enum Public:Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;

    const-string v1, "Public"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;->Public:Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;

    .line 2
    new-instance v1, Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;

    const-string v3, "Package"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;->Package:Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;->$VALUES:[Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;->$VALUES:[Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;

    invoke-virtual {v0}, [Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/androidactors/ActorsPackage$AccessLevel;

    return-object v0
.end method
