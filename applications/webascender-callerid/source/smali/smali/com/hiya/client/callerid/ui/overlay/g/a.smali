.class public final synthetic Lcom/hiya/client/callerid/ui/overlay/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lg/g/b/c/q;->values()[Lg/g/b/c/q;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/client/callerid/ui/overlay/g/a;->a:[I

    sget-object v1, Lg/g/b/c/q;->SPAM:Lg/g/b/c/q;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lg/g/b/c/q;->FRAUD:Lg/g/b/c/q;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lg/g/b/c/o;->values()[Lg/g/b/c/o;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/client/callerid/ui/overlay/g/a;->b:[I

    sget-object v1, Lg/g/b/c/o;->BUSINESS:Lg/g/b/c/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lg/g/b/c/o;->WARN:Lg/g/b/c/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lg/g/b/c/o;->PERSON:Lg/g/b/c/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lg/g/b/c/o;->STOP:Lg/g/b/c/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lg/g/b/c/o;->PREMIUM:Lg/g/b/c/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lg/g/b/c/o;->NONE:Lg/g/b/c/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    return-void
.end method
