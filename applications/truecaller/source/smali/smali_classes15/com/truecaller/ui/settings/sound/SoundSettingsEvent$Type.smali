.class public final enum Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/settings/sound/SoundSettingsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "CALL",
        "SMS",
        "IM",
        "FLASH",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

.field public static final enum CALL:Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

.field public static final enum FLASH:Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

.field public static final enum IM:Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

.field public static final enum SMS:Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    new-instance v1, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    const-string v2, "CALL"

    const/4 v3, 0x0

    const-string v4, "call"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;->CALL:Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    const-string v2, "SMS"

    const/4 v3, 0x1

    const-string v4, "sms"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;->SMS:Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    const-string v2, "IM"

    const/4 v3, 0x2

    const-string v4, "im"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;->IM:Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    const-string v2, "FLASH"

    const/4 v3, 0x3

    const-string v4, "flash"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;->FLASH:Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;->$VALUES:[Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

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

    iput-object p3, p0, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;
    .locals 1

    const-class v0, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;
    .locals 1

    sget-object v0, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;->$VALUES:[Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    invoke-virtual {v0}, [Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;->value:Ljava/lang/String;

    return-object v0
.end method
