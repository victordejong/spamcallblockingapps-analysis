.class public final Ls1/a/a/a/v0/d/a/d0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/d0/m;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/d/a/f0/w;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/a/a/a/v0/l/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/h<",
            "Ls1/a/a/a/v0/d/a/f0/w;",
            "Ls1/a/a/a/v0/d/a/d0/n/t;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/a/a/a/v0/d/a/d0/h;

.field public final d:Ls1/a/a/a/v0/b/k;

.field public final e:I


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/d/a/f0/x;I)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterOwner"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/i;->c:Ls1/a/a/a/v0/d/a/d0/h;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/i;->d:Ls1/a/a/a/v0/b/k;

    iput p4, p0, Ls1/a/a/a/v0/d/a/d0/i;->e:I

    .line 2
    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/x;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    const-string p2, "$this$mapToIndex"

    .line 3
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/i;->a:Ljava/util/Map;

    .line 8
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/i;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 9
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 10
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 11
    new-instance p2, Ls1/a/a/a/v0/d/a/d0/i$a;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/d/a/d0/i$a;-><init>(Ls1/a/a/a/v0/d/a/d0/i;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->c(Ls1/z/b/l;)Ls1/a/a/a/v0/l/h;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/i;->b:Ls1/a/a/a/v0/l/h;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/d/a/f0/w;)Ls1/a/a/a/v0/b/w0;
    .locals 1

    const-string v0, "javaTypeParameter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/i;->b:Ls1/a/a/a/v0/l/h;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/d/a/d0/n/t;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/i;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->d:Ls1/a/a/a/v0/d/a/d0/m;

    .line 3
    invoke-interface {v0, p1}, Ls1/a/a/a/v0/d/a/d0/m;->a(Ls1/a/a/a/v0/d/a/f0/w;)Ls1/a/a/a/v0/b/w0;

    move-result-object v0

    :goto_0
    return-object v0
.end method
