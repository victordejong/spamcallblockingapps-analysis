.class public final Ls1/a/a/a/v0/d/a/c0/e;
.super Ls1/a/a/a/v0/d/a/c0/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/k0;)V
    .locals 13

    const-string v0, "ownerDescriptor"

    move-object v2, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getterMethod"

    move-object v1, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overriddenProperty"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 4
    invoke-interface {p2}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v4

    .line 5
    invoke-interface {p2}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v5

    if-eqz p3, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 6
    :goto_0
    invoke-interface/range {p4 .. p4}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v7

    .line 7
    invoke-interface {p2}, Ls1/a/a/a/v0/b/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object v8

    const/4 v9, 0x0

    .line 8
    sget-object v10, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    .line 9
    invoke-direct/range {v1 .. v12}, Ls1/a/a/a/v0/d/a/c0/g;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;ZLs1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/b$a;ZLs1/k;)V

    return-void
.end method
