.class public final synthetic Lcom/hiya/stingray/notification/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/hiya/stingray/notification/p;->values()[Lcom/hiya/stingray/notification/p;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/notification/x;->a:[I

    sget-object v1, Lcom/hiya/stingray/notification/p;->BLOCKED_CALL:Lcom/hiya/stingray/notification/p;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/notification/p;->FIRST_TIME_IDENTIFIED_CALL:Lcom/hiya/stingray/notification/p;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/hiya/stingray/notification/p;->POST_CALL:Lcom/hiya/stingray/notification/p;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/hiya/stingray/notification/p;->POST_CALL_MISSED:Lcom/hiya/stingray/notification/p;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x4

    aput v4, v0, v1

    invoke-static {}, Lcom/hiya/stingray/notification/v;->values()[Lcom/hiya/stingray/notification/v;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/notification/x;->b:[I

    sget-object v1, Lcom/hiya/stingray/notification/v;->SELECT_EXPIRE:Lcom/hiya/stingray/notification/v;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/notification/v;->SUBSCRIPTION_EXPIRE:Lcom/hiya/stingray/notification/v;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
