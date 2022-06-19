.class public final Ls1/a/a/a/v0/d/a/d0/n/i;
.super Ls1/a/a/a/v0/b/h1/c0;
.source "SourceFile"


# static fields
.field public static final synthetic l:[Ls1/a/l;


# instance fields
.field public final f:Ls1/a/a/a/v0/d/a/d0/h;

.field public final g:Ls1/a/a/a/v0/l/i;

.field public final h:Ls1/a/a/a/v0/d/a/d0/n/c;

.field public final i:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/f/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final j:Ls1/a/a/a/v0/b/f1/h;

.field public final k:Ls1/a/a/a/v0/d/a/f0/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Ls1/a/a/a/v0/d/a/d0/n/i;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/l;

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "binaryClasses"

    const-string v5, "getBinaryClasses$descriptors_jvm()Ljava/util/Map;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    const-string v3, "partToFacade"

    const-string v4, "getPartToFacade()Ljava/util/HashMap;"

    invoke-direct {v2, v0, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Ls1/a/a/a/v0/d/a/d0/n/i;->l:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/t;)V
    .locals 3

    const-string v0, "outerContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jPackage"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 3
    invoke-interface {p2}, Ls1/a/a/a/v0/d/a/f0/t;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ls1/a/a/a/v0/b/h1/c0;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/b;)V

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/i;->k:Ls1/a/a/a/v0/d/a/f0/t;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 4
    invoke-static {p1, p0, v0, v1, v2}, Le/q/f/a/d/a;->A(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/g;Ls1/a/a/a/v0/d/a/f0/x;II)Ls1/a/a/a/v0/d/a/d0/h;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/i;->f:Ls1/a/a/a/v0/d/a/d0/h;

    .line 5
    iget-object v0, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 6
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 7
    new-instance v1, Ls1/a/a/a/v0/d/a/d0/n/i$a;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/d/a/d0/n/i$a;-><init>(Ls1/a/a/a/v0/d/a/d0/n/i;)V

    invoke-interface {v0, v1}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/i;->g:Ls1/a/a/a/v0/l/i;

    .line 8
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/c;

    invoke-direct {v0, p1, p2, p0}, Ls1/a/a/a/v0/d/a/d0/n/c;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/t;Ls1/a/a/a/v0/d/a/d0/n/i;)V

    iput-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/i;->h:Ls1/a/a/a/v0/d/a/d0/n/c;

    .line 9
    iget-object v0, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 10
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 11
    new-instance v1, Ls1/a/a/a/v0/d/a/d0/n/i$c;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/d/a/d0/n/i$c;-><init>(Ls1/a/a/a/v0/d/a/d0/n/i;)V

    .line 12
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    .line 13
    invoke-interface {v0, v1, v2}, Ls1/a/a/a/v0/l/m;->a(Ls1/z/b/a;Ljava/lang/Object;)Ls1/a/a/a/v0/l/i;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/i;->i:Ls1/a/a/a/v0/l/i;

    .line 14
    iget-object v0, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 15
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->q:Ls1/a/a/a/v0/d/a/a;

    .line 16
    iget-boolean v0, v0, Ls1/a/a/a/v0/d/a/a;->b:Z

    if-eqz v0, :cond_0

    .line 17
    sget-object p2, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object p2, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1, p2}, Le/q/f/a/d/a;->B2(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/d;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object p2

    .line 21
    :goto_0
    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/i;->j:Ls1/a/a/a/v0/b/f1/h;

    .line 22
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 23
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 24
    new-instance p2, Ls1/a/a/a/v0/d/a/d0/n/i$b;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/d/a/d0/n/i$b;-><init>(Ls1/a/a/a/v0/d/a/d0/n/i;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    return-void
.end method


# virtual methods
.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/i;->j:Ls1/a/a/a/v0/b/f1/h;

    return-object v0
.end method

.method public getSource()Ls1/a/a/a/v0/b/r0;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/b/m;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/d/b/m;-><init>(Ls1/a/a/a/v0/d/a/d0/n/i;)V

    return-object v0
.end method

.method public s()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/i;->h:Ls1/a/a/a/v0/d/a/d0/n/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Lazy Java package fragment: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/c0;->e:Ls1/a/a/a/v0/f/b;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w0()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ls1/a/a/a/v0/d/b/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/i;->g:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/d/a/d0/n/i;->l:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
