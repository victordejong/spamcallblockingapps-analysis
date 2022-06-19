.class final Lokhttp3/internal/connection/g$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/g;->j(Lokhttp3/internal/connection/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lm/h;

.field final synthetic g:Lm/w;

.field final synthetic h:Lm/a;


# direct methods
.method constructor <init>(Lm/h;Lm/w;Lm/a;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/connection/g$a;->f:Lm/h;

    iput-object p2, p0, Lokhttp3/internal/connection/g$a;->g:Lm/w;

    iput-object p3, p0, Lokhttp3/internal/connection/g$a;->h:Lm/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/connection/g$a;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/g$a;->f:Lm/h;

    invoke-virtual {v0}, Lm/h;->d()Lm/k0/k/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lokhttp3/internal/connection/g$a;->g:Lm/w;

    invoke-virtual {v1}, Lm/w;->d()Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lokhttp3/internal/connection/g$a;->h:Lm/a;

    invoke-virtual {v2}, Lm/a;->l()Lm/y;

    move-result-object v2

    invoke-virtual {v2}, Lm/y;->i()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lm/k0/k/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method
