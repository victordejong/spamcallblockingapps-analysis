.class public final Le/a/c4/j;
.super Le/a/c4/c;
.source "SourceFile"


# static fields
.field public static final a:Le/a/c4/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c4/j;

    invoke-direct {v0}, Le/a/c4/j;-><init>()V

    sput-object v0, Le/a/c4/j;->a:Le/a/c4/j;

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteServiceException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
