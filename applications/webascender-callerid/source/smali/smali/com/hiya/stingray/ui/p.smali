.class public final synthetic Lcom/hiya/stingray/ui/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/hiya/stingray/ui/o;->values()[Lcom/hiya/stingray/ui/o;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/ui/p;->a:[I

    sget-object v1, Lcom/hiya/stingray/ui/o;->SPAM:Lcom/hiya/stingray/ui/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v0, v2

    sget-object v2, Lcom/hiya/stingray/ui/o;->FRAUD:Lcom/hiya/stingray/ui/o;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v0, v4

    invoke-static {}, Lcom/hiya/stingray/ui/o;->values()[Lcom/hiya/stingray/ui/o;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/ui/p;->b:[I

    sget-object v4, Lcom/hiya/stingray/ui/o;->PRIVATE:Lcom/hiya/stingray/ui/o;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/o;->IDENTIFIED:Lcom/hiya/stingray/ui/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/o;->CALL_SCREENED:Lcom/hiya/stingray/ui/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/o;->MULTI_CONTACT:Lcom/hiya/stingray/ui/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/o;->NAME_AVAILABLE:Lcom/hiya/stingray/ui/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/o;->NOT_IDENTIFIED:Lcom/hiya/stingray/ui/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/o;->SAVED_CONTACT:Lcom/hiya/stingray/ui/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    return-void
.end method
