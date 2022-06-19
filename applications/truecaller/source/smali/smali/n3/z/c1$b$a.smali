.class public final Ln3/z/c1$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z/c1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;ILn3/z/q;)Ln3/z/c1$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ln3/z/g3<",
            "TT;>;>;I",
            "Ln3/z/q;",
            ")",
            "Ln3/z/c1$b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "pages"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "combinedLoadStates"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln3/z/c1$b;

    sget-object v2, Ln3/z/t0;->c:Ln3/z/t0;

    const/4 v4, -0x1

    move-object v1, v0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    .line 2
    invoke-direct/range {v1 .. v6}, Ln3/z/c1$b;-><init>(Ln3/z/t0;Ljava/util/List;IILn3/z/q;)V

    return-object v0
.end method

.method public final b(Ljava/util/List;ILn3/z/q;)Ln3/z/c1$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ln3/z/g3<",
            "TT;>;>;I",
            "Ln3/z/q;",
            ")",
            "Ln3/z/c1$b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "pages"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "combinedLoadStates"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln3/z/c1$b;

    sget-object v2, Ln3/z/t0;->b:Ln3/z/t0;

    const/4 v5, -0x1

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    .line 2
    invoke-direct/range {v1 .. v6}, Ln3/z/c1$b;-><init>(Ln3/z/t0;Ljava/util/List;IILn3/z/q;)V

    return-object v0
.end method

.method public final c(Ljava/util/List;IILn3/z/q;)Ln3/z/c1$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ln3/z/g3<",
            "TT;>;>;II",
            "Ln3/z/q;",
            ")",
            "Ln3/z/c1$b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "pages"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "combinedLoadStates"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln3/z/c1$b;

    .line 2
    sget-object v2, Ln3/z/t0;->a:Ln3/z/t0;

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v1 .. v6}, Ln3/z/c1$b;-><init>(Ln3/z/t0;Ljava/util/List;IILn3/z/q;)V

    return-object v0
.end method
