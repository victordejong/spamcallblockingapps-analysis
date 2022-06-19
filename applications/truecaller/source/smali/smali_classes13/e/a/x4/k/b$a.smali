.class public final Le/a/x4/k/b$a;
.super Le/a/x4/k/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/x4/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Le/a/x4/k/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/x4/k/b$a;

    invoke-direct {v0}, Le/a/x4/k/b$a;-><init>()V

    sput-object v0, Le/a/x4/k/b$a;->a:Le/a/x4/k/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/x4/k/b;-><init>(Ls1/z/c/f;)V

    return-void
.end method
