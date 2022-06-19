.class public abstract Ls1/a/a/a/z$c;
.super Ls1/a/a/a/z$a;
.source "SourceFile"

# interfaces
.implements Ls1/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/z$a<",
        "TV;",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final b:Ls1/a/a/a/k0;

.field public final c:Ls1/a/a/a/l0;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Ls1/a/a/a/z$c;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/l;

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    const-string v3, "caller"

    const-string v4, "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v2, v0, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Ls1/a/a/a/z$c;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/z$a;-><init>()V

    .line 2
    new-instance v0, Ls1/a/a/a/z$c$b;

    invoke-direct {v0, p0}, Ls1/a/a/a/z$c$b;-><init>(Ls1/a/a/a/z$c;)V

    invoke-static {v0}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/z$c;->b:Ls1/a/a/a/k0;

    .line 3
    new-instance v0, Ls1/a/a/a/z$c$a;

    invoke-direct {v0, p0}, Ls1/a/a/a/z$c$a;-><init>(Ls1/a/a/a/z$c;)V

    invoke-static {v0}, Le/q/f/a/d/a;->Q1(Ls1/z/b/a;)Ls1/a/a/a/l0;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/z$c;->c:Ls1/a/a/a/l0;

    return-void
.end method


# virtual methods
.method public b()Ls1/a/a/a/u0/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/a/a/a/u0/h<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ls1/a/a/a/z$c;->c:Ls1/a/a/a/l0;

    sget-object v1, Ls1/a/a/a/z$c;->d:[Ls1/a/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 1
    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ls1/a/a/a/u0/h;

    return-object v0
.end method

.method public e()Ls1/a/a/a/v0/b/b;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/z$c;->b:Ls1/a/a/a/k0;

    sget-object v1, Ls1/a/a/a/z$c;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ls1/a/a/a/v0/b/m0;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    const-string v0, "<set-"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ls1/a/a/a/z$a;->j()Ls1/a/a/a/z;

    move-result-object v1

    .line 2
    iget-object v1, v1, Ls1/a/a/a/z;->e:Ljava/lang/String;

    const/16 v2, 0x3e

    .line 3
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ls1/a/a/a/v0/b/j0;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/z$c;->b:Ls1/a/a/a/k0;

    sget-object v1, Ls1/a/a/a/z$c;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ls1/a/a/a/v0/b/m0;

    return-object v0
.end method
