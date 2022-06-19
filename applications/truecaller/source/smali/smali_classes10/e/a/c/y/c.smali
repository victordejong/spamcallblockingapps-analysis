.class public final Le/a/c/y/c;
.super Le/a/c/y/a;
.source "SourceFile"


# instance fields
.field public final g:Ls1/w/f;

.field public final h:J

.field public final i:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/c/y/a;-><init>()V

    iput-wide p1, p0, Le/a/c/y/c;->h:J

    iput p3, p0, Le/a/c/y/c;->i:I

    .line 2
    iget-object p1, p0, Le/a/c/y/a;->c:Ls1/w/f;

    .line 3
    iput-object p1, p0, Le/a/c/y/c;->g:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
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
    invoke-virtual {p0}, Le/a/c/r/j/f;->c()Lq3/a/i0;

    move-result-object v0

    new-instance v3, Le/a/c/y/c$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/c/y/c$a;-><init>(Le/a/c/y/c;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/y/c;->g:Ls1/w/f;

    return-object v0
.end method
