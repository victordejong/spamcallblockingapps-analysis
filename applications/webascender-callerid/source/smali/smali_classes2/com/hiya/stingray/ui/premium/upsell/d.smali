.class public final synthetic Lcom/hiya/stingray/ui/premium/upsell/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/hiya/stingray/ui/premium/upsell/c$b;->values()[Lcom/hiya/stingray/ui/premium/upsell/c$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/ui/premium/upsell/d;->a:[I

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->DEFAULT:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->AFTER_UPDATE:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->DETAILS:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->CALL_SETTINGS:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->POSTCALL_IDENTIFY:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->POSTCALL_AUTOBLOCK:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->BASIC_TAB:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->PAYWALL:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    return-void
.end method
