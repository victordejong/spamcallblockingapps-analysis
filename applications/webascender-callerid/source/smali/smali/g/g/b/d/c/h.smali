.class public final synthetic Lg/g/b/d/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lg/g/b/d/e/d;->values()[Lg/g/b/d/e/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lg/g/b/d/c/h;->a:[I

    sget-object v1, Lg/g/b/d/e/d;->UserFeedback:Lg/g/b/d/e/d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    return-void
.end method
