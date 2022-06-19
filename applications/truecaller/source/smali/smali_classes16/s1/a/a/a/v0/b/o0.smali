.class public final Ls1/a/a/a/v0/b/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/b/o0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ls1/a/a/a/v0/j/y/i;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic e:[Ls1/a/l;

.field public static final f:Ls1/a/a/a/v0/b/o0$a;


# instance fields
.field public final a:Ls1/a/a/a/v0/l/i;

.field public final b:Ls1/a/a/a/v0/b/e;

.field public final c:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/m/l1/e;",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ls1/a/a/a/v0/m/l1/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/w;

    const-class v2, Ls1/a/a/a/v0/b/o0;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const-string v3, "scopeForOwnerModule"

    const-string v4, "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v1, v2, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ls1/a/a/a/v0/b/o0;->e:[Ls1/a/l;

    new-instance v0, Ls1/a/a/a/v0/b/o0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/b/o0$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Ls1/a/a/a/v0/b/o0;->f:Ls1/a/a/a/v0/b/o0$a;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/l/m;Ls1/z/b/l;Ls1/a/a/a/v0/m/l1/e;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/o0;->b:Ls1/a/a/a/v0/b/e;

    iput-object p3, p0, Ls1/a/a/a/v0/b/o0;->c:Ls1/z/b/l;

    iput-object p4, p0, Ls1/a/a/a/v0/b/o0;->d:Ls1/a/a/a/v0/m/l1/e;

    .line 2
    new-instance p1, Ls1/a/a/a/v0/b/p0;

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/b/p0;-><init>(Ls1/a/a/a/v0/b/o0;)V

    invoke-interface {p2, p1}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/b/o0;->a:Ls1/a/a/a/v0/l/i;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/l1/e;",
            ")TT;"
        }
    .end annotation

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/o0;->b:Ls1/a/a/a/v0/b/e;

    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->k(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/a0;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/m/l1/e;->c(Ls1/a/a/a/v0/b/a0;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Ls1/a/a/a/v0/b/o0;->a:Ls1/a/a/a/v0/l/i;

    sget-object v0, Ls1/a/a/a/v0/b/o0;->e:[Ls1/a/l;

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/j/y/i;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/b/o0;->b:Ls1/a/a/a/v0/b/e;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    const-string v2, "classDescriptor.typeConstructor"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/m/l1/e;->d(Ls1/a/a/a/v0/m/v0;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Ls1/a/a/a/v0/b/o0;->a:Ls1/a/a/a/v0/l/i;

    sget-object v0, Ls1/a/a/a/v0/b/o0;->e:[Ls1/a/l;

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/j/y/i;

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Ls1/a/a/a/v0/b/o0;->b:Ls1/a/a/a/v0/b/e;

    new-instance v1, Ls1/a/a/a/v0/b/o0$b;

    invoke-direct {v1, p0, p1}, Ls1/a/a/a/v0/b/o0$b;-><init>(Ls1/a/a/a/v0/b/o0;Ls1/a/a/a/v0/m/l1/e;)V

    invoke-virtual {p1, v0, v1}, Ls1/a/a/a/v0/m/l1/e;->b(Ls1/a/a/a/v0/b/e;Ls1/z/b/a;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p1

    return-object p1
.end method
