.class public final Le/a/k/a/k/z/b$f;
.super Le/a/k/a/k/z/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k/a/k/z/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:Le/a/k/a/k/z/b$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/k/a/k/z/b$f;

    invoke-direct {v0}, Le/a/k/a/k/z/b$f;-><init>()V

    sput-object v0, Le/a/k/a/k/z/b$f;->a:Le/a/k/a/k/z/b$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/k/a/k/z/b;-><init>(Ls1/z/c/f;)V

    return-void
.end method
