.class public final Li/c/z/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/b/a$j;,
        Li/c/z/b/a$i;,
        Li/c/z/b/a$c;,
        Li/c/z/b/a$b;,
        Li/c/z/b/a$d;,
        Li/c/z/b/a$f;,
        Li/c/z/b/a$a;,
        Li/c/z/b/a$h;,
        Li/c/z/b/a$e;,
        Li/c/z/b/a$g;
    }
.end annotation


# static fields
.field static final a:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Runnable;

.field public static final c:Li/c/y/a;

.field static final d:Li/c/y/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Li/c/y/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/c<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Li/c/y/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/z/b/a$f;

    invoke-direct {v0}, Li/c/z/b/a$f;-><init>()V

    sput-object v0, Li/c/z/b/a;->a:Li/c/y/d;

    .line 2
    new-instance v0, Li/c/z/b/a$d;

    invoke-direct {v0}, Li/c/z/b/a$d;-><init>()V

    sput-object v0, Li/c/z/b/a;->b:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Li/c/z/b/a$b;

    invoke-direct {v0}, Li/c/z/b/a$b;-><init>()V

    sput-object v0, Li/c/z/b/a;->c:Li/c/y/a;

    .line 4
    new-instance v0, Li/c/z/b/a$c;

    invoke-direct {v0}, Li/c/z/b/a$c;-><init>()V

    sput-object v0, Li/c/z/b/a;->d:Li/c/y/c;

    .line 5
    new-instance v0, Li/c/z/b/a$i;

    invoke-direct {v0}, Li/c/z/b/a$i;-><init>()V

    sput-object v0, Li/c/z/b/a;->e:Li/c/y/c;

    .line 6
    new-instance v0, Li/c/z/b/a$j;

    invoke-direct {v0}, Li/c/z/b/a$j;-><init>()V

    sput-object v0, Li/c/z/b/a;->f:Li/c/y/e;

    return-void
.end method

.method public static a()Li/c/y/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/y/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/z/b/a;->f:Li/c/y/e;

    return-object v0
.end method

.method public static b()Li/c/y/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/y/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/z/b/a;->d:Li/c/y/c;

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Li/c/y/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Li/c/y/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/b/a$e;

    invoke-direct {v0, p0}, Li/c/z/b/a$e;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d()Li/c/y/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/y/d<",
            "TT;TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/z/b/a;->a:Li/c/y/d;

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Li/c/y/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Li/c/y/d<",
            "TT;TU;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/b/a$g;

    invoke-direct {v0, p0}, Li/c/z/b/a$g;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f(Ljava/util/Comparator;)Li/c/y/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Li/c/y/d<",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/b/a$h;

    invoke-direct {v0, p0}, Li/c/z/b/a$h;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static g(Li/c/y/b;)Li/c/y/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/b<",
            "-TT1;-TT2;+TR;>;)",
            "Li/c/y/d<",
            "[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    const-string v0, "f is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/b/a$a;

    invoke-direct {v0, p0}, Li/c/z/b/a$a;-><init>(Li/c/y/b;)V

    return-object v0
.end method
