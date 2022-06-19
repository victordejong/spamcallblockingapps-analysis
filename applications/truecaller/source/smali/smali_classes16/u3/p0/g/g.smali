.class public final Lu3/p0/g/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lu3/h;

.field public final synthetic c:Lu3/y;

.field public final synthetic d:Lu3/a;


# direct methods
.method public constructor <init>(Lu3/h;Lu3/y;Lu3/a;)V
    .locals 0

    iput-object p1, p0, Lu3/p0/g/g;->b:Lu3/h;

    iput-object p2, p0, Lu3/p0/g/g;->c:Lu3/y;

    iput-object p3, p0, Lu3/p0/g/g;->d:Lu3/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lu3/p0/g/g;->b:Lu3/h;

    .line 2
    iget-object v0, v0, Lu3/h;->b:Lu3/p0/n/c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lu3/p0/g/g;->c:Lu3/y;

    invoke-virtual {v1}, Lu3/y;->c()Ljava/util/List;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lu3/p0/g/g;->d:Lu3/a;

    .line 5
    iget-object v2, v2, Lu3/a;->a:Lu3/a0;

    .line 6
    iget-object v2, v2, Lu3/a0;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1, v2}, Lu3/p0/n/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0
.end method
