.class public final Le/a/k/p/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/p/b;


# instance fields
.field public final a:Le/a/k/p/i;


# direct methods
.method public constructor <init>(Le/a/k/p/i;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "videoUploadStateHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/p/c;->a:Le/a/k/p/i;

    return-void
.end method


# virtual methods
.method public a(Lq3/a/i0;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Ls1/z/b/p<",
            "-",
            "Lcom/truecaller/videocallerid/upload/UploadingStates;",
            "-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/p/c;->a:Le/a/k/p/i;

    new-instance v1, Le/a/k/p/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Le/a/k/p/c$a;-><init>(Ls1/z/b/p;Ls1/w/d;)V

    invoke-interface {v0, p1, v1, p3}, Le/a/k/p/i;->a(Lq3/a/i0;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
