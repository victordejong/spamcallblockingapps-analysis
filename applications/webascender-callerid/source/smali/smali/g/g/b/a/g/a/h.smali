.class public final Lg/g/b/a/g/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/b/a/g/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/b/a/g/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/b/a/g/a/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/a/h/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/b/a/g/a/e;",
            ">;",
            "Lj/a/a<",
            "Lg/g/b/a/g/a/i/a;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/a/h/g;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/a/g/a/h;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lg/g/b/a/g/a/h;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lg/g/b/a/g/a/h;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lg/g/b/a/g/a/h;->d:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lg/g/b/a/g/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/b/a/g/a/e;",
            ">;",
            "Lj/a/a<",
            "Lg/g/b/a/g/a/i/a;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/a/h/g;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;)",
            "Lg/g/b/a/g/a/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/a/g/a/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lg/g/b/a/g/a/h;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/b/a/g/a/e;Lg/g/b/a/g/a/i/a;Lg/g/a/a/h/g;Lcom/google/gson/f;)Lg/g/b/a/g/a/g;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/a/g/a/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lg/g/b/a/g/a/g;-><init>(Lg/g/b/a/g/a/e;Lg/g/b/a/g/a/i/a;Lg/g/a/a/h/g;Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg/g/b/a/g/a/g;
    .locals 4

    .line 1
    iget-object v0, p0, Lg/g/b/a/g/a/h;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/b/a/g/a/e;

    iget-object v1, p0, Lg/g/b/a/g/a/h;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/b/a/g/a/i/a;

    iget-object v2, p0, Lg/g/b/a/g/a/h;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/g/a/a/h/g;

    iget-object v3, p0, Lg/g/b/a/g/a/h;->d:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/f;

    invoke-static {v0, v1, v2, v3}, Lg/g/b/a/g/a/h;->c(Lg/g/b/a/g/a/e;Lg/g/b/a/g/a/i/a;Lg/g/a/a/h/g;Lcom/google/gson/f;)Lg/g/b/a/g/a/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/a/g/a/h;->b()Lg/g/b/a/g/a/g;

    move-result-object v0

    return-object v0
.end method
