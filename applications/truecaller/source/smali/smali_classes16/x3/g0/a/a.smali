.class public final Lx3/g0/a/a;
.super Lx3/j$a;
.source "SourceFile"


# instance fields
.field public final a:Le/m/e/k;


# direct methods
.method public constructor <init>(Le/m/e/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx3/j$a;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/g0/a/a;->a:Le/m/e/k;

    return-void
.end method

.method public static c()Lx3/g0/a/a;
    .locals 2

    .line 1
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    .line 2
    new-instance v1, Lx3/g0/a/a;

    invoke-direct {v1, v0}, Lx3/g0/a/a;-><init>(Le/m/e/k;)V

    return-object v1
.end method

.method public static d(Le/m/e/k;)Lx3/g0/a/a;
    .locals 1

    const-string v0, "gson == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lx3/g0/a/a;

    invoke-direct {v0, p0}, Lx3/g0/a/a;-><init>(Le/m/e/k;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lx3/b0;)Lx3/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lx3/b0;",
            ")",
            "Lx3/j<",
            "*",
            "Lu3/j0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lx3/g0/a/a;->a:Le/m/e/k;

    invoke-static {p1}, Le/m/e/f0/a;->get(Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object p1

    .line 2
    new-instance p2, Lx3/g0/a/b;

    iget-object p3, p0, Lx3/g0/a/a;->a:Le/m/e/k;

    invoke-direct {p2, p3, p1}, Lx3/g0/a/b;-><init>(Le/m/e/k;Le/m/e/b0;)V

    return-object p2
.end method

.method public b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lx3/b0;)Lx3/j;
    .locals 0
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
    iget-object p2, p0, Lx3/g0/a/a;->a:Le/m/e/k;

    invoke-static {p1}, Le/m/e/f0/a;->get(Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object p1

    .line 2
    new-instance p2, Lx3/g0/a/c;

    iget-object p3, p0, Lx3/g0/a/a;->a:Le/m/e/k;

    invoke-direct {p2, p3, p1}, Lx3/g0/a/c;-><init>(Le/m/e/k;Le/m/e/b0;)V

    return-object p2
.end method
