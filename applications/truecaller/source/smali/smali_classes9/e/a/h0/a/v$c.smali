.class public final Le/a/h0/a/v$c;
.super Le/a/h0/a/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h0/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final i:Le/a/h0/a/v$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/h0/a/v$c;

    invoke-direct {v0}, Le/a/h0/a/v$c;-><init>()V

    sput-object v0, Le/a/h0/a/v$c;->i:Le/a/h0/a/v$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f120053

    const v4, 0x7f120054

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Le/a/h0/a/v;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;IIZZI)V

    return-void
.end method
