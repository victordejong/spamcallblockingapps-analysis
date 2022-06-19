.class public final Lt3/a/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Random;

.field public b:Lt3/a/a/e/d;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt3/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lt3/a/a/f/a;

.field public final e:Lt3/a/a/f/b;

.field public final f:[Lt3/a/a/e/c;

.field public final g:[Lt3/a/a/e/b;

.field public final h:[I

.field public final i:Lt3/a/a/e/a;

.field public final j:Lt3/a/a/c/b;


# direct methods
.method public constructor <init>(Lt3/a/a/f/a;Lt3/a/a/f/b;[Lt3/a/a/e/c;[Lt3/a/a/e/b;[ILt3/a/a/e/a;Lt3/a/a/c/b;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "velocity"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizes"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p6, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p7, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/a/a/c/c;->d:Lt3/a/a/f/a;

    iput-object p2, p0, Lt3/a/a/c/c;->e:Lt3/a/a/f/b;

    iput-object p3, p0, Lt3/a/a/c/c;->f:[Lt3/a/a/e/c;

    iput-object p4, p0, Lt3/a/a/c/c;->g:[Lt3/a/a/e/b;

    iput-object p5, p0, Lt3/a/a/c/c;->h:[I

    iput-object p6, p0, Lt3/a/a/c/c;->i:Lt3/a/a/e/a;

    iput-object p7, p0, Lt3/a/a/c/c;->j:Lt3/a/a/c/b;

    .line 2
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lt3/a/a/c/c;->a:Ljava/util/Random;

    .line 3
    new-instance p1, Lt3/a/a/e/d;

    const/4 p2, 0x0

    const p3, 0x3c23d70a    # 0.01f

    invoke-direct {p1, p2, p3}, Lt3/a/a/e/d;-><init>(FF)V

    iput-object p1, p0, Lt3/a/a/c/c;->b:Lt3/a/a/e/d;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lt3/a/a/c/c;->c:Ljava/util/List;

    .line 5
    new-instance p1, Lt3/a/a/c/c$a;

    invoke-direct {p1, p0}, Lt3/a/a/c/c$a;-><init>(Lt3/a/a/c/c;)V

    .line 6
    iput-object p1, p7, Lt3/a/a/c/b;->a:Ls1/z/b/a;

    return-void
.end method
