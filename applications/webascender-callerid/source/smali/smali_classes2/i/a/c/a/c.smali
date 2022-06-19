.class public final Li/a/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lu/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu/h/a<",
            "Lu/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lzipkin2/reporter/a;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lu/h/d;->JSON_V2:Lu/h/d;

    iput-object v0, p0, Li/a/c/a/c;->a:Lu/h/a;

    const-string v0, "http://localhost:9411/api/v2/spans"

    .line 3
    iput-object v0, p0, Li/a/c/a/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Li/a/c/a/b;
    .locals 3

    .line 1
    iget-object v0, p0, Li/a/c/a/c;->b:Lzipkin2/reporter/a;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/a/c/a/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lzipkin2/reporter/b/b;->a(Ljava/lang/String;)Lzipkin2/reporter/b/b;

    move-result-object v0

    iput-object v0, p0, Li/a/c/a/c;->b:Lzipkin2/reporter/a;

    .line 3
    :cond_0
    new-instance v0, Li/a/c/a/b;

    iget-object v1, p0, Li/a/c/a/c;->a:Lu/h/a;

    iget-object v2, p0, Li/a/c/a/c;->b:Lzipkin2/reporter/a;

    invoke-direct {v0, v1, v2}, Li/a/c/a/b;-><init>(Lu/h/a;Lzipkin2/reporter/a;)V

    return-object v0
.end method

.method public b(Lzipkin2/reporter/a;)Li/a/c/a/c;
    .locals 0

    .line 1
    iput-object p1, p0, Li/a/c/a/c;->b:Lzipkin2/reporter/a;

    return-object p0
.end method
