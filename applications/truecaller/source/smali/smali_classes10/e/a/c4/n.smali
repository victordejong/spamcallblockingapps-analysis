.class public final Le/a/c4/n;
.super Le/a/c4/c;
.source "SourceFile"


# static fields
.field public static final a:Le/a/c4/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c4/n;

    invoke-direct {v0}, Le/a/c4/n;-><init>()V

    sput-object v0, Le/a/c4/n;->a:Le/a/c4/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/c4/c;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p1, p1, Ljava/net/UnknownHostException;

    return p1
.end method
