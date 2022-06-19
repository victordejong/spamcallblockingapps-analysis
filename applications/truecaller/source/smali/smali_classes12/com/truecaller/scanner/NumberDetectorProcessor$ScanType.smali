.class public final enum Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/scanner/NumberDetectorProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScanType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

.field public static final enum SCAN_PAY:Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

.field public static final enum SCAN_PHONE:Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

.field public static final enum SCAN_VPA:Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    const-string v1, "SCAN_PHONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;->SCAN_PHONE:Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    new-instance v1, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    const-string v3, "SCAN_VPA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;->SCAN_VPA:Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    new-instance v3, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    const-string v5, "SCAN_PAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;->SCAN_PAY:Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;->$VALUES:[Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;->$VALUES:[Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    invoke-virtual {v0}, [Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    return-object v0
.end method
