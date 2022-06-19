.class public final synthetic Le/h/a/b/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Le/h/a/b/e;->values()[Le/h/a/b/e;

    const/16 v0, 0xb

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v1, v0, v2

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v1, v0, v1

    sput-object v0, Le/h/a/b/d$b;->a:[I

    return-void
.end method
