.class public final Le/a/c4/i;
.super Le/a/c4/c;
.source "SourceFile"


# static fields
.field public static final a:Le/a/c4/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c4/i;

    invoke-direct {v0}, Le/a/c4/i;-><init>()V

    sput-object v0, Le/a/c4/i;->a:Le/a/c4/i;

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
    .locals 6

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Ljava/lang/OutOfMemoryError;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, p1, v1}, Le/a/c4/c;->a(Le/a/c4/c;Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const-string v1, "e.stackTrace"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v1, p1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    const-string v5, "it"

    .line 4
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "lottie"

    invoke-static {v4, v5, v0}, Ls1/f0/v;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    if-eqz v4, :cond_1

    move p1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    return v0
.end method
