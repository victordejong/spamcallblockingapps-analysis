.class public final synthetic Lcom/hiya/stingray/t/i1/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lg/g/a/a/i/j/a;->values()[Lg/g/a/a/i/j/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/t/i1/r;->a:[I

    sget-object v1, Lg/g/a/a/i/j/a;->DTO_AD:Lg/g/a/a/i/j/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lg/g/a/a/i/j/a;->DTO_AFFILIATE:Lg/g/a/a/i/j/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lg/g/a/a/i/j/a;->DTO_ORGANIC:Lg/g/a/a/i/j/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
