.class public final Ls1/a/a/a/v0/n/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/n/b;


# static fields
.field public static final a:Ls1/a/a/a/v0/n/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/n/f;

    invoke-direct {v0}, Ls1/a/a/a/v0/n/f;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/n/f;->a:Ls1/a/a/a/v0/n/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/v;)Ljava/lang/String;
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->N1(Ls1/a/a/a/v0/n/b;Ls1/a/a/a/v0/b/v;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ls1/a/a/a/v0/b/v;)Z
    .locals 5

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/b1;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/a/j;->e:Ls1/a/a/a/v0/a/j$b;

    const-string v1, "secondParameter"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->k(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/a0;

    move-result-object v1

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "module"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Ls1/a/a/a/v0/a/k$a;->Y:Ls1/a/a/a/v0/f/a;

    invoke-static {v1, v0}, Le/q/f/a/d/a;->o0(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v1, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 8
    new-instance v2, Ls1/a/a/a/v0/m/q0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v3

    const-string v4, "kPropertyClass.typeConstructor"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v3

    const-string v4, "kPropertyClass.typeConstructor.parameters"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "kPropertyClass.typeConstructor.parameters.single()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ls1/a/a/a/v0/b/w0;

    invoke-direct {v2, v3}, Ls1/a/a/a/v0/m/q0;-><init>(Ls1/a/a/a/v0/b/w0;)V

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-static {v1, v0, v2}, Ls1/a/a/a/v0/m/f0;->e(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/e;Ljava/util/List;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    const-string v1, "secondParameter.type"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$makeNotNullable"

    .line 11
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Ls1/a/a/a/v0/m/f1;->i(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    const-string v1, "TypeUtils.makeNotNullable(this)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$isSubtypeOf"

    .line 13
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "superType"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v1, Ls1/a/a/a/v0/m/l1/d;->a:Ls1/a/a/a/v0/m/l1/d;

    invoke-interface {v1, v0, p1}, Ls1/a/a/a/v0/m/l1/d;->d(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "second parameter must be of type KProperty<*> or its supertype"

    return-object v0
.end method
