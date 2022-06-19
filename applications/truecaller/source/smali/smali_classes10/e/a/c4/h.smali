.class public final Le/a/c4/h;
.super Le/a/c4/c;
.source "SourceFile"


# static fields
.field public static final a:Le/a/c4/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c4/h;

    invoke-direct {v0}, Le/a/c4/h;-><init>()V

    sput-object v0, Le/a/c4/h;->a:Le/a/c4/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/c4/c;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p1, p1, Ljava/lang/LinkageError;

    return p1
.end method
