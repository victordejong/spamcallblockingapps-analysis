.class public final synthetic Lcom/hiya/stingray/ui/local/f/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 12

    invoke-static {}, Lcom/hiya/stingray/ui/local/f/f;->values()[Lcom/hiya/stingray/ui/local/f/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/ui/local/f/i;->a:[I

    sget-object v1, Lcom/hiya/stingray/ui/local/f/f;->CONTACT_INFO:Lcom/hiya/stingray/ui/local/f/f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v0, v2

    sget-object v2, Lcom/hiya/stingray/ui/local/f/f;->DETAIL_INFO:Lcom/hiya/stingray/ui/local/f/f;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v0, v4

    sget-object v4, Lcom/hiya/stingray/ui/local/f/f;->COUPONS:Lcom/hiya/stingray/ui/local/f/f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x3

    aput v7, v0, v6

    sget-object v6, Lcom/hiya/stingray/ui/local/f/f;->RATING:Lcom/hiya/stingray/ui/local/f/f;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/4 v9, 0x4

    aput v9, v0, v8

    sget-object v8, Lcom/hiya/stingray/ui/local/f/f;->DIR_SERVICE:Lcom/hiya/stingray/ui/local/f/f;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v11, 0x5

    aput v11, v0, v10

    invoke-static {}, Lcom/hiya/stingray/ui/local/f/f;->values()[Lcom/hiya/stingray/ui/local/f/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/ui/local/f/i;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1

    return-void
.end method
