.class public final enum Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/scanner/ScannerManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScannerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

.field public static final enum SCANNER_QR:Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

.field public static final enum SCANNER_TEXT:Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

    const-string v1, "SCANNER_TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;->SCANNER_TEXT:Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

    new-instance v1, Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

    const-string v3, "SCANNER_QR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;->SCANNER_QR:Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;->$VALUES:[Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;->$VALUES:[Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

    invoke-virtual {v0}, [Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

    return-object v0
.end method
