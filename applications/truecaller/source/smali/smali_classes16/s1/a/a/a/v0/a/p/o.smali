.class public final Ls1/a/a/a/v0/a/p/o;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/e;

.field public final synthetic c:Ls1/a/a/a/v0/b/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/e;Ls1/a/a/a/v0/b/e;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/o;->b:Ls1/a/a/a/v0/d/a/d0/n/e;

    iput-object p2, p0, Ls1/a/a/a/v0/a/p/o;->c:Ls1/a/a/a/v0/b/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/a/p/o;->b:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 2
    sget-object v2, Ls1/a/a/a/v0/d/a/b0/g;->a:Ls1/a/a/a/v0/d/a/b0/g;

    move-object v9, v2

    const-string v3, "JavaResolverCache.EMPTY"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v15, v0, Ls1/a/a/a/v0/a/p/o;->c:Ls1/a/a/a/v0/b/e;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "javaResolverCache"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v14, Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 6
    iget-object v13, v1, Ls1/a/a/a/v0/d/a/d0/n/e;->h:Ls1/a/a/a/v0/d/a/d0/h;

    .line 7
    iget-object v12, v13, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 8
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v11, Ls1/a/a/a/v0/d/a/d0/c;

    move-object v2, v11

    .line 10
    iget-object v3, v12, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    iget-object v4, v12, Ls1/a/a/a/v0/d/a/d0/c;->b:Ls1/a/a/a/v0/d/a/p;

    iget-object v5, v12, Ls1/a/a/a/v0/d/a/d0/c;->c:Ls1/a/a/a/v0/d/b/k;

    iget-object v6, v12, Ls1/a/a/a/v0/d/a/d0/c;->d:Ls1/a/a/a/v0/d/b/d;

    .line 11
    iget-object v7, v12, Ls1/a/a/a/v0/d/a/d0/c;->e:Ls1/a/a/a/v0/d/a/b0/j;

    iget-object v8, v12, Ls1/a/a/a/v0/d/a/d0/c;->f:Ls1/a/a/a/v0/k/b/p;

    .line 12
    iget-object v10, v12, Ls1/a/a/a/v0/d/a/d0/c;->h:Ls1/a/a/a/v0/d/a/b0/f;

    iget-object v0, v12, Ls1/a/a/a/v0/d/a/d0/c;->i:Ls1/a/a/a/v0/j/x/a;

    move-object/from16 v24, v1

    move-object v1, v11

    move-object v11, v0

    iget-object v0, v12, Ls1/a/a/a/v0/d/a/d0/c;->j:Ls1/a/a/a/v0/d/a/e0/b;

    move-object/from16 v25, v1

    move-object v1, v12

    move-object v12, v0

    .line 13
    iget-object v0, v1, Ls1/a/a/a/v0/d/a/d0/c;->k:Ls1/a/a/a/v0/d/a/d0/j;

    move-object/from16 v26, v13

    move-object v13, v0

    iget-object v0, v1, Ls1/a/a/a/v0/d/a/d0/c;->l:Ls1/a/a/a/v0/d/b/q;

    move-object/from16 v27, v14

    move-object v14, v0

    iget-object v0, v1, Ls1/a/a/a/v0/d/a/d0/c;->m:Ls1/a/a/a/v0/b/u0;

    move-object/from16 v28, v15

    move-object v15, v0

    iget-object v0, v1, Ls1/a/a/a/v0/d/a/d0/c;->n:Ls1/a/a/a/v0/c/a/c;

    move-object/from16 v16, v0

    iget-object v0, v1, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    move-object/from16 v17, v0

    iget-object v0, v1, Ls1/a/a/a/v0/d/a/d0/c;->p:Ls1/a/a/a/v0/a/j;

    move-object/from16 v18, v0

    .line 14
    iget-object v0, v1, Ls1/a/a/a/v0/d/a/d0/c;->q:Ls1/a/a/a/v0/d/a/a;

    move-object/from16 v19, v0

    iget-object v0, v1, Ls1/a/a/a/v0/d/a/d0/c;->r:Ls1/a/a/a/v0/d/a/g0/l;

    move-object/from16 v20, v0

    iget-object v0, v1, Ls1/a/a/a/v0/d/a/d0/c;->s:Ls1/a/a/a/v0/d/a/q;

    move-object/from16 v21, v0

    iget-object v0, v1, Ls1/a/a/a/v0/d/a/d0/c;->t:Ls1/a/a/a/v0/d/a/d0/d;

    move-object/from16 v22, v0

    .line 15
    iget-object v0, v1, Ls1/a/a/a/v0/d/a/d0/c;->u:Ls1/a/a/a/v0/m/l1/k;

    move-object/from16 v23, v0

    .line 16
    invoke-direct/range {v2 .. v23}, Ls1/a/a/a/v0/d/a/d0/c;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/d/a/p;Ls1/a/a/a/v0/d/b/k;Ls1/a/a/a/v0/d/b/d;Ls1/a/a/a/v0/d/a/b0/j;Ls1/a/a/a/v0/k/b/p;Ls1/a/a/a/v0/d/a/b0/g;Ls1/a/a/a/v0/d/a/b0/f;Ls1/a/a/a/v0/j/x/a;Ls1/a/a/a/v0/d/a/e0/b;Ls1/a/a/a/v0/d/a/d0/j;Ls1/a/a/a/v0/d/b/q;Ls1/a/a/a/v0/b/u0;Ls1/a/a/a/v0/c/a/c;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/a/j;Ls1/a/a/a/v0/d/a/a;Ls1/a/a/a/v0/d/a/g0/l;Ls1/a/a/a/v0/d/a/q;Ls1/a/a/a/v0/d/a/d0/d;Ls1/a/a/a/v0/m/l1/k;)V

    const-string v0, "$this$replaceComponents"

    move-object/from16 v1, v26

    .line 17
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "components"

    move-object/from16 v2, v25

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/h;

    .line 19
    iget-object v3, v1, Ls1/a/a/a/v0/d/a/d0/h;->d:Ls1/a/a/a/v0/d/a/d0/m;

    .line 20
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/h;->e:Ls1/g;

    .line 21
    invoke-direct {v0, v2, v3, v1}, Ls1/a/a/a/v0/d/a/d0/h;-><init>(Ls1/a/a/a/v0/d/a/d0/c;Ls1/a/a/a/v0/d/a/d0/m;Ls1/g;)V

    .line 22
    invoke-virtual/range {v24 .. v24}, Ls1/a/a/a/v0/b/h1/j;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    const-string v2, "containingDeclaration"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v24

    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/n/e;->u:Ls1/a/a/a/v0/d/a/f0/g;

    move-object/from16 v4, v27

    move-object/from16 v3, v28

    .line 23
    invoke-direct {v4, v0, v1, v2, v3}, Ls1/a/a/a/v0/d/a/d0/n/e;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/d/a/f0/g;Ls1/a/a/a/v0/b/e;)V

    return-object v4
.end method
