.class public final Le/a/l/c/a/t$h;
.super Le/a/l/c/a/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l/c/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final a:Le/a/l/c/a/t$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/l/c/a/t$h;

    invoke-direct {v0}, Le/a/l/c/a/t$h;-><init>()V

    sput-object v0, Le/a/l/c/a/t$h;->a:Le/a/l/c/a/t$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/l/c/a/t;-><init>(Ls1/z/c/f;)V

    return-void
.end method
