.class public final Lcom/mopub/mobileads/AdData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdData$Creator;,
        Lcom/mopub/mobileads/AdData$Builder;,
        Lcom/mopub/mobileads/AdData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008U\u0008\u0087\u0008\u0018\u0000 \u009b\u00012\u00020\u0001:\u0004\u009c\u0001\u009b\u0001B\u00dd\u0001\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010)\u001a\u00020\u0008\u0012\u0006\u0010*\u001a\u00020\u000b\u0012\u0008\u0010+\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010,\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010-\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010.\u001a\u00020\u0002\u0012\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0012\u0012\u0006\u00100\u001a\u00020\u0015\u0012\u0006\u00101\u001a\u00020\u000b\u0012\u0008\u00102\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u00103\u001a\u00020\u000b\u0012\u0008\u00104\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u00105\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u00106\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00107\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00108\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00109\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010:\u001a\u00020\u0015\u0012\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#\u00a2\u0006\u0006\u0008\u0099\u0001\u0010\u009a\u0001J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0012H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0016\u001a\u00020\u0015H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\rJ\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u0010\u0010\u001a\u001a\u00020\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\rJ\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u0004J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010\u0004J\u0012\u0010 \u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008 \u0010\u0004J\u0012\u0010!\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008!\u0010\u0004J\u0010\u0010\"\u001a\u00020\u0015H\u00c6\u0003\u00a2\u0006\u0004\u0008\"\u0010\u0017J\u0018\u0010%\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#H\u00c6\u0003\u00a2\u0006\u0004\u0008%\u0010&J\u008e\u0002\u0010<\u001a\u00020\u00002\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010)\u001a\u00020\u00082\u0008\u0008\u0002\u0010*\u001a\u00020\u000b2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010.\u001a\u00020\u00022\u0014\u0008\u0002\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00122\u0008\u0008\u0002\u00100\u001a\u00020\u00152\u0008\u0008\u0002\u00101\u001a\u00020\u000b2\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u00103\u001a\u00020\u000b2\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u00106\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u00107\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010:\u001a\u00020\u00152\u0010\u0008\u0002\u0010;\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#H\u00c6\u0001\u00a2\u0006\u0004\u0008<\u0010=J\u0010\u0010>\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008>\u0010\u0004J\u0010\u0010?\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008?\u0010\rJ\u001a\u0010B\u001a\u00020\u00152\u0008\u0010A\u001a\u0004\u0018\u00010@H\u00d6\u0003\u00a2\u0006\u0004\u0008B\u0010CJ\u0010\u0010D\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008D\u0010\rJ \u0010I\u001a\u00020H2\u0006\u0010F\u001a\u00020E2\u0006\u0010G\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008I\u0010JR.\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010\u0014\"\u0004\u0008N\u0010OR$\u00109\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010\u0004\"\u0004\u0008S\u0010TR$\u0010\'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008U\u0010Q\u001a\u0004\u0008V\u0010\u0004\"\u0004\u0008W\u0010TR$\u0010,\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008X\u0010Q\u001a\u0004\u0008Y\u0010\u0004\"\u0004\u0008Z\u0010TR\"\u00103\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010\\\u001a\u0004\u0008]\u0010\r\"\u0004\u0008^\u0010_R$\u00104\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010\u001c\"\u0004\u0008c\u0010dR$\u0010(\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010f\u001a\u0004\u0008g\u0010\u0007\"\u0004\u0008h\u0010iR$\u00107\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008j\u0010Q\u001a\u0004\u0008k\u0010\u0004\"\u0004\u0008l\u0010TR$\u0010+\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008m\u0010Q\u001a\u0004\u0008n\u0010\u0004\"\u0004\u0008o\u0010TR\"\u0010.\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010Q\u001a\u0004\u0008q\u0010\u0004\"\u0004\u0008r\u0010TR$\u0010-\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008s\u0010Q\u001a\u0004\u0008t\u0010\u0004\"\u0004\u0008u\u0010TR\"\u00100\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008v\u0010w\u001a\u0004\u00080\u0010\u0017\"\u0004\u0008x\u0010yR$\u00105\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008z\u0010a\u001a\u0004\u0008{\u0010\u001c\"\u0004\u0008|\u0010dR$\u00106\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008}\u0010Q\u001a\u0004\u0008~\u0010\u0004\"\u0004\u0008\u007f\u0010TR\'\u00108\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0080\u0001\u0010Q\u001a\u0005\u0008\u0081\u0001\u0010\u0004\"\u0005\u0008\u0082\u0001\u0010TR/\u0010;\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001\u001a\u0005\u0008\u0085\u0001\u0010&\"\u0006\u0008\u0086\u0001\u0010\u0087\u0001R%\u0010:\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0088\u0001\u0010w\u001a\u0005\u0008\u0089\u0001\u0010\u0017\"\u0005\u0008\u008a\u0001\u0010yR%\u0010*\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008b\u0001\u0010\\\u001a\u0005\u0008\u008c\u0001\u0010\r\"\u0005\u0008\u008d\u0001\u0010_R\'\u00102\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008e\u0001\u0010Q\u001a\u0005\u0008\u008f\u0001\u0010\u0004\"\u0005\u0008\u0090\u0001\u0010TR%\u00101\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0091\u0001\u0010\\\u001a\u0005\u0008\u0092\u0001\u0010\r\"\u0005\u0008\u0093\u0001\u0010_R\'\u0010)\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u0094\u0001\u0010\u0095\u0001\u001a\u0005\u0008\u0096\u0001\u0010\n\"\u0006\u0008\u0097\u0001\u0010\u0098\u0001\u00a8\u0006\u009d\u0001"
    }
    d2 = {
        "Lcom/mopub/mobileads/AdData;",
        "Landroid/os/Parcelable;",
        "",
        "component1",
        "()Ljava/lang/String;",
        "Lcom/mopub/common/CreativeOrientation;",
        "component2",
        "()Lcom/mopub/common/CreativeOrientation;",
        "",
        "component3",
        "()J",
        "",
        "component4",
        "()I",
        "component5",
        "component6",
        "component7",
        "component8",
        "",
        "component9",
        "()Ljava/util/Map;",
        "",
        "component10",
        "()Z",
        "component11",
        "component12",
        "component13",
        "component14",
        "()Ljava/lang/Integer;",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "",
        "Lcom/mopub/common/ViewabilityVendor;",
        "component21",
        "()Ljava/util/Set;",
        "vastVideoConfigString",
        "orientation",
        "broadcastIdentifier",
        "timeoutDelayMillis",
        "impressionMinVisibleDips",
        "impressionMinVisibleMs",
        "dspCreativeId",
        "adPayload",
        "extras",
        "isRewarded",
        "rewardedDurationSeconds",
        "currencyName",
        "currencyAmount",
        "adWidth",
        "adHeight",
        "adUnit",
        "adType",
        "fullAdType",
        "customerId",
        "allowCustomClose",
        "viewabilityVendors",
        "copy",
        "(Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)Lcom/mopub/mobileads/AdData;",
        "toString",
        "hashCode",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "describeContents",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "Ls1/s;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "i",
        "Ljava/util/Map;",
        "getExtras",
        "setExtras",
        "(Ljava/util/Map;)V",
        "s",
        "Ljava/lang/String;",
        "getCustomerId",
        "setCustomerId",
        "(Ljava/lang/String;)V",
        "a",
        "getVastVideoConfigString",
        "setVastVideoConfigString",
        "f",
        "getImpressionMinVisibleMs",
        "setImpressionMinVisibleMs",
        "m",
        "I",
        "getCurrencyAmount",
        "setCurrencyAmount",
        "(I)V",
        "n",
        "Ljava/lang/Integer;",
        "getAdWidth",
        "setAdWidth",
        "(Ljava/lang/Integer;)V",
        "b",
        "Lcom/mopub/common/CreativeOrientation;",
        "getOrientation",
        "setOrientation",
        "(Lcom/mopub/common/CreativeOrientation;)V",
        "q",
        "getAdType",
        "setAdType",
        "e",
        "getImpressionMinVisibleDips",
        "setImpressionMinVisibleDips",
        "h",
        "getAdPayload",
        "setAdPayload",
        "g",
        "getDspCreativeId",
        "setDspCreativeId",
        "j",
        "Z",
        "setRewarded",
        "(Z)V",
        "o",
        "getAdHeight",
        "setAdHeight",
        "p",
        "getAdUnit",
        "setAdUnit",
        "r",
        "getFullAdType",
        "setFullAdType",
        "u",
        "Ljava/util/Set;",
        "getViewabilityVendors",
        "setViewabilityVendors",
        "(Ljava/util/Set;)V",
        "t",
        "getAllowCustomClose",
        "setAllowCustomClose",
        "d",
        "getTimeoutDelayMillis",
        "setTimeoutDelayMillis",
        "l",
        "getCurrencyName",
        "setCurrencyName",
        "k",
        "getRewardedDurationSeconds",
        "setRewardedDurationSeconds",
        "c",
        "J",
        "getBroadcastIdentifier",
        "setBroadcastIdentifier",
        "(J)V",
        "<init>",
        "(Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)V",
        "Companion",
        "Builder",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final COUNTDOWN_UPDATE_INTERVAL_MILLIS:J = 0xfaL

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final Companion:Lcom/mopub/mobileads/AdData$Companion;

.field public static final DEFAULT_DURATION_FOR_CLOSE_BUTTON_MILLIS:I = 0x7530

.field public static final DEFAULT_DURATION_FOR_CLOSE_BUTTON_SECONDS:I = 0x1e

.field public static final DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS:I = 0x1388

.field public static final DEFAULT_FULLSCREEN_TIMEOUT_DELAY:I = 0x7530

.field public static final DEFAULT_INLINE_TIMEOUT_DELAY:I = 0x2710

.field public static final DEFAULT_UNSPECIFIED_TIMEOUT_DELAY:I = 0x7530

.field public static final MILLIS_IN_SECOND:I = 0x3e8


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/mopub/common/CreativeOrientation;

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Integer;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mopub/mobileads/AdData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/AdData$Companion;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/mopub/mobileads/AdData;->Companion:Lcom/mopub/mobileads/AdData$Companion;

    new-instance v0, Lcom/mopub/mobileads/AdData$Creator;

    invoke-direct {v0}, Lcom/mopub/mobileads/AdData$Creator;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/mopub/mobileads/AdData$Builder;Ls1/z/c/f;)V
    .locals 23

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getVastVideoConfigString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getOrientation()Lcom/mopub/common/CreativeOrientation;

    move-result-object v2

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getBroadcastIdentifier()J

    move-result-wide v3

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getTimeoutDelayMillis()I

    move-result v5

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getImpressionMinVisibleDips()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getImpressionMinVisibleMs()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getDspCreativeId()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getAdPayload()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getExtras()Ljava/util/Map;

    move-result-object v10

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->isRewarded()Z

    move-result v11

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getRewardedDurationSeconds()I

    move-result v12

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getCurrencyName()Ljava/lang/String;

    move-result-object v13

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getCurrencyAmount()I

    move-result v14

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getAdWidth()Ljava/lang/Integer;

    move-result-object v15

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getAdHeight()Ljava/lang/Integer;

    move-result-object v16

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getAdUnit()Ljava/lang/String;

    move-result-object v17

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getAdType()Ljava/lang/String;

    move-result-object v18

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getFullAdType()Ljava/lang/String;

    move-result-object v19

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getCustomerId()Ljava/lang/String;

    move-result-object v20

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getAllowCustomClose()Z

    move-result v21

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mobileads/AdData$Builder;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, p0

    .line 23
    invoke-direct/range {v0 .. v22}, Lcom/mopub/mobileads/AdData;-><init>(Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mopub/common/CreativeOrientation;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "+",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p9

    move-object v2, p10

    const-string v3, "adPayload"

    invoke-static {p9, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "extras"

    invoke-static {p10, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/mopub/mobileads/AdData;->a:Ljava/lang/String;

    move-object v3, p2

    iput-object v3, v0, Lcom/mopub/mobileads/AdData;->b:Lcom/mopub/common/CreativeOrientation;

    move-wide v3, p3

    iput-wide v3, v0, Lcom/mopub/mobileads/AdData;->c:J

    move v3, p5

    iput v3, v0, Lcom/mopub/mobileads/AdData;->d:I

    move-object v3, p6

    iput-object v3, v0, Lcom/mopub/mobileads/AdData;->e:Ljava/lang/String;

    move-object v3, p7

    iput-object v3, v0, Lcom/mopub/mobileads/AdData;->f:Ljava/lang/String;

    move-object v3, p8

    iput-object v3, v0, Lcom/mopub/mobileads/AdData;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/mopub/mobileads/AdData;->h:Ljava/lang/String;

    iput-object v2, v0, Lcom/mopub/mobileads/AdData;->i:Ljava/util/Map;

    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/mopub/mobileads/AdData;->j:Z

    move/from16 v1, p12

    iput v1, v0, Lcom/mopub/mobileads/AdData;->k:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/mopub/mobileads/AdData;->l:Ljava/lang/String;

    move/from16 v1, p14

    iput v1, v0, Lcom/mopub/mobileads/AdData;->m:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/mopub/mobileads/AdData;->n:Ljava/lang/Integer;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/mopub/mobileads/AdData;->o:Ljava/lang/Integer;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/mopub/mobileads/AdData;->p:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/mopub/mobileads/AdData;->q:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/mopub/mobileads/AdData;->r:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/mopub/mobileads/AdData;->s:Ljava/lang/String;

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/mopub/mobileads/AdData;->t:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/mopub/mobileads/AdData;->u:Ljava/util/Set;

    return-void
.end method

.method public static synthetic copy$default(Lcom/mopub/mobileads/AdData;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;ILjava/lang/Object;)Lcom/mopub/mobileads/AdData;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p23

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/mopub/mobileads/AdData;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/mopub/mobileads/AdData;->b:Lcom/mopub/common/CreativeOrientation;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/mopub/mobileads/AdData;->c:J

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/mopub/mobileads/AdData;->d:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/mopub/mobileads/AdData;->e:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/mopub/mobileads/AdData;->f:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/mopub/mobileads/AdData;->g:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/mopub/mobileads/AdData;->h:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/mopub/mobileads/AdData;->i:Ljava/util/Map;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-boolean v12, v0, Lcom/mopub/mobileads/AdData;->j:Z

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget v13, v0, Lcom/mopub/mobileads/AdData;->k:I

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/mopub/mobileads/AdData;->l:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/mopub/mobileads/AdData;->m:I

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/mopub/mobileads/AdData;->n:Ljava/lang/Integer;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/mopub/mobileads/AdData;->o:Ljava/lang/Integer;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/mopub/mobileads/AdData;->p:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/mopub/mobileads/AdData;->q:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/mopub/mobileads/AdData;->r:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/mopub/mobileads/AdData;->s:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_13

    iget-boolean v15, v0, Lcom/mopub/mobileads/AdData;->t:Z

    goto :goto_13

    :cond_13
    move/from16 v15, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v1, v1, v16

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/mopub/mobileads/AdData;->u:Ljava/util/Set;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p22

    :goto_14
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-wide/from16 p3, v4

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p21, v15

    move-object/from16 p22, v1

    invoke-virtual/range {p0 .. p22}, Lcom/mopub/mobileads/AdData;->copy(Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)Lcom/mopub/mobileads/AdData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdData;->j:Z

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/mopub/mobileads/AdData;->k:I

    return v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/mopub/mobileads/AdData;->m:I

    return v0
.end method

.method public final component14()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component15()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/mopub/common/CreativeOrientation;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->b:Lcom/mopub/common/CreativeOrientation;

    return-object v0
.end method

.method public final component20()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdData;->t:Z

    return v0
.end method

.method public final component21()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->u:Ljava/util/Set;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/mopub/mobileads/AdData;->c:J

    return-wide v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/mopub/mobileads/AdData;->d:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)Lcom/mopub/mobileads/AdData;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mopub/common/CreativeOrientation;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "+",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)",
            "Lcom/mopub/mobileads/AdData;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v22, p22

    const-string v0, "adPayload"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v23, Lcom/mopub/mobileads/AdData;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v22}, Lcom/mopub/mobileads/AdData;-><init>(Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)V

    return-object v23
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/mopub/mobileads/AdData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mopub/mobileads/AdData;

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->b:Lcom/mopub/common/CreativeOrientation;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->b:Lcom/mopub/common/CreativeOrientation;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/mopub/mobileads/AdData;->c:J

    iget-wide v2, p1, Lcom/mopub/mobileads/AdData;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/AdData;->d:I

    iget v1, p1, Lcom/mopub/mobileads/AdData;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->i:Ljava/util/Map;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->i:Ljava/util/Map;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdData;->j:Z

    iget-boolean v1, p1, Lcom/mopub/mobileads/AdData;->j:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/AdData;->k:I

    iget v1, p1, Lcom/mopub/mobileads/AdData;->k:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/AdData;->m:I

    iget v1, p1, Lcom/mopub/mobileads/AdData;->m:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->n:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->n:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->o:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->o:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->p:Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->q:Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->s:Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/mobileads/AdData;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdData;->t:Z

    iget-boolean v1, p1, Lcom/mopub/mobileads/AdData;->t:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->u:Ljava/util/Set;

    iget-object p1, p1, Lcom/mopub/mobileads/AdData;->u:Ljava/util/Set;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAdHeight()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAdPayload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdUnit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdWidth()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAllowCustomClose()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdData;->t:Z

    return v0
