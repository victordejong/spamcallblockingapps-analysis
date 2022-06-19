.class public final Le/a/o/b/i$a;
.super Le/a/o/b/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Le/a/o/b/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/o/b/i$a;

    invoke-direct {v0}, Le/a/o/b/i$a;-><init>()V

    sput-object v0, Le/a/o/b/i$a;->a:Le/a/o/b/i$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/o/b/i;-><init>(Ls1/z/c/f;)V

    return-void
.end method
