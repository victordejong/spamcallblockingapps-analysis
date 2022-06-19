.class public final Lokhttp3/internal/http2/e$e$c;
.super Lm/k0/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/e$e;->h(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lokhttp3/internal/http2/e$e;

.field final synthetic f:I

.field final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e$e;II)V
    .locals 0

    iput-object p5, p0, Lokhttp3/internal/http2/e$e$c;->e:Lokhttp3/internal/http2/e$e;

    iput p6, p0, Lokhttp3/internal/http2/e$e$c;->f:I

    iput p7, p0, Lokhttp3/internal/http2/e$e$c;->g:I

    .line 1
    invoke-direct {p0, p3, p4}, Lm/k0/e/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$e$c;->e:Lokhttp3/internal/http2/e$e;

    iget-object v0, v0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    iget v1, p0, Lokhttp3/internal/http2/e$e$c;->f:I

    iget v2, p0, Lokhttp3/internal/http2/e$e$c;->g:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lokhttp3/internal/http2/e;->B1(ZII)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
