.class final Lg/f/a/b/i/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lg/f/a/b/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lg/f/a/b/i/m;

.field private final b:Ljava/lang/String;

.field private final c:Lg/f/a/b/b;

.field private final d:Lg/f/a/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/f/a/b/e<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field private final e:Lg/f/a/b/i/q;


# direct methods
.method constructor <init>(Lg/f/a/b/i/m;Ljava/lang/String;Lg/f/a/b/b;Lg/f/a/b/e;Lg/f/a/b/i/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/a/b/i/m;",
            "Ljava/lang/String;",
            "Lg/f/a/b/b;",
            "Lg/f/a/b/e<",
            "TT;[B>;",
            "Lg/f/a/b/i/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/f/a/b/i/p;->a:Lg/f/a/b/i/m;

    .line 3
    iput-object p2, p0, Lg/f/a/b/i/p;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lg/f/a/b/i/p;->c:Lg/f/a/b/b;

    .line 5
    iput-object p4, p0, Lg/f/a/b/i/p;->d:Lg/f/a/b/e;

    .line 6
    iput-object p5, p0, Lg/f/a/b/i/p;->e:Lg/f/a/b/i/q;

    return-void
.end method

.method static synthetic c(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Lg/f/a/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/a/b/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lg/f/a/b/i/o;->b()Lg/f/a/b/h;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lg/f/a/b/i/p;->b(Lg/f/a/b/c;Lg/f/a/b/h;)V

    return-void
.end method

.method public b(Lg/f/a/b/c;Lg/f/a/b/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/a/b/c<",
            "TT;>;",
            "Lg/f/a/b/h;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/a/b/i/p;->e:Lg/f/a/b/i/q;

    .line 2
    invoke-static {}, Lg/f/a/b/i/l;->a()Lg/f/a/b/i/l$a;

    move-result-object v1

    iget-object v2, p0, Lg/f/a/b/i/p;->a:Lg/f/a/b/i/m;

    .line 3
    invoke-virtual {v1, v2}, Lg/f/a/b/i/l$a;->e(Lg/f/a/b/i/m;)Lg/f/a/b/i/l$a;

    .line 4
    invoke-virtual {v1, p1}, Lg/f/a/b/i/l$a;->c(Lg/f/a/b/c;)Lg/f/a/b/i/l$a;

    iget-object p1, p0, Lg/f/a/b/i/p;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, p1}, Lg/f/a/b/i/l$a;->f(Ljava/lang/String;)Lg/f/a/b/i/l$a;

    iget-object p1, p0, Lg/f/a/b/i/p;->d:Lg/f/a/b/e;

    .line 6
    invoke-virtual {v1, p1}, Lg/f/a/b/i/l$a;->d(Lg/f/a/b/e;)Lg/f/a/b/i/l$a;

    iget-object p1, p0, Lg/f/a/b/i/p;->c:Lg/f/a/b/b;

    .line 7
    invoke-virtual {v1, p1}, Lg/f/a/b/i/l$a;->b(Lg/f/a/b/b;)Lg/f/a/b/i/l$a;

    .line 8
    invoke-virtual {v1}, Lg/f/a/b/i/l$a;->a()Lg/f/a/b/i/l;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1, p2}, Lg/f/a/b/i/q;->a(Lg/f/a/b/i/l;Lg/f/a/b/h;)V

    return-void
.end method
