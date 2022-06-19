.class public final enum Lg/g/d/j/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/d/j/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/d/j/a;

.field public static final enum ON_CALL_PHONE_STATE_IDLE:Lg/g/d/j/a;

.field public static final enum ON_CALL_PHONE_STATE_OFFHOOK:Lg/g/d/j/a;

.field public static final enum ON_CALL_PHONE_STATE_RINGING:Lg/g/d/j/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lg/g/d/j/a;

    new-instance v1, Lg/g/d/j/a;

    const-string v2, "ON_CALL_PHONE_STATE_IDLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/d/j/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/d/j/a;->ON_CALL_PHONE_STATE_IDLE:Lg/g/d/j/a;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/d/j/a;

    const-string v2, "ON_CALL_PHONE_STATE_OFFHOOK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/g/d/j/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/d/j/a;->ON_CALL_PHONE_STATE_OFFHOOK:Lg/g/d/j/a;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/d/j/a;

    const-string v2, "ON_CALL_PHONE_STATE_RINGING"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg/g/d/j/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/d/j/a;->ON_CALL_PHONE_STATE_RINGING:Lg/g/d/j/a;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/d/j/a;->$VALUES:[Lg/g/d/j/a;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/d/j/a;
    .locals 1

    const-class v0, Lg/g/d/j/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/d/j/a;

    return-object p0
.end method

.method public static values()[Lg/g/d/j/a;
    .locals 1

    sget-object v0, Lg/g/d/j/a;->$VALUES:[Lg/g/d/j/a;

    invoke-virtual {v0}, [Lg/g/d/j/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/d/j/a;

    return-object v0
.end method
