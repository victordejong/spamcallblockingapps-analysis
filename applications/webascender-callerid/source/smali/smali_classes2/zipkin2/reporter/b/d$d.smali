.class final Lzipkin2/reporter/b/d$d;
.super Lzipkin2/reporter/b/d$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# static fields
.field static final d:Lm/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json"

    .line 1
    invoke-static {v0}, Lm/a0;->h(Ljava/lang/String;)Lm/a0;

    move-result-object v0

    sput-object v0, Lzipkin2/reporter/b/d$d;->d:Lm/a0;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lu/h/b;->JSON:Lu/h/b;

    sget-object v1, Lzipkin2/reporter/b/d$d;->d:Lm/a0;

    invoke-direct {p0, v0, v1, p1}, Lzipkin2/reporter/b/d$f;-><init>(Lu/h/b;Lm/a0;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public writeTo(Ln/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5b

    .line 1
    invoke-interface {p1, v0}, Ln/g;->T(I)Ln/g;

    .line 2
    iget-object v0, p0, Lzipkin2/reporter/b/d$f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Lzipkin2/reporter/b/d$f;->b:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 4
    invoke-interface {p1, v1}, Ln/g;->W0([B)Ln/g;

    if-ge v3, v0, :cond_0

    const/16 v1, 0x2c

    .line 5
    invoke-interface {p1, v1}, Ln/g;->T(I)Ln/g;

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    .line 6
    invoke-interface {p1, v0}, Ln/g;->T(I)Ln/g;

    return-void
.end method
