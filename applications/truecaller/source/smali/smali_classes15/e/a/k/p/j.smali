.class public final Le/a/k/p/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/p/i;


# instance fields
.field public final a:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Lcom/truecaller/videocallerid/upload/UploadingStates;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/videocallerid/upload/UploadingStates;->UNKNOWN:Lcom/truecaller/videocallerid/upload/UploadingStates;

    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v0

    iput-object v0, p0, Le/a/k/p/j;->a:Lq3/a/x2/a1;

    return-void
.end method


# virtual methods
.method public a(Lq3/a/i0;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
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
    iget-object p3, p0, Le/a/k/p/j;->a:Lq3/a/x2/a1;

    new-instance v0, Le/a/k/p/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Le/a/k/p/j$a;-><init>(Ls1/z/b/p;Ls1/w/d;)V

    .line 2
    new-instance p2, Lq3/a/x2/u0;

    invoke-direct {p2, p3, v0}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 3
    invoke-static {p2, p1}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b(Lcom/truecaller/videocallerid/upload/UploadingStates;)V
    .locals 1

    const-string v0, "uploadingStates"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/p/j;->a:Lq3/a/x2/a1;

    invoke-interface {v0, p1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void
.end method
