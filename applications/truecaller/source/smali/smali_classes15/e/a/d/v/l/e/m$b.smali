.class public final Le/a/d/v/l/e/m$b;
.super Le/a/d/v/l/e/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/v/l/e/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Le/a/d/v/l/e/m$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/d/v/l/e/m$b;

    invoke-direct {v0}, Le/a/d/v/l/e/m$b;-><init>()V

    sput-object v0, Le/a/d/v/l/e/m$b;->a:Le/a/d/v/l/e/m$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/d/v/l/e/m;-><init>(Ls1/z/c/f;)V

    return-void
.end method
