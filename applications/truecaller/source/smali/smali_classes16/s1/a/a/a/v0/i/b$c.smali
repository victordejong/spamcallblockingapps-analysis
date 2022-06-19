.class public final Ls1/a/a/a/v0/i/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/i/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/i/b$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/i/b$c;

    invoke-direct {v0}, Ls1/a/a/a/v0/i/b$c;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/i/b$c;->a:Ls1/a/a/a/v0/i/b$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/h;Ls1/a/a/a/v0/i/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "classifier"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/i/b$c;->b(Ls1/a/a/a/v0/b/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ls1/a/a/a/v0/b/h;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    const-string v1, "descriptor.name"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->Q2(Ls1/a/a/a/v0/f/e;)Ljava/lang/String;

    move-result-object v0

    .line 2
    instance-of v1, p1, Ls1/a/a/a/v0/b/w0;

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p1

    const-string v1, "descriptor.containingDeclaration"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v1, p1, Ls1/a/a/a/v0/b/e;

    if-eqz v1, :cond_1

    check-cast p1, Ls1/a/a/a/v0/b/h;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/i/b$c;->b(Ls1/a/a/a/v0/b/h;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v1, p1, Ls1/a/a/a/v0/b/c0;

    if-eqz v1, :cond_2

    check-cast p1, Ls1/a/a/a/v0/b/c0;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/c0;->d()Ls1/a/a/a/v0/f/b;

    move-result-object p1

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/b;->j()Ls1/a/a/a/v0/f/c;

    move-result-object p1

    const-string v1, "descriptor.fqName.toUnsafe()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$render"

    .line 6
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/c;->g()Ljava/util/List;

    move-result-object p1

    const-string v1, "pathSegments()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->R2(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const-string v1, ""

    .line 8
    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const-string v1, "."

    invoke-static {p1, v1, v0}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method
