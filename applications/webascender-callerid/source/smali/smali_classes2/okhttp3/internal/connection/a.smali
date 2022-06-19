.class public final Lokhttp3/internal/connection/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# static fields
.field public static final a:Lokhttp3/internal/connection/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/connection/a;

    invoke-direct {v0}, Lokhttp3/internal/connection/a;-><init>()V

    sput-object v0, Lokhttp3/internal/connection/a;->a:Lokhttp3/internal/connection/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lm/k0/f/g;

    .line 2
    invoke-virtual {p1}, Lm/k0/f/g;->e()Lokhttp3/internal/connection/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/e;->s(Lm/k0/f/g;)Lokhttp3/internal/connection/c;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3d

    const/4 v9, 0x0

    move-object v1, p1

    .line 3
    invoke-static/range {v1 .. v9}, Lm/k0/f/g;->d(Lm/k0/f/g;ILokhttp3/internal/connection/c;Lm/e0;IIIILjava/lang/Object;)Lm/k0/f/g;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lm/k0/f/g;->i()Lm/e0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/k0/f/g;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    return-object p1
.end method
