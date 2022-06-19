.class public final synthetic Lcom/hiya/client/callerid/ui/overlay/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/hiya/client/callerid/ui/b0/k;->values()[Lcom/hiya/client/callerid/ui/b0/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/client/callerid/ui/overlay/g/d;->a:[I

    sget-object v1, Lcom/hiya/client/callerid/ui/b0/k;->MOBILE:Lcom/hiya/client/callerid/ui/b0/k;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/client/callerid/ui/b0/k;->HOME:Lcom/hiya/client/callerid/ui/b0/k;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/hiya/client/callerid/ui/b0/k;->PHONE:Lcom/hiya/client/callerid/ui/b0/k;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
