.class public final Le/a/l/v2/f/b$b;
.super Le/a/l/v2/f/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l/v2/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Le/a/l/v2/f/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/l/v2/f/b$b;

    invoke-direct {v0}, Le/a/l/v2/f/b$b;-><init>()V

    sput-object v0, Le/a/l/v2/f/b$b;->a:Le/a/l/v2/f/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/l/v2/f/b;-><init>(Ls1/z/c/f;)V

    return-void
.end method
