.class public final enum Lcom/truecaller/settings/CallingSettings$BlockMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/settings/CallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlockMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/settings/CallingSettings$BlockMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/settings/CallingSettings$BlockMethod;

.field public static final enum Mute:Lcom/truecaller/settings/CallingSettings$BlockMethod;

.field public static final enum Reject:Lcom/truecaller/settings/CallingSettings$BlockMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/truecaller/settings/CallingSettings$BlockMethod;

    const-string v1, "Reject"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/settings/CallingSettings$BlockMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/settings/CallingSettings$BlockMethod;->Reject:Lcom/truecaller/settings/CallingSettings$BlockMethod;

    .line 2
    new-instance v1, Lcom/truecaller/settings/CallingSettings$BlockMethod;

    const-string v3, "Mute"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/settings/CallingSettings$BlockMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/settings/CallingSettings$BlockMethod;->Mute:Lcom/truecaller/settings/CallingSettings$BlockMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/truecaller/settings/CallingSettings$BlockMethod;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/truecaller/settings/CallingSettings$BlockMethod;->$VALUES:[Lcom/truecaller/settings/CallingSettings$BlockMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/settings/CallingSettings$BlockMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/settings/CallingSettings$BlockMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/settings/CallingSettings$BlockMethod;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/settings/CallingSettings$BlockMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/settings/CallingSettings$BlockMethod;->$VALUES:[Lcom/truecaller/settings/CallingSettings$BlockMethod;

    invoke-virtual {v0}, [Lcom/truecaller/settings/CallingSettings$BlockMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/settings/CallingSettings$BlockMethod;

    return-object v0
.end method
