.class public final enum Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/filters/blockedevents/BlockDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

.field public static final enum ADVANCED:Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

.field public static final enum COUNTRY:Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

.field public static final enum NAME:Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

.field public static final enum NUMBER:Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    const-string v1, "NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;->NAME:Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    new-instance v1, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    const-string v3, "ADVANCED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;->ADVANCED:Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    new-instance v3, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    const-string v5, "NUMBER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;->NUMBER:Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    new-instance v5, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    const-string v7, "COUNTRY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;->COUNTRY:Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;->$VALUES:[Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;->$VALUES:[Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    invoke-virtual {v0}, [Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    return-object v0
.end method
