.class public final enum Lcom/hiya/stingray/ui/login/verification/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/login/verification/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/ui/login/verification/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/ui/login/verification/a$a;

.field public static final enum INVALID_PHONE_NUMBER:Lcom/hiya/stingray/ui/login/verification/a$a;

.field public static final enum INVALID_VERIFICATION_CODE:Lcom/hiya/stingray/ui/login/verification/a$a;

.field public static final enum UNEXPECTED_ERROR:Lcom/hiya/stingray/ui/login/verification/a$a;

.field public static final enum VERIFICATION_CODE_SENT:Lcom/hiya/stingray/ui/login/verification/a$a;

.field public static final enum VERIFICATION_COMPLETED:Lcom/hiya/stingray/ui/login/verification/a$a;

.field public static final enum VERIFICATION_COMPLETED_SELECT:Lcom/hiya/stingray/ui/login/verification/a$a;

.field public static final enum VERIFICATION_COMPLETED_SELECT_WARNING:Lcom/hiya/stingray/ui/login/verification/a$a;

.field public static final enum VERIFICATION_FAILED:Lcom/hiya/stingray/ui/login/verification/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/hiya/stingray/ui/login/verification/a$a;

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/a$a;

    const-string v2, "INVALID_PHONE_NUMBER"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/login/verification/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->INVALID_PHONE_NUMBER:Lcom/hiya/stingray/ui/login/verification/a$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/a$a;

    const-string v2, "VERIFICATION_CODE_SENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/login/verification/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_CODE_SENT:Lcom/hiya/stingray/ui/login/verification/a$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/a$a;

    const-string v2, "INVALID_VERIFICATION_CODE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/login/verification/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->INVALID_VERIFICATION_CODE:Lcom/hiya/stingray/ui/login/verification/a$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/a$a;

    const-string v2, "VERIFICATION_FAILED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/login/verification/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_FAILED:Lcom/hiya/stingray/ui/login/verification/a$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/a$a;

    const-string v2, "VERIFICATION_COMPLETED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/login/verification/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_COMPLETED:Lcom/hiya/stingray/ui/login/verification/a$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/a$a;

    const-string v2, "VERIFICATION_COMPLETED_SELECT"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/login/verification/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_COMPLETED_SELECT:Lcom/hiya/stingray/ui/login/verification/a$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/a$a;

    const-string v2, "VERIFICATION_COMPLETED_SELECT_WARNING"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/login/verification/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_COMPLETED_SELECT_WARNING:Lcom/hiya/stingray/ui/login/verification/a$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/ui/login/verification/a$a;

    const-string v2, "UNEXPECTED_ERROR"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/login/verification/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->UNEXPECTED_ERROR:Lcom/hiya/stingray/ui/login/verification/a$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/ui/login/verification/a$a;->$VALUES:[Lcom/hiya/stingray/ui/login/verification/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/ui/login/verification/a$a;
    .locals 1

    const-class v0, Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/ui/login/verification/a$a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/ui/login/verification/a$a;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/ui/login/verification/a$a;->$VALUES:[Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {v0}, [Lcom/hiya/stingray/ui/login/verification/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/ui/login/verification/a$a;

    return-object v0
.end method
