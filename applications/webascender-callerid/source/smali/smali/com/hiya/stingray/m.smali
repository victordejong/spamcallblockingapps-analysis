.class public final synthetic Lcom/hiya/stingray/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/hiya/client/callerid/ui/d$g;->values()[Lcom/hiya/client/callerid/ui/d$g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/m;->a:[I

    sget-object v1, Lcom/hiya/client/callerid/ui/d$g;->BLOCK:Lcom/hiya/client/callerid/ui/d$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/client/callerid/ui/d$g;->REPORT:Lcom/hiya/client/callerid/ui/d$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lg/g/b/c/k;->values()[Lg/g/b/c/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/m;->b:[I

    sget-object v1, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lg/g/b/c/k;->OUTGOING:Lg/g/b/c/k;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
