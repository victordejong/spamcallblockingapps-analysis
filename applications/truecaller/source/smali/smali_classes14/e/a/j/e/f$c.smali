.class public final Le/a/j/e/f$c;
.super Le/a/j/e/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/j/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Le/a/j/e/f$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/j/e/f$c;

    invoke-direct {v0}, Le/a/j/e/f$c;-><init>()V

    sput-object v0, Le/a/j/e/f$c;->a:Le/a/j/e/f$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/j/e/f;-><init>(Ls1/z/c/f;)V

    return-void
.end method
