.class public final Le/a/c/y/h;
.super Le/a/c/y/a;
.source "SourceFile"


# instance fields
.field public final g:Ls1/w/f;

.field public final h:Le/a/c/j/f;


# direct methods
.method public constructor <init>(Le/a/c/j/f;)V
    .locals 1

    const-string v0, "deepLink"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/c/y/a;-><init>()V

    iput-object p1, p0, Le/a/c/y/h;->h:Le/a/c/j/f;

    .line 2
    iget-object p1, p0, Le/a/c/y/a;->d:Ls1/w/f;

    .line 3
    iput-object p1, p0, Le/a/c/y/h;->g:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/y/a;->e:Le/a/c/j/b;

    .line 2
    iget-object v0, p0, Le/a/c/y/h;->h:Le/a/c/j/f;

    new-instance v1, Le/a/c/y/h$a;

    invoke-direct {v1, p0}, Le/a/c/y/h$a;-><init>(Le/a/c/y/h;)V

    invoke-interface {p1, v0, v1}, Le/a/c/j/b;->a(Le/a/c/j/f;Ls1/z/b/l;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/y/h;->g:Ls1/w/f;

    return-object v0
.end method
