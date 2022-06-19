.class public final Ls1/a/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ls1/a/a/a/w0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/w0/b<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/w0/b;->c:Ls1/a/a/a/w0/b;

    if-eqz v0, :cond_0

    const-string v1, "HashPMap.empty<String, Any>()"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/k;->a:Ls1/a/a/a/w0/b;

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "kotlin/reflect/jvm/internal/pcollections/HashPMap"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "empty"

    aput-object v2, v0, v1

    const-string v1, "@NotNull method %s.%s must not return null"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
