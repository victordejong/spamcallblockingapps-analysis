.class public final Le/i/b/q2/j$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/q2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Ljava/lang/reflect/Field;

.field public static final b:Ljava/lang/reflect/Field;

.field public static final c:Ljava/lang/reflect/Field;

.field public static final d:Le/i/b/q2/j$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "cause"

    .line 1
    invoke-static {v0}, Le/i/b/q2/j$c;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Le/i/b/q2/j$c;->a:Ljava/lang/reflect/Field;

    const-string v0, "suppressedExceptions"

    .line 2
    invoke-static {v0}, Le/i/b/q2/j$c;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Le/i/b/q2/j$c;->b:Ljava/lang/reflect/Field;

    const-string v0, "detailMessage"

    .line 3
    invoke-static {v0}, Le/i/b/q2/j$c;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Le/i/b/q2/j$c;->c:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const-string v0, "field"

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object p0
.end method
