.class public final Lg/g/a/b/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/a/c/a;",
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


# direct methods
.method public constructor <init>(Lg/g/a/b/c0;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/c0;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/b/k0;->a:Lg/g/a/b/c0;

    .line 3
    iput-object p2, p0, Lg/g/a/b/k0;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lg/g/a/b/c0;Lj/a/a;)Lg/g/a/b/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/c0;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;)",
            "Lg/g/a/b/k0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/a/b/k0;

    invoke-direct {v0, p0, p1}, Lg/g/a/b/k0;-><init>(Lg/g/a/b/c0;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/a/b/c0;Lcom/google/gson/f;)Lg/g/a/c/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/g/a/b/c0;->j(Lcom/google/gson/f;)Lg/g/a/c/a;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/g/a/c/a;

    return-object p0
.end method


# virtual methods
.method public b()Lg/g/a/c/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/a/b/k0;->a:Lg/g/a/b/c0;

    iget-object v1, p0, Lg/g/a/b/k0;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/f;

    invoke-static {v0, v1}, Lg/g/a/b/k0;->c(Lg/g/a/b/c0;Lcom/google/gson/f;)Lg/g/a/c/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/b/k0;->b()Lg/g/a/c/a;

    move-result-object v0

    return-object v0
.end method
