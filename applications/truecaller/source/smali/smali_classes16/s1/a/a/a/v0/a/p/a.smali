.class public final Ls1/a/a/a/v0/a/p/a;
.super Ls1/a/a/a/v0/j/y/e;
.source "SourceFile"


# static fields
.field public static final e:Ls1/a/a/a/v0/f/e;

.field public static final f:Ls1/a/a/a/v0/a/p/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "clone"

    .line 1
    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    const-string v1, "Name.identifier(\"clone\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/a/p/a;->e:Ls1/a/a/a/v0/f/e;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/e;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingClass"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Ls1/a/a/a/v0/j/y/e;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/e;)V

    return-void
.end method


# virtual methods
.method public h()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/e;->c:Ls1/a/a/a/v0/b/e;

    .line 2
    sget-object v1, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 5
    sget-object v2, Ls1/a/a/a/v0/a/p/a;->e:Ls1/a/a/a/v0/f/e;

    sget-object v3, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    sget-object v4, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    invoke-static {v0, v1, v2, v3, v4}, Ls1/a/a/a/v0/b/h1/i0;->X0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/i0;

    move-result-object v0

    const/4 v6, 0x0

    .line 6
    iget-object v1, p0, Ls1/a/a/a/v0/j/y/e;->c:Ls1/a/a/a/v0/b/e;

    .line 7
    invoke-interface {v1}, Ls1/a/a/a/v0/b/e;->a0()Ls1/a/a/a/v0/b/n0;

    move-result-object v7

    sget-object v9, Ls1/u/s;->a:Ls1/u/s;

    .line 8
    iget-object v1, p0, Ls1/a/a/a/v0/j/y/e;->c:Ls1/a/a/a/v0/b/e;

    .line 9
    invoke-static {v1}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/a/g;->f()Ls1/a/a/a/v0/m/l0;

    move-result-object v10

    .line 10
    sget-object v11, Ls1/a/a/a/v0/b/y;->c:Ls1/a/a/a/v0/b/y;

    sget-object v12, Ls1/a/a/a/v0/b/q;->c:Ls1/a/a/a/v0/b/r;

    move-object v5, v0

    move-object v8, v9

    .line 11
    invoke-virtual/range {v5 .. v12}, Ls1/a/a/a/v0/b/h1/i0;->Z0(Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;Ljava/util/List;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;)Ls1/a/a/a/v0/b/h1/i0;

    .line 12
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
