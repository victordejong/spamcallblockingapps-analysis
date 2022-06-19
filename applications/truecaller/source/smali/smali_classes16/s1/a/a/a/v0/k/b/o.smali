.class public abstract Ls1/a/a/a/v0/k/b/o;
.super Ls1/a/a/a/v0/k/b/n;
.source "SourceFile"


# instance fields
.field public final g:Ls1/a/a/a/v0/e/z/d;

.field public final h:Ls1/a/a/a/v0/k/b/x;

.field public i:Ls1/a/a/a/v0/e/m;

.field public j:Ls1/a/a/a/v0/j/y/i;

.field public final k:Ls1/a/a/a/v0/e/z/a;

.field public final l:Ls1/a/a/a/v0/k/b/g0/f;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/e/m;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/k/b/g0/f;)V
    .locals 0

    const-string p6, "fqName"

    invoke-static {p1, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "storageManager"

    invoke-static {p2, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "module"

    invoke-static {p3, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "proto"

    invoke-static {p4, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "metadataVersion"

    invoke-static {p5, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ls1/a/a/a/v0/k/b/n;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;)V

    iput-object p5, p0, Ls1/a/a/a/v0/k/b/o;->k:Ls1/a/a/a/v0/e/z/a;

    const/4 p1, 0x0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/o;->l:Ls1/a/a/a/v0/k/b/g0/f;

    .line 2
    new-instance p1, Ls1/a/a/a/v0/e/z/d;

    .line 3
    iget-object p2, p4, Ls1/a/a/a/v0/e/m;->d:Ls1/a/a/a/v0/e/p;

    const-string p3, "proto.strings"

    .line 4
    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p3, p4, Ls1/a/a/a/v0/e/m;->e:Ls1/a/a/a/v0/e/o;

    const-string p6, "proto.qualifiedNames"

    .line 6
    invoke-static {p3, p6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Ls1/a/a/a/v0/e/z/d;-><init>(Ls1/a/a/a/v0/e/p;Ls1/a/a/a/v0/e/o;)V

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/o;->g:Ls1/a/a/a/v0/e/z/d;

    .line 7
    new-instance p2, Ls1/a/a/a/v0/k/b/x;

    new-instance p3, Ls1/a/a/a/v0/k/b/o$a;

    invoke-direct {p3, p0}, Ls1/a/a/a/v0/k/b/o$a;-><init>(Ls1/a/a/a/v0/k/b/o;)V

    invoke-direct {p2, p4, p1, p5, p3}, Ls1/a/a/a/v0/k/b/x;-><init>(Ls1/a/a/a/v0/e/m;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/a;Ls1/z/b/l;)V

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/o;->h:Ls1/a/a/a/v0/k/b/x;

    .line 8
    iput-object p4, p0, Ls1/a/a/a/v0/k/b/o;->i:Ls1/a/a/a/v0/e/m;

    return-void
.end method


# virtual methods
.method public N0(Ls1/a/a/a/v0/k/b/j;)V
    .locals 10

    const-string v0, "components"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/o;->i:Ls1/a/a/a/v0/e/m;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Ls1/a/a/a/v0/k/b/o;->i:Ls1/a/a/a/v0/e/m;

    .line 3
    new-instance v1, Ls1/a/a/a/v0/k/b/g0/i;

    .line 4
    iget-object v4, v0, Ls1/a/a/a/v0/e/m;->f:Ls1/a/a/a/v0/e/l;

    const-string v0, "proto.`package`"

    .line 5
    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Ls1/a/a/a/v0/k/b/o;->g:Ls1/a/a/a/v0/e/z/d;

    iget-object v6, p0, Ls1/a/a/a/v0/k/b/o;->k:Ls1/a/a/a/v0/e/z/a;

    iget-object v7, p0, Ls1/a/a/a/v0/k/b/o;->l:Ls1/a/a/a/v0/k/b/g0/f;

    .line 6
    new-instance v9, Ls1/a/a/a/v0/k/b/o$b;

    invoke-direct {v9, p0}, Ls1/a/a/a/v0/k/b/o$b;-><init>(Ls1/a/a/a/v0/k/b/o;)V

    move-object v2, v1

    move-object v3, p0

    move-object v8, p1

    .line 7
    invoke-direct/range {v2 .. v9}, Ls1/a/a/a/v0/k/b/g0/i;-><init>(Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/e/l;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/k/b/g0/f;Ls1/a/a/a/v0/k/b/j;Ls1/z/b/a;)V

    iput-object v1, p0, Ls1/a/a/a/v0/k/b/o;->j:Ls1/a/a/a/v0/j/y/i;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Repeated call to DeserializedPackageFragmentImpl::initialize"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/o;->j:Ls1/a/a/a/v0/j/y/i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "_memberScope"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public w0()Ls1/a/a/a/v0/k/b/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/o;->h:Ls1/a/a/a/v0/k/b/x;

    return-object v0
.end method
