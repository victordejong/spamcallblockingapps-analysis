.class public final Ls1/a/a/a/v0/k/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/k/b/g;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/a;",
            "Ls1/a/a/a/v0/e/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/a/a/a/v0/e/z/c;

.field public final c:Ls1/a/a/a/v0/e/z/a;

.field public final d:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/f/a;",
            "Ls1/a/a/a/v0/b/r0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/e/m;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/a;Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/e/m;",
            "Ls1/a/a/a/v0/e/z/c;",
            "Ls1/a/a/a/v0/e/z/a;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/a;",
            "+",
            "Ls1/a/a/a/v0/b/r0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classSource"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/x;->b:Ls1/a/a/a/v0/e/z/c;

    iput-object p3, p0, Ls1/a/a/a/v0/k/b/x;->c:Ls1/a/a/a/v0/e/z/a;

    iput-object p4, p0, Ls1/a/a/a/v0/k/b/x;->d:Ls1/z/b/l;

    .line 2
    iget-object p1, p1, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    const-string p2, "proto.class_List"

    .line 3
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xa

    .line 4
    invoke-static {p1, p2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Le/q/f/a/d/a;->Y1(I)I

    move-result p2

    const/16 p3, 0x10

    if-ge p2, p3, :cond_0

    move p2, p3

    .line 5
    :cond_0
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 7
    move-object p4, p2

    check-cast p4, Ls1/a/a/a/v0/e/c;

    .line 8
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/x;->b:Ls1/a/a/a/v0/e/z/c;

    const-string v1, "klass"

    invoke-static {p4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget p4, p4, Ls1/a/a/a/v0/e/c;->e:I

    .line 10
    invoke-static {v0, p4}, Ls1/a/a/a/v0/f/d;->k1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/a;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    iput-object p3, p0, Ls1/a/a/a/v0/k/b/x;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/k/b/f;
    .locals 5

    const-string v0, "classId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/x;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/e/c;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ls1/a/a/a/v0/k/b/f;

    iget-object v2, p0, Ls1/a/a/a/v0/k/b/x;->b:Ls1/a/a/a/v0/e/z/c;

    iget-object v3, p0, Ls1/a/a/a/v0/k/b/x;->c:Ls1/a/a/a/v0/e/z/a;

    iget-object v4, p0, Ls1/a/a/a/v0/k/b/x;->d:Ls1/z/b/l;

    invoke-interface {v4, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/r0;

    invoke-direct {v1, v2, v0, v3, p1}, Ls1/a/a/a/v0/k/b/f;-><init>(Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/c;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/b/r0;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
