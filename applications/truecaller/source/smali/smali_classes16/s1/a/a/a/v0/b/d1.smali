.class public final Ls1/a/a/a/v0/b/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/b/d1$e;,
        Ls1/a/a/a/v0/b/d1$f;,
        Ls1/a/a/a/v0/b/d1$g;,
        Ls1/a/a/a/v0/b/d1$b;,
        Ls1/a/a/a/v0/b/d1$h;,
        Ls1/a/a/a/v0/b/d1$d;,
        Ls1/a/a/a/v0/b/d1$a;,
        Ls1/a/a/a/v0/b/d1$c;,
        Ls1/a/a/a/v0/b/d1$i;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/b/e1;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ls1/a/a/a/v0/b/d1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/d1;

    invoke-direct {v0}, Ls1/a/a/a/v0/b/d1;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/b/d1;->b:Ls1/a/a/a/v0/b/d1;

    .line 2
    new-instance v0, Ls1/u/i0/a;

    invoke-direct {v0}, Ls1/u/i0/a;-><init>()V

    .line 3
    sget-object v1, Ls1/a/a/a/v0/b/d1$f;->c:Ls1/a/a/a/v0/b/d1$f;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ls1/u/i0/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Ls1/a/a/a/v0/b/d1$e;->c:Ls1/a/a/a/v0/b/d1$e;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ls1/u/i0/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Ls1/a/a/a/v0/b/d1$b;->c:Ls1/a/a/a/v0/b/d1$b;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ls1/u/i0/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Ls1/a/a/a/v0/b/d1$g;->c:Ls1/a/a/a/v0/b/d1$g;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ls1/u/i0/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Ls1/a/a/a/v0/b/d1$h;->c:Ls1/a/a/a/v0/b/d1$h;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ls1/u/i0/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "builder"

    .line 8
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ls1/u/i0/a;->g()V

    .line 10
    iput-boolean v2, v0, Ls1/u/i0/a;->f:Z

    .line 11
    sput-object v0, Ls1/a/a/a/v0/b/d1;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/b/e1;)Z
    .locals 1

    const-string v0, "visibility"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/d1$e;->c:Ls1/a/a/a/v0/b/d1$e;

    if-eq p1, v0, :cond_1

    sget-object v0, Ls1/a/a/a/v0/b/d1$f;->c:Ls1/a/a/a/v0/b/d1$f;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
