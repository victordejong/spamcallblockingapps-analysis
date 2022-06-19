.class public final Ls1/a/a/a/v0/k/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/k/b/h$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ls1/a/a/a/v0/k/b/h;


# instance fields
.field public final a:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/k/b/h$a;",
            "Ls1/a/a/a/v0/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/a/a/a/v0/k/b/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/k$a;->c:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/k/b/h;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/k/b/j;)V
    .locals 1

    const-string v0, "components"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/h;->b:Ls1/a/a/a/v0/k/b/j;

    .line 2
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 3
    new-instance v0, Ls1/a/a/a/v0/k/b/h$b;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/k/b/h$b;-><init>(Ls1/a/a/a/v0/k/b/h;)V

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/l/m;->c(Ls1/z/b/l;)Ls1/a/a/a/v0/l/h;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/h;->a:Ls1/z/b/l;

    return-void
.end method

.method public static a(Ls1/a/a/a/v0/k/b/h;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/k/b/f;I)Ls1/a/a/a/v0/b/e;
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "classId"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Ls1/a/a/a/v0/k/b/h;->a:Ls1/z/b/l;

    new-instance p3, Ls1/a/a/a/v0/k/b/h$a;

    invoke-direct {p3, p1, p2}, Ls1/a/a/a/v0/k/b/h$a;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/k/b/f;)V

    invoke-interface {p0, p3}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/b/e;

    return-object p0
.end method
