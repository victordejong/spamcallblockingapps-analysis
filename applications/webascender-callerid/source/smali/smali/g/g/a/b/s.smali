.class public final Lg/g/a/b/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/a/a/g/h/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg/g/a/b/r;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/a/b/r;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/r;",
            "Lj/a/a<",
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/b/s;->a:Lg/g/a/b/r;

    .line 3
    iput-object p2, p0, Lg/g/a/b/s;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lg/g/a/b/r;Lj/a/a;)Lg/g/a/b/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/r;",
            "Lj/a/a<",
            "Lretrofit2/Retrofit;",
            ">;)",
            "Lg/g/a/b/s;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/a/b/s;

    invoke-direct {v0, p0, p1}, Lg/g/a/b/s;-><init>(Lg/g/a/b/r;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/a/b/r;Lretrofit2/Retrofit;)Lg/g/a/a/g/h/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/g/a/b/r;->a(Lretrofit2/Retrofit;)Lg/g/a/a/g/h/a;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/g/a/a/g/h/a;

    return-object p0
.end method


# virtual methods
.method public b()Lg/g/a/a/g/h/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/a/b/s;->a:Lg/g/a/b/r;

    iget-object v1, p0, Lg/g/a/b/s;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Retrofit;

    invoke-static {v0, v1}, Lg/g/a/b/s;->c(Lg/g/a/b/r;Lretrofit2/Retrofit;)Lg/g/a/a/g/h/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/b/s;->b()Lg/g/a/a/g/h/a;

    move-result-object v0

    return-object v0
.end method
