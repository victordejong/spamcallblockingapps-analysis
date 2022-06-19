.class public final Lg/g/b/a/g/a/i/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/b/a/g/a/i/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/a/g/a/i/g;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lg/g/b/a/g/a/i/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;)",
            "Lg/g/b/a/g/a/i/g;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/a/g/a/i/g;

    invoke-direct {v0, p0}, Lg/g/b/a/g/a/i/g;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/google/gson/f;)Lg/g/b/a/g/a/i/f;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/a/g/a/i/f;

    invoke-direct {v0, p0}, Lg/g/b/a/g/a/i/f;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg/g/b/a/g/a/i/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/a/g/a/i/g;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/f;

    invoke-static {v0}, Lg/g/b/a/g/a/i/g;->c(Lcom/google/gson/f;)Lg/g/b/a/g/a/i/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/a/g/a/i/g;->b()Lg/g/b/a/g/a/i/f;

    move-result-object v0

    return-object v0
.end method
