.class public final synthetic Ls/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/hiya/client/callerid/ui/b0/d;->values()[Lcom/hiya/client/callerid/ui/b0/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ls/a;->a:[I

    sget-object v1, Lcom/hiya/client/callerid/ui/b0/d;->FRAUD:Lcom/hiya/client/callerid/ui/b0/d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v0, v2

    sget-object v2, Lcom/hiya/client/callerid/ui/b0/d;->PREMIUM:Lcom/hiya/client/callerid/ui/b0/d;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v0, v4

    sget-object v4, Lcom/hiya/client/callerid/ui/b0/d;->SPAM:Lcom/hiya/client/callerid/ui/b0/d;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x3

    aput v7, v0, v6

    invoke-static {}, Lcom/hiya/client/callerid/ui/b0/d;->values()[Lcom/hiya/client/callerid/ui/b0/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ls/a;->b:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    invoke-static {}, Lg/g/b/c/i;->values()[Lg/g/b/c/i;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ls/a;->c:[I

    sget-object v1, Lg/g/b/c/i;->BUSINESS:Lg/g/b/c/i;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
