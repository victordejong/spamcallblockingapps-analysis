.class public final Ls1/a/a/a/v0/a/p/h;
.super Ls1/a/a/a/v0/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/a/p/h$a;
    }
.end annotation


# static fields
.field public static final synthetic i:[Ls1/a/l;


# instance fields
.field public f:Ls1/a/a/a/v0/b/a0;

.field public g:Z

.field public final h:Ls1/a/a/a/v0/l/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/w;

    const-class v2, Ls1/a/a/a/v0/a/p/h;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const-string v3, "settings"

    const-string v4, "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsSettings;"

    invoke-direct {v1, v2, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ls1/a/a/a/v0/a/p/h;->i:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/a/p/h$a;)V
    .locals 2

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/a/g;-><init>(Ls1/a/a/a/v0/l/m;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ls1/a/a/a/v0/a/p/h;->g:Z

    .line 3
    new-instance v1, Ls1/a/a/a/v0/a/p/h$b;

    invoke-direct {v1, p0, p1}, Ls1/a/a/a/v0/a/p/h$b;-><init>(Ls1/a/a/a/v0/a/p/h;Ls1/a/a/a/v0/l/m;)V

    check-cast p1, Ls1/a/a/a/v0/l/e;

    invoke-virtual {p1, v1}, Ls1/a/a/a/v0/l/e;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/h;->h:Ls1/a/a/a/v0/l/i;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/a/g;->d(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/a/g;->d(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final N()Ls1/a/a/a/v0/a/p/l;
    .locals 3

    iget-object v0, p0, Ls1/a/a/a/v0/a/p/h;->h:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/a/p/h;->i:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/a/p/l;

    return-object v0
.end method

.method public e()Ls1/a/a/a/v0/b/g1/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/a/p/h;->N()Ls1/a/a/a/v0/a/p/l;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/Iterable;
    .locals 6

    .line 1
    invoke-super {p0}, Ls1/a/a/a/v0/a/g;->k()Ljava/lang/Iterable;

    move-result-object v0

    const-string v1, "super.getClassDescriptorFactories()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ls1/a/a/a/v0/a/p/f;

    .line 2
    iget-object v2, p0, Ls1/a/a/a/v0/a/g;->d:Ls1/a/a/a/v0/l/m;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v4, "storageManager"

    .line 3
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v4, p0, Ls1/a/a/a/v0/a/g;->a:Ls1/a/a/a/v0/b/h1/a0;

    if-eqz v4, :cond_0

    const-string v5, "builtInsModule"

    .line 5
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-direct {v1, v2, v4, v3, v5}, Ls1/a/a/a/v0/a/p/f;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ls1/z/b/l;I)V

    invoke-static {v0, v1}, Ls1/u/i;->k0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    .line 6
    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->a(I)V

    throw v3

    :cond_1
    const/4 v0, 0x5

    .line 7
    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->a(I)V

    throw v3
.end method

.method public p()Ls1/a/a/a/v0/b/g1/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/a/p/h;->N()Ls1/a/a/a/v0/a/p/l;

    move-result-object v0

    return-object v0
.end method
