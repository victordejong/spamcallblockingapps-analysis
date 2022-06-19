.class public final Le/a/a/c/q5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/p5;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/q5;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/c/q5;->b:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/c/q5;->b:Ls1/w/f;

    new-instance v1, Le/a/a/c/q5$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/a/c/q5$a;-><init>(Le/a/a/c/q5;Landroid/net/Uri;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
