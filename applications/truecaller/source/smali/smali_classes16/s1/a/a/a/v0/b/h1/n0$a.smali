.class public final Ls1/a/a/a/v0/b/h1/n0$a;
.super Ls1/a/a/a/v0/b/h1/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/b/h1/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final l:Ls1/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/b1;ILs1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/e0;ZZZLs1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/r0;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/a;",
            "Ls1/a/a/a/v0/b/b1;",
            "I",
            "Ls1/a/a/a/v0/b/f1/h;",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/m/e0;",
            "ZZZ",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/a/a/a/v0/b/r0;",
            "Ls1/z/b/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/c1;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "containingDeclaration"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outType"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destructuringVariables"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p11}, Ls1/a/a/a/v0/b/h1/n0;-><init>(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/b1;ILs1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/e0;ZZZLs1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/r0;)V

    .line 2
    invoke-static {p12}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/n0$a;->l:Ls1/g;

    return-void
.end method


# virtual methods
.method public K(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/f/e;I)Ls1/a/a/a/v0/b/b1;
    .locals 15

    move-object v0, p0

    const-string v1, "newOwner"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newName"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ls1/a/a/a/v0/b/h1/n0$a;

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/f1/b;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v6

    const-string v2, "annotations"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/o0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v8

    const-string v2, "type"

    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n0;->U()Z

    move-result v9

    .line 3
    iget-boolean v10, v0, Ls1/a/a/a/v0/b/h1/n0;->i:Z

    .line 4
    iget-boolean v11, v0, Ls1/a/a/a/v0/b/h1/n0;->j:Z

    .line 5
    iget-object v12, v0, Ls1/a/a/a/v0/b/h1/n0;->k:Ls1/a/a/a/v0/m/e0;

    .line 6
    sget-object v13, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const-string v2, "SourceElement.NO_SOURCE"

    invoke-static {v13, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v14, Ls1/a/a/a/v0/b/h1/n0$a$a;

    invoke-direct {v14, p0}, Ls1/a/a/a/v0/b/h1/n0$a$a;-><init>(Ls1/a/a/a/v0/b/h1/n0$a;)V

    const/4 v4, 0x0

    move-object v2, v1

    move/from16 v5, p3

    .line 8
    invoke-direct/range {v2 .. v14}, Ls1/a/a/a/v0/b/h1/n0$a;-><init>(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/b1;ILs1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/e0;ZZZLs1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/r0;Ls1/z/b/a;)V

    return-object v1
.end method
