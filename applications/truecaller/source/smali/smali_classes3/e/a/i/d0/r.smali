.class public final Le/a/i/d0/r;
.super Le/a/i/c/b/a;
.source "SourceFile"


# static fields
.field public static final d:Le/a/i/d0/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/i/d0/r;

    invoke-direct {v0}, Le/a/i/d0/r;-><init>()V

    sput-object v0, Le/a/i/d0/r;->d:Le/a/i/d0/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x68

    const-string v1, "Partner Adapter Not Defined"

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Le/a/i/c/b/a;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
