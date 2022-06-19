.class public final Le/a/c4/g;
.super Le/a/c4/c;
.source "SourceFile"


# static fields
.field public static final a:Le/a/c4/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c4/g;

    invoke-direct {v0}, Le/a/c4/g;-><init>()V

    sput-object v0, Le/a/c4/g;->a:Le/a/c4/g;

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
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/IllegalStateException;

    .line 2
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v2, p1

    :cond_0
    const-string p1, " must not be null"

    .line 3
    invoke-static {v2, p1, v3, v1}, Ls1/f0/r;->m(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Field specified as non-null is null: "

    .line 4
    invoke-static {v2, p1, v3, v1}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "Method specified as non-null returned null: "

    .line 5
    invoke-static {v2, p1, v3, v1}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_0
    move v3, v0

    goto :goto_1

    .line 6
    :cond_3
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    move-object v2, p1

    :cond_4
    const-string p1, "Parameter specified as non-null is null: method "

    .line 8
    invoke-static {v2, p1, v3, v1}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    :cond_5
    :goto_1
    return v3
.end method
