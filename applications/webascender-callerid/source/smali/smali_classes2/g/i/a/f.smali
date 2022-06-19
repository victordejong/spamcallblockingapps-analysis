.class public Lg/i/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/i/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/i/a/f$f;,
        Lg/i/a/f$c;,
        Lg/i/a/f$e;,
        Lg/i/a/f$d;,
        Lg/i/a/f$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lg/i/a/h;",
            "Lcom/squareup/picasso/c0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/squareup/picasso/Picasso;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-direct {p0, v0}, Lg/i/a/f;-><init>(Lcom/squareup/picasso/Picasso;)V

    return-void
.end method

.method private constructor <init>(Lcom/squareup/picasso/Picasso;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/i/a/f;->a:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lg/i/a/f;->b:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/picasso/Picasso;Lg/i/a/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/i/a/f;-><init>(Lcom/squareup/picasso/Picasso;)V

    return-void
.end method

.method static synthetic f(Lg/i/a/f;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/i/a/f;->a:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lg/i/a/g;
    .locals 2

    .line 1
    new-instance v0, Lg/i/a/f$d;

    iget-object v1, p0, Lg/i/a/f;->b:Lcom/squareup/picasso/Picasso;

    invoke-direct {v0, p0, v1, p1}, Lg/i/a/f$d;-><init>(Lg/i/a/f;Lcom/squareup/picasso/Picasso;Landroid/net/Uri;)V

    return-object v0
.end method

.method public b(Ljava/io/File;)Lg/i/a/g;
    .locals 2

    .line 1
    new-instance v0, Lg/i/a/f$d;

    iget-object v1, p0, Lg/i/a/f;->b:Lcom/squareup/picasso/Picasso;

    invoke-direct {v0, p0, v1, p1}, Lg/i/a/f$d;-><init>(Lg/i/a/f;Lcom/squareup/picasso/Picasso;Ljava/io/File;)V

    return-object v0
.end method

.method public c(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i/a/f;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    return-void
.end method

.method public d(Lg/i/a/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/i/a/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/i/a/f;->b:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lg/i/a/f;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/picasso/c0;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Lcom/squareup/picasso/c0;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Lg/i/a/g;
    .locals 2

    .line 1
    new-instance v0, Lg/i/a/f$d;

    iget-object v1, p0, Lg/i/a/f;->b:Lcom/squareup/picasso/Picasso;

    invoke-direct {v0, p0, v1, p1}, Lg/i/a/f$d;-><init>(Lg/i/a/f;Lcom/squareup/picasso/Picasso;Ljava/lang/String;)V

    return-object v0
.end method
