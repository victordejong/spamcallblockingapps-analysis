.class public final Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;->forNumber(I)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;

    move-result-object p1

    return-object p1
.end method
