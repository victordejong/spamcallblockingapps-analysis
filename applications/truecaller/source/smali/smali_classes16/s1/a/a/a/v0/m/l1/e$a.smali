.class public final Ls1/a/a/a/v0/m/l1/e$a;
.super Ls1/a/a/a/v0/m/l1/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/m/l1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/m/l1/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/l1/e$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/m/l1/e$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/m/l1/e$a;->a:Ls1/a/a/a/v0/m/l1/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/l1/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ls1/a/a/a/v0/b/e;Ls1/z/b/a;)Ls1/a/a/a/v0/j/y/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ls1/a/a/a/v0/j/y/i;",
            ">(",
            "Ls1/a/a/a/v0/b/e;",
            "Ls1/z/b/a<",
            "+TS;>;)TS;"
        }
    .end annotation

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "compute"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p2, Ls1/a/a/a/v0/b/o0$b;

    invoke-virtual {p2}, Ls1/a/a/a/v0/b/o0$b;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/j/y/i;

    return-object p1
.end method

.method public c(Ls1/a/a/a/v0/b/a0;)Z
    .locals 1

    const-string v0, "moduleDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public d(Ls1/a/a/a/v0/m/v0;)Z
    .locals 1

    const-string v0, "typeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public e(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/h;
    .locals 1

    const-string v0, "descriptor"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Ls1/a/a/a/v0/b/e;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/e;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    const-string v0, "classDescriptor.typeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "classDescriptor.typeConstructor.supertypes"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
