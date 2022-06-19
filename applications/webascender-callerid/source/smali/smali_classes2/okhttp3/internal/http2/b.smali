.class public final Lokhttp3/internal/http2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ln/i;

.field public static final e:Ln/i;

.field public static final f:Ln/i;

.field public static final g:Ln/i;

.field public static final h:Ln/i;

.field public static final i:Ln/i;


# instance fields
.field public final a:I

.field public final b:Ln/i;

.field public final c:Ln/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ln/i;->j:Ln/i$a;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ln/i$a;->d(Ljava/lang/String;)Ln/i;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http2/b;->d:Ln/i;

    const-string v1, ":status"

    .line 2
    invoke-virtual {v0, v1}, Ln/i$a;->d(Ljava/lang/String;)Ln/i;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http2/b;->e:Ln/i;

    const-string v1, ":method"

    .line 3
    invoke-virtual {v0, v1}, Ln/i$a;->d(Ljava/lang/String;)Ln/i;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http2/b;->f:Ln/i;

    const-string v1, ":path"

    .line 4
    invoke-virtual {v0, v1}, Ln/i$a;->d(Ljava/lang/String;)Ln/i;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http2/b;->g:Ln/i;

    const-string v1, ":scheme"

    .line 5
    invoke-virtual {v0, v1}, Ln/i$a;->d(Ljava/lang/String;)Ln/i;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http2/b;->h:Ln/i;

    const-string v1, ":authority"

    .line 6
    invoke-virtual {v0, v1}, Ln/i$a;->d(Ljava/lang/String;)Ln/i;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/b;->i:Ln/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Ln/i;->j:Ln/i$a;

    invoke-virtual {v0, p1}, Ln/i$a;->d(Ljava/lang/String;)Ln/i;

    move-result-object p1

    invoke-virtual {v0, p2}, Ln/i$a;->d(Ljava/lang/String;)Ln/i;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/b;-><init>(Ln/i;Ln/i;)V

    return-void
.end method

.method public constructor <init>(Ln/i;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Ln/i;->j:Ln/i$a;

    invoke-virtual {v0, p2}, Ln/i$a;->d(Ljava/lang/String;)Ln/i;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/b;-><init>(Ln/i;Ln/i;)V

    return-void
.end method

.method public constructor <init>(Ln/i;Ln/i;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/b;->b:Ln/i;

    iput-object p2, p0, Lokhttp3/internal/http2/b;->c:Ln/i;

    .line 2
    invoke-virtual {p1}, Ln/i;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Ln/i;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lokhttp3/internal/http2/b;->a:I

    return-void
.end method


# virtual methods
.method public final a()Ln/i;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/http2/b;->b:Ln/i;

    return-object v0
.end method

.method public final b()Ln/i;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/http2/b;->c:Ln/i;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lokhttp3/internal/http2/b;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/internal/http2/b;

    iget-object v0, p0, Lokhttp3/internal/http2/b;->b:Ln/i;

    iget-object v1, p1, Lokhttp3/internal/http2/b;->b:Ln/i;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http2/b;->c:Ln/i;

    iget-object p1, p1, Lokhttp3/internal/http2/b;->c:Ln/i;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lokhttp3/internal/http2/b;->b:Ln/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lokhttp3/internal/http2/b;->c:Ln/i;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/http2/b;->b:Ln/i;

    invoke-virtual {v1}, Ln/i;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/http2/b;->c:Ln/i;

    invoke-virtual {v1}, Ln/i;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
