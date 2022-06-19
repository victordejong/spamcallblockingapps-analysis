.class public final Ls1/a/a/a/v0/a/p/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/g1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/a/p/f$a;
    }
.end annotation


# static fields
.field public static final synthetic d:[Ls1/a/l;

.field public static final e:Ls1/a/a/a/v0/f/b;

.field public static final f:Ls1/a/a/a/v0/f/e;

.field public static final g:Ls1/a/a/a/v0/f/a;

.field public static final h:Ls1/a/a/a/v0/a/p/f$a;


# instance fields
.field public final a:Ls1/a/a/a/v0/l/i;

.field public final b:Ls1/a/a/a/v0/b/a0;

.field public final c:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/b/a0;",
            "Ls1/a/a/a/v0/b/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/w;

    const-class v2, Ls1/a/a/a/v0/a/p/f;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const-string v3, "cloneable"

    const-string v4, "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"

    invoke-direct {v1, v2, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ls1/a/a/a/v0/a/p/f;->d:[Ls1/a/l;

    new-instance v0, Ls1/a/a/a/v0/a/p/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/a/p/f$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Ls1/a/a/a/v0/a/p/f;->h:Ls1/a/a/a/v0/a/p/f$a;

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    sput-object v0, Ls1/a/a/a/v0/a/p/f;->e:Ls1/a/a/a/v0/f/b;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/a/k$a;->c:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->h()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    const-string v2, "StandardNames.FqNames.cloneable.shortName()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/a/p/f;->f:Ls1/a/a/a/v0/f/e;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    const-string v1, "ClassId.topLevel(Standar\u2026Names.cloneable.toSafe())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/a/p/f;->g:Ls1/a/a/a/v0/f/a;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ls1/z/b/l;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_0

    .line 1
    sget-object p3, Ls1/a/a/a/v0/a/p/e;->b:Ls1/a/a/a/v0/a/p/e;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string p4, "storageManager"

    .line 2
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "moduleDescriptor"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "computeContainingDeclaration"

    invoke-static {p3, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/v0/a/p/f;->b:Ls1/a/a/a/v0/b/a0;

    iput-object p3, p0, Ls1/a/a/a/v0/a/p/f;->c:Ls1/z/b/l;

    .line 4
    new-instance p2, Ls1/a/a/a/v0/a/p/g;

    invoke-direct {p2, p0, p1}, Ls1/a/a/a/v0/a/p/g;-><init>(Ls1/a/a/a/v0/a/p/f;Ls1/a/a/a/v0/l/m;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/f;->a:Ls1/a/a/a/v0/l/i;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)Z
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/p/f;->f:Ls1/a/a/a/v0/f/e;

    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Ls1/a/a/a/v0/a/p/f;->e:Ls1/a/a/a/v0/f/b;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/p/f;->g:Ls1/a/a/a/v0/f/a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ls1/a/a/a/v0/a/p/f;->a:Ls1/a/a/a/v0/l/i;

    sget-object v0, Ls1/a/a/a/v0/a/p/f;->d:[Ls1/a/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/h1/k;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c(Ls1/a/a/a/v0/f/b;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/b;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/e;",
            ">;"
        }
    .end annotation

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/p/f;->e:Ls1/a/a/a/v0/f/b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ls1/a/a/a/v0/a/p/f;->a:Ls1/a/a/a/v0/l/i;

    sget-object v0, Ls1/a/a/a/v0/a/p/f;->d:[Ls1/a/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/h1/k;

    .line 3
    invoke-static {p1}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    :goto_0
    return-object p1
.end method
