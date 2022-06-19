.class public final enum Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;",
        "",
        "",
        "moduleName",
        "Ljava/lang/String;",
        "getModuleName",
        "()Ljava/lang/String;",
        "graphProviderClassName",
        "getGraphProviderClassName",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "CALLHERO_ASSISTANT",
        "BANUBA",
        "dynamic-features-support_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

.field public static final enum BANUBA:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

.field public static final enum CALLHERO_ASSISTANT:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;


# instance fields
.field private final graphProviderClassName:Ljava/lang/String;

.field private final moduleName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    new-instance v1, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    const-string v2, "CALLHERO_ASSISTANT"

    const/4 v3, 0x0

    const-string v4, "callhero_assistant"

    const-string v5, "com.truecaller.callhero_assistant.CallAssistantGraphProvider"

    .line 1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->CALLHERO_ASSISTANT:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    const-string v7, "BANUBA"

    const/4 v8, 0x1

    const-string v9, "banuba"

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v6, v1

    .line 2
    invoke-direct/range {v6 .. v12}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILs1/z/c/f;)V

    sput-object v1, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->BANUBA:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->$VALUES:[Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->moduleName:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->graphProviderClassName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILs1/z/c/f;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;
    .locals 1

    const-class v0, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;
    .locals 1

    sget-object v0, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->$VALUES:[Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    invoke-virtual {v0}, [Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    return-object v0
.end method


# virtual methods
.method public final getGraphProviderClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->graphProviderClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->moduleName:Ljava/lang/String;

    return-object v0
.end method
