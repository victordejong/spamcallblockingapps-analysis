.class public final Lg/g/b/d/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/b/d/g/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/b/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/b/d/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/b/d/a;",
            ">;",
            "Lj/a/a<",
            "Lg/g/b/d/g/c;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/d/g/b;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lg/g/b/d/g/b;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lg/g/b/d/g/b;->c:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;)Lg/g/b/d/g/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/b/d/a;",
            ">;",
            "Lj/a/a<",
            "Lg/g/b/d/g/c;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;)",
            "Lg/g/b/d/g/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/d/g/b;

    invoke-direct {v0, p0, p1, p2}, Lg/g/b/d/g/b;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/b/d/a;Lg/g/b/d/g/c;Lcom/google/gson/f;)Lg/g/b/d/g/a;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/d/g/a;

    invoke-direct {v0, p0, p1, p2}, Lg/g/b/d/g/a;-><init>(Lg/g/b/d/a;Lg/g/b/d/g/c;Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg/g/b/d/g/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lg/g/b/d/g/b;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/b/d/a;

    iget-object v1, p0, Lg/g/b/d/g/b;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/b/d/g/c;

    iget-object v2, p0, Lg/g/b/d/g/b;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/f;

    invoke-static {v0, v1, v2}, Lg/g/b/d/g/b;->c(Lg/g/b/d/a;Lg/g/b/d/g/c;Lcom/google/gson/f;)Lg/g/b/d/g/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/d/g/b;->b()Lg/g/b/d/g/a;

    move-result-object v0

    return-object v0
.end method
