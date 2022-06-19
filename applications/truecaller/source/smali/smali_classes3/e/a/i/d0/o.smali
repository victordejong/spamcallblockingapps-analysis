.class public final Le/a/i/d0/o;
.super Le/a/i/c/b/a;
.source "SourceFile"


# static fields
.field public static final d:Le/a/i/d0/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/i/d0/o;

    invoke-direct {v0}, Le/a/i/d0/o;-><init>()V

    sput-object v0, Le/a/i/d0/o;->d:Le/a/i/d0/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x70

    const-string v1, "Network not available to fetch Ad"

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Le/a/i/c/b/a;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
