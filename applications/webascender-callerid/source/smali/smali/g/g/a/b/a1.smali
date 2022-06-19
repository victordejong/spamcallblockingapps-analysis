.class public final Lg/g/a/b/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg/g/a/b/c0;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/c0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/b/j1/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/a/b/c0;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/c0;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/b/j1/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/b/a1;->a:Lg/g/a/b/c0;

    .line 3
    iput-object p2, p0, Lg/g/a/b/a1;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lg/g/a/b/a1;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lg/g/a/b/a1;->d:Lj/a/a;

    return-void
.end method

.method public static a(Lg/g/a/b/c0;Lj/a/a;Lj/a/a;Lj/a/a;)Lg/g/a/b/a1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/c0;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;",
            "Lj/a/a<",
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/b/j1/a;",
            ">;)",
            "Lg/g/a/b/a1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/a/b/a1;

    invoke-direct {v0, p0, p1, p2, p3}, Lg/g/a/b/a1;-><init>(Lg/g/a/b/c0;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/a/b/c0;Lcom/google/gson/f;Lm/c0;Lg/g/a/b/j1/a;)Lretrofit2/Retrofit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lg/g/a/b/c0;->z(Lcom/google/gson/f;Lm/c0;Lg/g/a/b/j1/a;)Lretrofit2/Retrofit;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lretrofit2/Retrofit;

    return-object p0
.end method


# virtual methods
.method public b()Lretrofit2/Retrofit;
    .locals 4

    .line 1
    iget-object v0, p0, Lg/g/a/b/a1;->a:Lg/g/a/b/c0;

    iget-object v1, p0, Lg/g/a/b/a1;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/f;

    iget-object v2, p0, Lg/g/a/b/a1;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/c0;

    iget-object v3, p0, Lg/g/a/b/a1;->d:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/g/a/b/j1/a;

    invoke-static {v0, v1, v2, v3}, Lg/g/a/b/a1;->c(Lg/g/a/b/c0;Lcom/google/gson/f;Lm/c0;Lg/g/a/b/j1/a;)Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/b/a1;->b()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method
