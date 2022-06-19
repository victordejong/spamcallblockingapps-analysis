.class public abstract Lokhttp3/internal/http2/e$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# static fields
.field public static final a:Lokhttp3/internal/http2/e$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/http2/e$d$a;

    invoke-direct {v0}, Lokhttp3/internal/http2/e$d$a;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/e$d;->a:Lokhttp3/internal/http2/e$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lokhttp3/internal/http2/e;Lokhttp3/internal/http2/m;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract c(Lokhttp3/internal/http2/h;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
