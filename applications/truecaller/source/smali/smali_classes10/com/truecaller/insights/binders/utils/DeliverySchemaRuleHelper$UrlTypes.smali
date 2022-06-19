.class public final enum Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UrlTypes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Companion",
        "a",
        "ManageDelivery",
        "TrackDelivery",
        "BookDelivery",
        "PickDelivery",
        "Acknowledge",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

.field public static final enum Acknowledge:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

.field public static final enum BookDelivery:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

.field public static final Companion:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes$a;

.field public static final enum ManageDelivery:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

.field public static final enum PickDelivery:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

.field public static final enum TrackDelivery:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    new-array v1, v0, [Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    const-string v3, "ManageDelivery"

    const/4 v4, 0x0

    const-string v5, "managedlvry"

    .line 1
    invoke-direct {v2, v3, v4, v5}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->ManageDelivery:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    aput-object v2, v1, v4

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    const-string v3, "TrackDelivery"

    const/4 v5, 0x1

    const-string v6, "trackdlvry"

    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->TrackDelivery:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    const-string v3, "BookDelivery"

    const/4 v5, 0x2

    const-string v6, "bookdlvry"

    .line 2
    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->BookDelivery:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    const-string v3, "PickDelivery"

    const/4 v5, 0x3

    const-string v6, "pickdlvry"

    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->PickDelivery:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    const-string v3, "Acknowledge"

    const/4 v5, 0x4

    const-string v6, "acknwlg"

    .line 3
    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->Acknowledge:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    aput-object v2, v1, v5

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->$VALUES:[Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    new-instance v1, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes$a;-><init>(Ls1/z/c/f;)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->Companion:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes$a;

    .line 4
    invoke-static {}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->values()[Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    move-result-object v1

    .line 5
    invoke-static {v0}, Le/q/f/a/d/a;->Y1(I)I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    move v0, v2

    .line 6
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 7
    array-length v0, v1

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v3, v1, v4

    .line 8
    iget-object v5, v3, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->value:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    sput-object v2, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->map:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMap$cp()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->map:Ljava/util/Map;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;
    .locals 1

    const-class v0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->$VALUES:[Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    invoke-virtual {v0}, [Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->value:Ljava/lang/String;

    return-object v0
.end method
