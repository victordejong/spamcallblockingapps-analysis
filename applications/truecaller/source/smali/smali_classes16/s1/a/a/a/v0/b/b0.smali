.class public final Ls1/a/a/a/v0/b/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/b/b0$a;,
        Ls1/a/a/a/v0/b/b0$b;
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/g<",
            "Ls1/a/a/a/v0/f/b;",
            "Ls1/a/a/a/v0/b/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/a/a/a/v0/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/g<",
            "Ls1/a/a/a/v0/b/b0$a;",
            "Ls1/a/a/a/v0/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/a/a/a/v0/l/m;

.field public final d:Ls1/a/a/a/v0/b/a0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/b0;->c:Ls1/a/a/a/v0/l/m;

    iput-object p2, p0, Ls1/a/a/a/v0/b/b0;->d:Ls1/a/a/a/v0/b/a0;

    .line 2
    new-instance p2, Ls1/a/a/a/v0/b/b0$d;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/b/b0$d;-><init>(Ls1/a/a/a/v0/b/b0;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->i(Ls1/z/b/l;)Ls1/a/a/a/v0/l/g;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/b/b0;->a:Ls1/a/a/a/v0/l/g;

    .line 3
    new-instance p2, Ls1/a/a/a/v0/b/b0$c;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/b/b0$c;-><init>(Ls1/a/a/a/v0/b/b0;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->i(Ls1/z/b/l;)Ls1/a/a/a/v0/l/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/b/b0;->b:Ls1/a/a/a/v0/l/g;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/f/a;Ljava/util/List;)Ls1/a/a/a/v0/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/a;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ls1/a/a/a/v0/b/e;"
        }
    .end annotation

    const-string v0, "classId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParametersCount"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/b0;->b:Ls1/a/a/a/v0/l/g;

    new-instance v1, Ls1/a/a/a/v0/b/b0$a;

    invoke-direct {v1, p1, p2}, Ls1/a/a/a/v0/b/b0$a;-><init>(Ls1/a/a/a/v0/f/a;Ljava/util/List;)V

    check-cast v0, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/e;

    return-object p1
.end method
