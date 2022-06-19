.class public final Le/a/h0/a/v$h;
.super Le/a/h0/a/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h0/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final i:Le/a/h0/a/v$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/h0/a/v$h;

    invoke-direct {v0}, Le/a/h0/a/v$h;-><init>()V

    sput-object v0, Le/a/h0/a/v$h;->i:Le/a/h0/a/v$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const v0, 0x7f08066a

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v0, 0x7f08066b

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f120048

    const v5, 0x7f120049

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    .line 3
    invoke-direct/range {v1 .. v8}, Le/a/h0/a/v;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;IIZZLs1/z/c/f;)V

    return-void
.end method
