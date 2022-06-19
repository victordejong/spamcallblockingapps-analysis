.class public final Ls1/a/a/a/v0/m/l1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/l1/c;


# static fields
.field public static final a:Ls1/a/a/a/v0/m/l1/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/l1/n;

    invoke-direct {v0}, Ls1/a/a/a/v0/m/l1/n;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/m/l1/n;->a:Ls1/a/a/a/v0/m/l1/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Ls1/a/a/a/v0/m/n1/f;)Ls1/a/a/a/v0/m/n1/e;
    .locals 1

    const-string v0, "$this$asDynamicType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->x(Ls1/a/a/a/v0/m/n1/f;)Ls1/a/a/a/v0/m/n1/e;

    move-result-object p1

    return-object p1
.end method

.method public B(Ls1/a/a/a/v0/m/n1/l;Ls1/a/a/a/v0/m/n1/l;)Z
    .locals 3

    const-string v0, "c1"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "c2"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Ls1/a/a/a/v0/m/v0;

    const-string v1, ", "

    const-string v2, "ClassicTypeSystemContext couldn\'t handle: "

    if-eqz v0, :cond_1

    .line 3
    instance-of v0, p2, Ls1/a/a/a/v0/m/v0;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-static {v2, p2, v1}, Le/d/c/a/a;->O(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/l;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2, p1}, Le/d/c/a/a;->r(Ls1/a/a/a/v0/m/n1/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_1
    invoke-static {v2, p1, v1}, Le/d/c/a/a;->O(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/l;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Le/d/c/a/a;->r(Ls1/a/a/a/v0/m/n1/l;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public C(Ls1/a/a/a/v0/m/n1/l;)Ls1/a/a/a/v0/f/c;
    .locals 1

    const-string v0, "$this$getClassFqNameUnsafe"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->j1(Ls1/a/a/a/v0/m/n1/l;)Ls1/a/a/a/v0/f/c;

    move-result-object p1

    return-object p1
.end method

.method public D(Ls1/a/a/a/v0/m/n1/l;)Ls1/a/a/a/v0/a/i;
    .locals 1

    const-string v0, "$this$getPrimitiveArrayType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->t1(Ls1/a/a/a/v0/m/n1/l;)Ls1/a/a/a/v0/a/i;

    move-result-object p1

    return-object p1
.end method

.method public E(Ls1/a/a/a/v0/m/n1/l;)Ls1/a/a/a/v0/a/i;
    .locals 1

    const-string v0, "$this$getPrimitiveType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->u1(Ls1/a/a/a/v0/m/n1/l;)Ls1/a/a/a/v0/a/i;

    move-result-object p1

    return-object p1
.end method

.method public F(Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/f/b;)Z
    .locals 1

    const-string v0, "$this$hasAnnotation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->F1(Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/f/b;)Z

    move-result p1

    return p1
.end method

.method public G(Ls1/a/a/a/v0/m/n1/l;)Z
    .locals 1

    const-string v0, "$this$isClassTypeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->U1(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result p1

    return p1
.end method

.method public H(Ls1/a/a/a/v0/m/n1/l;)Z
    .locals 1

    const-string v0, "$this$isUnderKotlinPackage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->p2(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result p1

    return p1
.end method

.method public a(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;
    .locals 1

    const-string v0, "$this$asSimpleType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->D(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Ls1/a/a/a/v0/m/n1/h;)I
    .locals 1

    const-string v0, "$this$argumentsCount"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->u(Ls1/a/a/a/v0/m/n1/h;)I

    move-result p1

    return p1
.end method

.method public c(Ls1/a/a/a/v0/m/n1/k;)Z
    .locals 1

    const-string v0, "$this$isStarProjection"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->n2(Ls1/a/a/a/v0/m/n1/k;)Z

    move-result p1

    return p1
.end method

.method public d(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;
    .locals 1

    const-string v0, "$this$upperBoundIfFlexible"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->W3(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    return-object p1
.end method

.method public e(Ls1/a/a/a/v0/m/n1/i;)Z
    .locals 1

    const-string v0, "$this$isMarkedNullable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h2(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result p1

    return p1
.end method

.method public f(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/i;)Z
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->H1(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/i;)Z

    move-result p1

    return p1
.end method

.method public g(Ls1/a/a/a/v0/m/n1/m;)Ls1/a/a/a/v0/m/n1/h;
    .locals 1

    const-string v0, "$this$getRepresentativeUpperBound"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->w1(Ls1/a/a/a/v0/m/n1/m;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object p1

    return-object p1
.end method

.method public h(Ls1/a/a/a/v0/m/n1/l;)Z
    .locals 1

    const-string v0, "$this$isNothingConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->j2(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result p1

    return p1
.end method

.method public i(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/l;
    .locals 1

    const-string v0, "$this$typeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->S3(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object p1

    return-object p1
.end method

.method public j(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/f;
    .locals 1

    const-string v0, "$this$asFlexibleType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->z(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/f;

    move-result-object p1

    return-object p1
.end method

.method public k(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;
    .locals 1

    const-string v0, "$this$lowerBoundIfFlexible"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->B2(Ls1/a/a/a/v0/m/n1/n;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    return-object p1
.end method

.method public l(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/p;
    .locals 1

    const-string v0, "$this$getVariance"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->C1(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/p;

    move-result-object p1

    return-object p1
.end method

.method public m(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/h;
    .locals 1

    const-string v0, "$this$getType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->z1(Ls1/a/a/a/v0/m/n1/k;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object p1

    return-object p1
.end method

.method public n(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;
    .locals 1

    const-string v0, "$this$makeNullable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->E2(Ls1/a/a/a/v0/m/l1/c;Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object p1

    return-object p1
.end method

.method public o(Ls1/a/a/a/v0/m/n1/l;)Ls1/a/a/a/v0/m/n1/m;
    .locals 1

    const-string v0, "$this$getTypeParameterClassifier"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->A1(Ls1/a/a/a/v0/m/n1/l;)Ls1/a/a/a/v0/m/n1/m;

    move-result-object p1

    return-object p1
.end method

.method public p(Ls1/a/a/a/v0/m/n1/l;)Z
    .locals 1

    const-string v0, "$this$isInlineClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->d2(Ls1/a/a/a/v0/m/n1/l;)Z

    move-result p1

    return p1
.end method

.method public q(Ls1/a/a/a/v0/m/n1/h;I)Ls1/a/a/a/v0/m/n1/k;
    .locals 1

    const-string v0, "$this$getArgument"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->g1(Ls1/a/a/a/v0/m/n1/h;I)Ls1/a/a/a/v0/m/n1/k;

    move-result-object p1

    return-object p1
.end method

.method public r(Ls1/a/a/a/v0/m/n1/h;)Z
    .locals 1

    const-string v0, "$this$isNullableType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->k2(Ls1/a/a/a/v0/m/n1/h;)Z

    move-result p1

    return p1
.end method

.method public s(Ls1/a/a/a/v0/m/n1/f;)Ls1/a/a/a/v0/m/n1/i;
    .locals 1

    const-string v0, "$this$lowerBound"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->A2(Ls1/a/a/a/v0/m/n1/f;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    return-object p1
.end method

.method public t(Ls1/a/a/a/v0/m/n1/i;)Z
    .locals 1

    const-string v0, "$this$isPrimitiveType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->l2(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result p1

    return p1
.end method

.method public u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;
    .locals 1

    const-string v0, "$this$typeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->R3(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object p1

    return-object p1
.end method

.method public v(Ls1/a/a/a/v0/m/n1/i;Z)Ls1/a/a/a/v0/m/n1/i;
    .locals 1

    const-string v0, "$this$withNullability"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->c4(Ls1/a/a/a/v0/m/n1/i;Z)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    return-object p1
.end method

.method public w(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;
    .locals 1

    const-string v0, "$this$getSubstitutedUnderlyingType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->y1(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;

    move-result-object p1

    return-object p1
.end method

.method public x(Ls1/a/a/a/v0/m/n1/f;)Ls1/a/a/a/v0/m/n1/i;
    .locals 1

    const-string v0, "$this$upperBound"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->V3(Ls1/a/a/a/v0/m/n1/f;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object p1

    return-object p1
.end method

.method public y(Ls1/a/a/a/v0/m/n1/h;)Z
    .locals 1

    const-string v0, "$this$isMarkedNullable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->g2(Ls1/a/a/a/v0/m/l1/c;Ls1/a/a/a/v0/m/n1/h;)Z

    move-result p1

    return p1
.end method

.method public z(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/d;
    .locals 1

    const-string v0, "$this$asDefinitelyNotNullType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->w(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/d;

    move-result-object p1

    return-object p1
.end method
