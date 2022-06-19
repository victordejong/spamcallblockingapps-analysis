.class public final Le/a/d/i$b;
.super Le/a/d/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Le/a/d/i$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/d/i$b;

    invoke-direct {v0}, Le/a/d/i$b;-><init>()V

    sput-object v0, Le/a/d/i$b;->a:Le/a/d/i$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/d/i;-><init>(Ls1/z/c/f;)V

    return-void
.end method
