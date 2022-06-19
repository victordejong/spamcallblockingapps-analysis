.class public final Le/a/c4/a;
.super Le/a/c4/c;
.source "SourceFile"


# static fields
.field public static final a:Le/a/c4/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c4/a;

    invoke-direct {v0}, Le/a/c4/a;-><init>()V

    sput-object v0, Le/a/c4/a;->a:Le/a/c4/a;

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
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.os.DeadObjectException"

    const-string v1, "android.os.DeadSystemException"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/c4/c;->b(Ljava/lang/Throwable;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
