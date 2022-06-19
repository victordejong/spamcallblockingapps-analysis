.class public final Le/a/r3/b$a;
.super Le/a/r3/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Le/a/r3/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/r3/b$a;

    invoke-direct {v0}, Le/a/r3/b$a;-><init>()V

    sput-object v0, Le/a/r3/b$a;->a:Le/a/r3/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/r3/b;-><init>(Ls1/z/c/f;)V

    return-void
.end method
