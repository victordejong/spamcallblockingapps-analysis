.class public final Ls1/a/a/a/v0/a/o/b;
.super Ls1/a/a/a/v0/b/h1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/a/o/b$b;
    }
.end annotation


# static fields
.field public static final l:Ls1/a/a/a/v0/f/a;

.field public static final m:Ls1/a/a/a/v0/f/a;


# instance fields
.field public final e:Ls1/a/a/a/v0/a/o/b$b;

.field public final f:Ls1/a/a/a/v0/a/o/d;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ls1/a/a/a/v0/l/m;

.field public final i:Ls1/a/a/a/v0/b/c0;

.field public final j:Ls1/a/a/a/v0/a/o/c;

.field public final k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/f/a;

    sget-object v1, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    const-string v2, "Function"

    invoke-static {v2}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)V

    sput-object v0, Ls1/a/a/a/v0/a/o/b;->l:Ls1/a/a/a/v0/f/a;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/f/a;

    sget-object v1, Ls1/a/a/a/v0/a/k;->h:Ls1/a/a/a/v0/f/b;

    const-string v2, "KFunction"

    invoke-static {v2}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)V

    sput-object v0, Ls1/a/a/a/v0/a/o/b;->m:Ls1/a/a/a/v0/f/a;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/a/o/c;I)V
    .locals 4

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionKind"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3, p4}, Ls1/a/a/a/v0/a/o/c;->a(I)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ls1/a/a/a/v0/b/h1/b;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/f/e;)V

    iput-object p1, p0, Ls1/a/a/a/v0/a/o/b;->h:Ls1/a/a/a/v0/l/m;

    iput-object p2, p0, Ls1/a/a/a/v0/a/o/b;->i:Ls1/a/a/a/v0/b/c0;

    iput-object p3, p0, Ls1/a/a/a/v0/a/o/b;->j:Ls1/a/a/a/v0/a/o/c;

    iput p4, p0, Ls1/a/a/a/v0/a/o/b;->k:I

    .line 2
    new-instance p2, Ls1/a/a/a/v0/a/o/b$b;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/a/o/b$b;-><init>(Ls1/a/a/a/v0/a/o/b;)V

    iput-object p2, p0, Ls1/a/a/a/v0/a/o/b;->e:Ls1/a/a/a/v0/a/o/b$b;

    .line 3
    new-instance p2, Ls1/a/a/a/v0/a/o/d;

    invoke-direct {p2, p1, p0}, Ls1/a/a/a/v0/a/o/d;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/a/o/b;)V

    iput-object p2, p0, Ls1/a/a/a/v0/a/o/b;->f:Ls1/a/a/a/v0/a/o/d;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance p2, Ls1/a/a/a/v0/a/o/b$a;

    invoke-direct {p2, p0, p1}, Ls1/a/a/a/v0/a/o/b$a;-><init>(Ls1/a/a/a/v0/a/o/b;Ljava/util/ArrayList;)V

    .line 6
    new-instance p3, Ls1/d0/i;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p4}, Ls1/d0/i;-><init>(II)V

    .line 7
    new-instance p4, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p3, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-virtual {p3}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    move-object v0, p3

    check-cast v0, Ls1/d0/h;

    .line 9
    iget-boolean v0, v0, Ls1/d0/h;->b:Z

    if-eqz v0, :cond_0

    .line 10
    move-object v0, p3

    check-cast v0, Ls1/u/z;

    invoke-virtual {v0}, Ls1/u/z;->a()I

    move-result v0

    .line 11
    sget-object v1, Ls1/a/a/a/v0/m/j1;->d:Ls1/a/a/a/v0/m/j1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ls1/a/a/a/v0/a/o/b$a;->a(Ls1/a/a/a/v0/m/j1;Ljava/lang/String;)V

    .line 12
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    sget-object p3, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    const-string p4, "R"

    invoke-virtual {p2, p3, p4}, Ls1/a/a/a/v0/a/o/b$a;->a(Ls1/a/a/a/v0/m/j1;Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/a/o/b;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic A0()Ls1/a/a/a/v0/b/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/o/b;->i:Ls1/a/a/a/v0/b/c0;

    return-object v0
.end method

.method public b0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Ls1/a/a/a/v0/a/o/b;->f:Ls1/a/a/a/v0/a/o/d;

    return-object p1
.end method

.method public bridge synthetic c0()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public f()Ls1/a/a/a/v0/b/r;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/q;->e:Ls1/a/a/a/v0/b/r;

    const-string v1, "DescriptorVisibilities.PUBLIC"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    return-object v0
.end method

.method public getKind()Ls1/a/a/a/v0/b/f;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f;->b:Ls1/a/a/a/v0/b/f;

    return-object v0
.end method

.method public getSource()Ls1/a/a/a/v0/b/r0;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const-string v1, "SourceElement.NO_SOURCE"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Ls1/a/a/a/v0/b/y;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/y;->d:Ls1/a/a/a/v0/b/y;

    return-object v0
.end method

.method public o()Ls1/a/a/a/v0/m/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/o/b;->e:Ls1/a/a/a/v0/a/o/b$b;

    return-object v0
.end method

.method public bridge synthetic p()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public p0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/b;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/o/b;->g:Ljava/util/List;

    return-object v0
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic z()Ls1/a/a/a/v0/b/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public z0()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/j/y/i$b;->b:Ls1/a/a/a/v0/j/y/i$b;

    return-object v0
.end method