.end method

.method public final getBroadcastIdentifier()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mopub/mobileads/AdData;->c:J

    return-wide v0
.end method

.method public final getCurrencyAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mopub/mobileads/AdData;->m:I

    return v0
.end method

.method public final getCurrencyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getDspCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final getFullAdType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionMinVisibleDips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionMinVisibleMs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrientation()Lcom/mopub/common/CreativeOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->b:Lcom/mopub/common/CreativeOrientation;

    return-object v0
.end method

.method public final getRewardedDurationSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mopub/mobileads/AdData;->k:I

    return v0
.end method

.method public final getTimeoutDelayMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mopub/mobileads/AdData;->d:I

    return v0
.end method

.method public final getVastVideoConfigString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewabilityVendors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->u:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/mopub/mobileads/AdData;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->b:Lcom/mopub/common/CreativeOrientation;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/mopub/mobileads/AdData;->c:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/mopub/mobileads/AdData;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->h:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->i:Ljava/util/Map;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/mopub/mobileads/AdData;->j:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    move v2, v3

    :cond_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/mopub/mobileads/AdData;->k:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->l:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_8
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/mopub/mobileads/AdData;->m:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->n:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_9
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->o:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_a
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->p:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_b
    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->q:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_c
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->r:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_d
    move v2, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->s:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_e
    move v2, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/mopub/mobileads/AdData;->t:Z

    if-eqz v2, :cond_f

    goto :goto_e

    :cond_f
    move v3, v2

    :goto_e
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdData;->u:Ljava/util/Set;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_10
    add-int/2addr v0, v1

    return v0
