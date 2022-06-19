.class public Le/i/b/r1/q$a;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/r1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final c:Ljava/net/URL;

.field public final d:Le/i/b/i2/g;


# direct methods
.method public constructor <init>(Ljava/net/URL;Le/i/b/i2/g;Le/i/b/r1/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/r1/q$a;->c:Ljava/net/URL;

    .line 3
    iput-object p2, p0, Le/i/b/r1/q$a;->d:Le/i/b/i2/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/r1/q$a;->d:Le/i/b/i2/g;

    iget-object v1, p0, Le/i/b/r1/q$a;->c:Ljava/net/URL;

    const/4 v2, 0x0

    const-string v3, "GET"

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Le/i/b/i2/g;->c(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3
    invoke-static {v0}, Le/i/b/i2/g;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method
