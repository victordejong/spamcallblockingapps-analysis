.class public final synthetic Lcom/hiya/stingray/t/i1/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/hiya/stingray/util/i$a;->values()[Lcom/hiya/stingray/util/i$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/t/i1/x;->a:[I

    sget-object v1, Lcom/hiya/stingray/util/i$a;->INCOMING:Lcom/hiya/stingray/util/i$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/stingray/util/i$a;->OUTGOING:Lcom/hiya/stingray/util/i$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