.end method

.method public final isRewarded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdData;->j:Z

    return v0
.end method

.method public final setAdHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->o:Ljava/lang/Integer;

    return-void
.end method

.method public final setAdPayload(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->h:Ljava/lang/String;

    return-void
.end method

.method public final setAdType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->q:Ljava/lang/String;

    return-void
.end method

.method public final setAdUnit(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->p:Ljava/lang/String;

    return-void
.end method

.method public final setAdWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->n:Ljava/lang/Integer;

    return-void
.end method

.method public final setAllowCustomClose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdData;->t:Z

    return-void
.end method

.method public final setBroadcastIdentifier(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mopub/mobileads/AdData;->c:J

    return-void
.end method

.method public final setCurrencyAmount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mopub/mobileads/AdData;->m:I

    return-void
.end method

.method public final setCurrencyName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->l:Ljava/lang/String;

    return-void
.end method

.method public final setCustomerId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->s:Ljava/lang/String;

    return-void
.end method

.method public final setDspCreativeId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->g:Ljava/lang/String;

    return-void
.end method

.method public final setExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->i:Ljava/util/Map;

    return-void
.end method

.method public final setFullAdType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->r:Ljava/lang/String;

    return-void
.end method

.method public final setImpressionMinVisibleDips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->e:Ljava/lang/String;

    return-void
.end method

.method public final setImpressionMinVisibleMs(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->f:Ljava/lang/String;

    return-void
.end method

.method public final setOrientation(Lcom/mopub/common/CreativeOrientation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->b:Lcom/mopub/common/CreativeOrientation;

    return-void
.end method

.method public final setRewarded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdData;->j:Z

    return-void
.end method

.method public final setRewardedDurationSeconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mopub/mobileads/AdData;->k:I

    return-void
.end method

.method public final setTimeoutDelayMillis(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mopub/mobileads/AdData;->d:I

    return-void
.end method

.method public final setVastVideoConfigString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->a:Ljava/lang/String;

    return-void
.end method

.method public final setViewabilityVendors(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdData;->u:Ljava/util/Set;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AdData(vastVideoConfigString="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->b:Lcom/mopub/common/CreativeOrientation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", broadcastIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mopub/mobileads/AdData;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/mobileads/AdData;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", impressionMinVisibleDips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", impressionMinVisibleMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dspCreativeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adPayload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRewarded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mopub/mobileads/AdData;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rewardedDurationSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/mobileads/AdData;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currencyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currencyAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/mobileads/AdData;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->n:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fullAdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", allowCustomClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mopub/mobileads/AdData;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", viewabilityVendors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdData;->u:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->b:Lcom/mopub/common/CreativeOrientation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-wide v2, p0, Lcom/mopub/mobileads/AdData;->c:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/mopub/mobileads/AdData;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->i:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-boolean p2, p0, Lcom/mopub/mobileads/AdData;->j:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/mopub/mobileads/AdData;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/mopub/mobileads/AdData;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->n:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->o:Ljava/lang/Integer;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/mopub/mobileads/AdData;->t:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/mopub/mobileads/AdData;->u:Ljava/util/Set;

    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/ViewabilityVendor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    return-void
.end method
