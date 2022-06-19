.class public abstract Lcom/amazon/device/ads/MraidProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATE_DEFAULT_PROPERTY:Lcom/amazon/device/ads/StateProperty;

.field public static final STATE_EXPANDED_PROPERTY:Lcom/amazon/device/ads/StateProperty;

.field public static final STATE_HIDDEN_PROPERTY:Lcom/amazon/device/ads/StateProperty;

.field public static final STATE_LOADING_PROPERTY:Lcom/amazon/device/ads/StateProperty;

.field public static final STATE_RESIZED_PROPERTY:Lcom/amazon/device/ads/StateProperty;

.field public static final SUPPORTS_PROPERTY:Lcom/amazon/device/ads/SupportsProperty;


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/amazon/device/ads/StateProperty;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->LOADING:Lcom/amazon/device/ads/MraidStateType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/StateProperty;-><init>(Lcom/amazon/device/ads/MraidStateType;)V

    sput-object v0, Lcom/amazon/device/ads/MraidProperty;->STATE_LOADING_PROPERTY:Lcom/amazon/device/ads/StateProperty;

    .line 2
    new-instance v0, Lcom/amazon/device/ads/StateProperty;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/StateProperty;-><init>(Lcom/amazon/device/ads/MraidStateType;)V

    sput-object v0, Lcom/amazon/device/ads/MraidProperty;->STATE_DEFAULT_PROPERTY:Lcom/amazon/device/ads/StateProperty;

    .line 3
    new-instance v0, Lcom/amazon/device/ads/StateProperty;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->HIDDEN:Lcom/amazon/device/ads/MraidStateType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/StateProperty;-><init>(Lcom/amazon/device/ads/MraidStateType;)V

    sput-object v0, Lcom/amazon/device/ads/MraidProperty;->STATE_HIDDEN_PROPERTY:Lcom/amazon/device/ads/StateProperty;

    .line 4
    new-instance v0, Lcom/amazon/device/ads/StateProperty;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->RESIZED:Lcom/amazon/device/ads/MraidStateType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/StateProperty;-><init>(Lcom/amazon/device/ads/MraidStateType;)V

    sput-object v0, Lcom/amazon/device/ads/MraidProperty;->STATE_RESIZED_PROPERTY:Lcom/amazon/device/ads/StateProperty;

    .line 5
    new-instance v0, Lcom/amazon/device/ads/StateProperty;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/StateProperty;-><init>(Lcom/amazon/device/ads/MraidStateType;)V

    sput-object v0, Lcom/amazon/device/ads/MraidProperty;->STATE_EXPANDED_PROPERTY:Lcom/amazon/device/ads/StateProperty;

    .line 6
    new-instance v0, Lcom/amazon/device/ads/SupportsProperty;

    invoke-direct {v0}, Lcom/amazon/device/ads/SupportsProperty;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/MraidProperty;->SUPPORTS_PROPERTY:Lcom/amazon/device/ads/SupportsProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amazon/device/ads/MraidProperty;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract formJSON(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/MraidProperty;->name:Ljava/lang/String;

    return-object v0
.end method
