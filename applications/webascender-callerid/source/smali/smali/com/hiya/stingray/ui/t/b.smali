.class public final synthetic Lcom/hiya/stingray/ui/t/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/hiya/stingray/manager/u2$b;->values()[Lcom/hiya/stingray/manager/u2$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/ui/t/b;->a:[I

    sget-object v1, Lcom/hiya/stingray/manager/u2$b;->APP_LAUNCH:Lcom/hiya/stingray/manager/u2$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/manager/u2$b;->BLOCK:Lcom/hiya/stingray/manager/u2$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/manager/u2$b;->HELP:Lcom/hiya/stingray/manager/u2$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/manager/u2$b;->SAVE_TO_CONTACTS:Lcom/hiya/stingray/manager/u2$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/manager/u2$b;->SPAM_REPORT:Lcom/hiya/stingray/manager/u2$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    return-void
.end method
