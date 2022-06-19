.class public final Le/a/h/b/y0/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/y0/a/b;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/y4/g/g;

.field public final c:Le/a/f4/g/r;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/y4/g/g;Le/a/f4/g/r;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t9ContactsMappingDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/y0/a/c;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/h/b/y0/a/c;->b:Le/a/y4/g/g;

    iput-object p3, p0, Le/a/h/b/y0/a/c;->c:Le/a/f4/g/r;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/data/entity/Contact;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/b/y0/a/c;->a:Ls1/w/f;

    new-instance v7, Le/a/h/b/y0/a/c$a;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Le/a/h/b/y0/a/c$a;-><init>(Le/a/h/b/y0/a/c;JLjava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v7, p4}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Integer;Landroid/os/CancellationSignal;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/h/b/y0/a/e;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/b/y0/a/c;->a:Ls1/w/f;

    new-instance v7, Le/a/h/b/y0/a/c$b;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Le/a/h/b/y0/a/c$b;-><init>(Le/a/h/b/y0/a/c;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/lang/Integer;Ls1/w/d;)V

    invoke-static {v0, v7, p4}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
