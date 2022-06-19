.class public final Le/a/a/c1/b$f;
.super Le/a/a/c1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:Le/a/a/c1/b$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/a/c1/b$f;

    invoke-direct {v0}, Le/a/a/c1/b$f;-><init>()V

    sput-object v0, Le/a/a/c1/b$f;->a:Le/a/a/c1/b$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/a/c1/b;-><init>(Ls1/z/c/f;)V

    return-void
.end method
