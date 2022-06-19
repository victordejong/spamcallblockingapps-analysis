.class public final Le/a/h0/a/v$k;
.super Le/a/h0/a/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h0/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# static fields
.field public static final i:Le/a/h0/a/v$k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/h0/a/v$k;

    invoke-direct {v0}, Le/a/h0/a/v$k;-><init>()V

    sput-object v0, Le/a/h0/a/v$k;->i:Le/a/h0/a/v$k;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const v0, 0x7f0805de

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v0, 0x7f0805df

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f120040

    const v5, 0x7f120041

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v1, p0

    .line 3
    invoke-direct/range {v1 .. v8}, Le/a/h0/a/v;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;IIZZI)V

    return-void
.end method
