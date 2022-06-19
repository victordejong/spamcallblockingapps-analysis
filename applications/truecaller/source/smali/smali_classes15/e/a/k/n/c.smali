.class public final Le/a/k/n/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/n/b;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;


# direct methods
.method public constructor <init>(Ls1/w/f;Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "database"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/n/c;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/k/n/c;->b:Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
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
    iget-object v0, p0, Le/a/k/n/c;->a:Ls1/w/f;

    new-instance v1, Le/a/k/n/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/k/n/c$a;-><init>(Le/a/k/n/c;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
