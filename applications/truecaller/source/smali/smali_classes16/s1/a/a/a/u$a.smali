.class public final Ls1/a/a/a/u$a;
.super Ls1/a/a/a/n$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic i:[Ls1/a/l;


# instance fields
.field public final d:Ls1/a/a/a/k0;

.field public final e:Ls1/a/a/a/k0;

.field public final f:Ls1/a/a/a/l0;

.field public final g:Ls1/a/a/a/l0;

.field public final synthetic h:Ls1/a/a/a/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Ls1/a/a/a/u$a;

    const/4 v1, 0x5

    new-array v1, v1, [Ls1/a/l;

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "kotlinClass"

    const-string v5, "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "scope"

    const-string v5, "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "multifileFacade"

    const-string v5, "getMultifileFacade()Ljava/lang/Class;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "metadata"

    const-string v5, "getMetadata()Lkotlin/Triple;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    const-string v3, "members"

    const-string v4, "getMembers()Ljava/util/Collection;"

    invoke-direct {v2, v0, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Ls1/a/a/a/u$a;->i:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/u$a;->h:Ls1/a/a/a/u;

    invoke-direct {p0, p1}, Ls1/a/a/a/n$a;-><init>(Ls1/a/a/a/n;)V

    .line 2
    new-instance p1, Ls1/a/a/a/u$a$a;

    invoke-direct {p1, p0}, Ls1/a/a/a/u$a$a;-><init>(Ls1/a/a/a/u$a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/u$a;->d:Ls1/a/a/a/k0;

    .line 3
    new-instance p1, Ls1/a/a/a/u$a$e;

    invoke-direct {p1, p0}, Ls1/a/a/a/u$a$e;-><init>(Ls1/a/a/a/u$a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/u$a;->e:Ls1/a/a/a/k0;

    .line 4
    new-instance p1, Ls1/a/a/a/u$a$d;

    invoke-direct {p1, p0}, Ls1/a/a/a/u$a$d;-><init>(Ls1/a/a/a/u$a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->Q1(Ls1/z/b/a;)Ls1/a/a/a/l0;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/u$a;->f:Ls1/a/a/a/l0;

    .line 5
    new-instance p1, Ls1/a/a/a/u$a$c;

    invoke-direct {p1, p0}, Ls1/a/a/a/u$a$c;-><init>(Ls1/a/a/a/u$a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->Q1(Ls1/z/b/a;)Ls1/a/a/a/l0;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/u$a;->g:Ls1/a/a/a/l0;

    .line 6
    new-instance p1, Ls1/a/a/a/u$a$b;

    invoke-direct {p1, p0}, Ls1/a/a/a/u$a$b;-><init>(Ls1/a/a/a/u$a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    return-void
.end method

.method public static final a(Ls1/a/a/a/u$a;)Ls1/a/a/a/v0/b/j1/a/e;
    .locals 2

    .line 1
    iget-object p0, p0, Ls1/a/a/a/u$a;->d:Ls1/a/a/a/k0;

    sget-object v0, Ls1/a/a/a/u$a;->i:[Ls1/a/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Ls1/a/a/a/v0/b/j1/a/e;

    return-object p0
.end method
