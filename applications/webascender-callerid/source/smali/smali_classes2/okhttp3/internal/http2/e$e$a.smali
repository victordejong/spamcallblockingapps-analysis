.class public final Lokhttp3/internal/http2/e$e$a;
.super Lm/k0/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/e$e;->f(ZLokhttp3/internal/http2/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lokhttp3/internal/http2/e$e;

.field final synthetic f:Lkotlin/w/c/q;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e$e;ZLkotlin/w/c/q;Lokhttp3/internal/http2/m;Lkotlin/w/c/p;Lkotlin/w/c/q;)V
    .locals 0

    iput-object p5, p0, Lokhttp3/internal/http2/e$e$a;->e:Lokhttp3/internal/http2/e$e;

    iput-object p7, p0, Lokhttp3/internal/http2/e$e$a;->f:Lkotlin/w/c/q;

    .line 1
    invoke-direct {p0, p3, p4}, Lm/k0/e/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$e$a;->e:Lokhttp3/internal/http2/e$e;

    iget-object v0, v0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v0}, Lokhttp3/internal/http2/e;->l0()Lokhttp3/internal/http2/e$d;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http2/e$e$a;->e:Lokhttp3/internal/http2/e$e;

    iget-object v1, v1, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    iget-object v2, p0, Lokhttp3/internal/http2/e$e$a;->f:Lkotlin/w/c/q;

    iget-object v2, v2, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    check-cast v2, Lokhttp3/internal/http2/m;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/e$d;->b(Lokhttp3/internal/http2/e;Lokhttp3/internal/http2/m;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
