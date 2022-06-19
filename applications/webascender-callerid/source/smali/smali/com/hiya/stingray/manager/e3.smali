.class public final synthetic Lcom/hiya/stingray/manager/e3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I

.field public static final synthetic d:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 17

    invoke-static {}, Lcom/hiya/stingray/manager/d3$b;->values()[Lcom/hiya/stingray/manager/d3$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/manager/e3;->a:[I

    sget-object v1, Lcom/hiya/stingray/manager/d3$b;->GET_STARTED:Lcom/hiya/stingray/manager/d3$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v0, v2

    sget-object v2, Lcom/hiya/stingray/manager/d3$b;->RECOMMENDED:Lcom/hiya/stingray/manager/d3$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v4, 0x2

    aput v4, v0, v2

    invoke-static {}, Lcom/hiya/stingray/manager/d3$a;->values()[Lcom/hiya/stingray/manager/d3$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/manager/e3;->b:[I

    sget-object v2, Lcom/hiya/stingray/manager/d3$a;->CALLS_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v0, v5

    sget-object v5, Lcom/hiya/stingray/manager/d3$a;->CALL_LOG_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v0, v6

    sget-object v6, Lcom/hiya/stingray/manager/d3$a;->PHONE_VERIFICATION:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x3

    aput v8, v0, v7

    sget-object v7, Lcom/hiya/stingray/manager/d3$a;->DISPLAY_OVER_APPS_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v10, 0x4

    aput v10, v0, v9

    sget-object v9, Lcom/hiya/stingray/manager/d3$a;->BATTERY_OPTIMIZATION:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/4 v12, 0x5

    aput v12, v0, v11

    sget-object v11, Lcom/hiya/stingray/manager/d3$a;->DEFAULT_CALLER_ID_APP:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const/4 v14, 0x6

    aput v14, v0, v13

    sget-object v13, Lcom/hiya/stingray/manager/d3$a;->DEFAULT_PHONE_APP:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const/16 v16, 0x7

    aput v16, v0, v15

    invoke-static {}, Lcom/hiya/stingray/manager/d3$a;->values()[Lcom/hiya/stingray/manager/d3$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/manager/e3;->c:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v3, v0, v2

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v4, v0, v2

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v8, v0, v2

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v10, v0, v2

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v12, v0, v2

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v14, v0, v2

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v16, v0, v2

    invoke-static {}, Lcom/hiya/stingray/manager/d3$b;->values()[Lcom/hiya/stingray/manager/d3$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/manager/e3;->d:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
