.class public final enum Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;",
        "",
        "",
        "value",
        "I",
        "getValue",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "FACS",
        "PACS",
        "InCallUI",
        "PopupCallerId",
        "Unknown",
        "context-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

.field public static final enum FACS:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

.field public static final enum InCallUI:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

.field public static final enum PACS:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

.field public static final enum PopupCallerId:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

.field public static final enum Unknown:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    new-instance v1, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    const-string v2, "FACS"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;->FACS:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    const-string v2, "PACS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;->PACS:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    const-string v2, "InCallUI"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;->InCallUI:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    const-string v2, "PopupCallerId"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;->PopupCallerId:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    const-string v2, "Unknown"

    const/4 v3, 0x4

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;->Unknown:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;->$VALUES:[Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;
    .locals 1

    const-class v0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;
    .locals 1

    sget-object v0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;->$VALUES:[Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    invoke-virtual {v0}, [Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;->value:I

    return v0
.end method
