.class public final Lokhttp3/internal/http2/e$k;
.super Lm/k0/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/e;->D1(ILokhttp3/internal/http2/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lokhttp3/internal/http2/e;

.field final synthetic f:I

.field final synthetic g:Lokhttp3/internal/http2/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e;ILokhttp3/internal/http2/a;)V
    .locals 0

    iput-object p5, p0, Lokhttp3/internal/http2/e$k;->e:Lokhttp3/internal/http2/e;

    iput p6, p0, Lokhttp3/internal/http2/e$k;->f:I

    iput-object p7, p0, Lokhttp3/internal/http2/e$k;->g:Lokhttp3/internal/http2/a;

    .line 1
    invoke-direct {p0, p3, p4}, Lm/k0/e/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e$k;->e:Lokhttp3/internal/http2/e;

    iget v1, p0, Lokhttp3/internal/http2/e$k;->f:I

    iget-object v2, p0, Lokhttp3/internal/http2/e$k;->g:Lokhttp3/internal/http2/a;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/e;->C1(ILokhttp3/internal/http2/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/e$k;->e:Lokhttp3/internal/http2/e;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/e;->a(Lokhttp3/internal/http2/e;Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
