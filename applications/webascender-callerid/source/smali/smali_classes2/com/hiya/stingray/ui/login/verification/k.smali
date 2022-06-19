.class public final synthetic Lcom/hiya/stingray/ui/login/verification/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/hiya/stingray/ui/login/verification/a$a;->values()[Lcom/hiya/stingray/ui/login/verification/a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/ui/login/verification/k;->a:[I

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->INVALID_PHONE_NUMBER:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_CODE_SENT:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->INVALID_VERIFICATION_CODE:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_FAILED:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x4

    aput v4, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_COMPLETED:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x5

    aput v4, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_COMPLETED_SELECT:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x6

    aput v4, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->VERIFICATION_COMPLETED_SELECT_WARNING:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x7

    aput v4, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/a$a;->UNEXPECTED_ERROR:Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v4, 0x8

    aput v4, v0, v1

    invoke-static {}, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;->values()[Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/ui/login/verification/k;->b:[I

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;->ONBAORDING:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;->SETTINGS:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
