.class public final Le/a/c4/b;
.super Le/a/c4/c;
.source "SourceFile"


# static fields
.field public static final a:Le/a/c4/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c4/b;

    invoke-direct {v0}, Le/a/c4/b;-><init>()V

    sput-object v0, Le/a/c4/b;->a:Le/a/c4/b;

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
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ljava/lang/Error;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    instance-of v0, p1, Lcom/truecaller/log/UnmutedException;

    if-nez v0, :cond_0

    .line 3
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-nez v0, :cond_0

    .line 4
    instance-of v0, p1, Ljava/lang/IndexOutOfBoundsException;

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Class;

    .line 5
    const-class v3, Landroid/content/res/Resources$NotFoundException;

    aput-object v3, v0, v1

    invoke-static {p0, p1, v0}, Le/a/c4/c;->a(Le/a/c4/c;Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method
