.class public final Le/a/c/r/m/b$s;
.super Le/a/c/r/m/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/r/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "s"
.end annotation


# static fields
.field public static final b:Le/a/c/r/m/b$s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c/r/m/b$s;

    invoke-direct {v0}, Le/a/c/r/m/b$s;-><init>()V

    sput-object v0, Le/a/c/r/m/b$s;->b:Le/a/c/r/m/b$s;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "School"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/c/r/m/b;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    return-void
.end method
