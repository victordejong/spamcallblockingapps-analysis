.class public final Le/a/i/c/a/u$c;
.super Le/a/i/c/a/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/c/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Le/a/i/c/a/u$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/i/c/a/u$c;

    invoke-direct {v0}, Le/a/i/c/a/u$c;-><init>()V

    sput-object v0, Le/a/i/c/a/u$c;->b:Le/a/i/c/a/u$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "network_cache"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/i/c/a/u;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    return-void
.end method
