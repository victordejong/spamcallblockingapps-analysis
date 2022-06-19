.class public final synthetic Lcom/hiya/client/callerid/ui/overlay/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/hiya/client/callerid/ui/b0/d;->values()[Lcom/hiya/client/callerid/ui/b0/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/client/callerid/ui/overlay/c;->a:[I

    sget-object v1, Lcom/hiya/client/callerid/ui/b0/d;->VOICEMAIL:Lcom/hiya/client/callerid/ui/b0/d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    return-void
.end method
