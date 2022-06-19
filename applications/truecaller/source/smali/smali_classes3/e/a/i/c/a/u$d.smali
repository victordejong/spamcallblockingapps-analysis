.class public final Le/a/i/c/a/u$d;
.super Le/a/i/c/a/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/c/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Le/a/i/c/a/u$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/i/c/a/u$d;

    invoke-direct {v0}, Le/a/i/c/a/u$d;-><init>()V

    sput-object v0, Le/a/i/c/a/u$d;->b:Le/a/i/c/a/u$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "offline"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/i/c/a/u;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    return-void
.end method
