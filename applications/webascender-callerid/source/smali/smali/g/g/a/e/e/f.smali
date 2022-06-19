.class public final synthetic Lg/g/a/e/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lg/g/a/e/e/g;->values()[Lg/g/a/e/e/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lg/g/a/e/e/f;->a:[I

    sget-object v1, Lg/g/a/e/e/g;->DNS_LOOKUP:Lg/g/a/e/e/g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lg/g/a/e/e/g;->TCP_CONN:Lg/g/a/e/e/g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lg/g/a/e/e/g;->TLS_CONN:Lg/g/a/e/e/g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lg/g/a/e/e/g;->HTTP_RESP:Lg/g/a/e/e/g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
