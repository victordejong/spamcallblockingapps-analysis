.class public final Le/a/g5/c0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g5/c0/a;


# instance fields
.field public final a:Le/a/b0/p/d;

.field public final b:Le/a/g5/p;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/b0/p/d;Le/a/g5/p;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tagManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDisplayUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioCoroutineContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g5/c0/b;->a:Le/a/b0/p/d;

    iput-object p2, p0, Le/a/g5/c0/b;->b:Le/a/g5/p;

    iput-object p3, p0, Le/a/g5/c0/b;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/g5/c0/b;->c:Ls1/w/f;

    new-instance v7, Le/a/g5/c0/b$a;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Le/a/g5/c0/b$a;-><init>(Le/a/g5/c0/b;Ljava/lang/String;JLs1/w/d;)V

    const-wide/16 p1, 0x0

    const/4 p3, 0x2

    invoke-static {v0, p1, p2, v7, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->M0(Ls1/w/f;JLs1/z/b/p;I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public y1(J)Le/a/b0/p/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g5/c0/b;->b:Le/a/g5/p;

    invoke-interface {v0, p1, p2}, Le/a/g5/p;->c(J)Le/a/b0/p/c;

    move-result-object p1

    return-object p1
.end method
