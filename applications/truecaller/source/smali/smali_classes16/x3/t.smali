.class public final Lx3/t;
.super Lx3/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/t$a;
    }
.end annotation


# static fields
.field public static final a:Lx3/j$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx3/t;

    invoke-direct {v0}, Lx3/t;-><init>()V

    sput-object v0, Lx3/t;->a:Lx3/j$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx3/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lx3/b0;)Lx3/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lx3/b0;",
            ")",
            "Lx3/j<",
            "Lu3/l0;",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lx3/f0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Ljava/util/Optional;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 4
    invoke-static {v0, p1}, Lx3/f0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 5
    invoke-virtual {p3, p1, p2}, Lx3/b0;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lx3/j;

    move-result-object p1

    .line 6
    new-instance p2, Lx3/t$a;

    invoke-direct {p2, p1}, Lx3/t$a;-><init>(Lx3/j;)V

    return-object p2
.end method
