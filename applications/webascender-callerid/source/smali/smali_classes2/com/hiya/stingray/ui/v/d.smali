.class public final synthetic Lcom/hiya/stingray/ui/v/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/hiya/stingray/ui/b;->values()[Lcom/hiya/stingray/ui/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/ui/v/d;->a:[I

    sget-object v1, Lcom/hiya/stingray/ui/b;->UNIDENTIFIED:Lcom/hiya/stingray/ui/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/ui/b;->NAME_AVAILABLE:Lcom/hiya/stingray/ui/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x2

    aput v4, v0, v3

    invoke-static {}, Lcom/hiya/stingray/ui/b;->values()[Lcom/hiya/stingray/ui/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/ui/v/d;->b:[I

    sget-object v3, Lcom/hiya/stingray/ui/b;->FRAUD:Lcom/hiya/stingray/ui/b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3

    sget-object v2, Lcom/hiya/stingray/ui/b;->SPAM:Lcom/hiya/stingray/ui/b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v4, v0, v2

    sget-object v2, Lcom/hiya/stingray/ui/b;->IDENTIFIED:Lcom/hiya/stingray/ui/b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v0, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
