.class public final Lokhttp3/internal/http2/e$e$d;
.super Lm/k0/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/e$e;->a(ZLokhttp3/internal/http2/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lokhttp3/internal/http2/e$e;

.field final synthetic f:Z

.field final synthetic g:Lokhttp3/internal/http2/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e$e;ZLokhttp3/internal/http2/m;)V
    .locals 0

    iput-object p5, p0, Lokhttp3/internal/http2/e$e$d;->e:Lokhttp3/internal/http2/e$e;

    iput-boolean p6, p0, Lokhttp3/internal/http2/e$e$d;->f:Z

    iput-object p7, p0, Lokhttp3/internal/http2/e$e$d;->g:Lokhttp3/internal/http2/m;

    .line 1
    invoke-direct {p0, p3, p4}, Lm/k0/e/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$e$d;->e:Lokhttp3/internal/http2/e$e;

    iget-boolean v1, p0, Lokhttp3/internal/http2/e$e$d;->f:Z

    iget-object v2, p0, Lokhttp3/internal/http2/e$e$d;->g:Lokhttp3/internal/http2/m;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/e$e;->f(ZLokhttp3/internal/http2/m;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
