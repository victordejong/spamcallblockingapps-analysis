.class public final Ls1/a/a/a/v0/d/a/g0/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/a/a/a/v0/d/a/g0/b;

.field public static final b:Ls1/a/a/a/v0/d/a/g0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/g0/b;

    sget-object v1, Ls1/a/a/a/v0/d/a/v;->j:Ls1/a/a/a/v0/f/b;

    const-string v2, "JvmAnnotationNames.ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/d/a/g0/b;-><init>(Ls1/a/a/a/v0/f/b;)V

    sput-object v0, Ls1/a/a/a/v0/d/a/g0/x;->a:Ls1/a/a/a/v0/d/a/g0/b;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/d/a/g0/b;

    sget-object v1, Ls1/a/a/a/v0/d/a/v;->k:Ls1/a/a/a/v0/f/b;

    const-string v2, "JvmAnnotationNames.ENHANCED_MUTABILITY_ANNOTATION"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/d/a/g0/b;-><init>(Ls1/a/a/a/v0/f/b;)V

    sput-object v0, Ls1/a/a/a/v0/d/a/g0/x;->b:Ls1/a/a/a/v0/d/a/g0/b;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ls1/a/a/a/v0/d/a/g0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ls1/a/a/a/v0/d/a/g0/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/g0/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/d/a/g0/c;-><init>(Ljava/lang/Object;Ls1/a/a/a/v0/b/f1/h;)V

    return-object v0
.end method

.method public static final b(Ls1/a/a/a/v0/d/a/g0/v;)Z
    .locals 1

    const-string v0, "$this$shouldEnhance"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/a/g0/v;->c:Ls1/a/a/a/v0/d/a/g0/v;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
