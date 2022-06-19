.class public final Lcom/hiya/stingray/q/b/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/q/b/s;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/a0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/u;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/a;",
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
            "Lcom/hiya/stingray/q/b/a0;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/u;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/k;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/q/b/t;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/q/b/t;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/q/b/t;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/q/b/t;->d:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/q/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/a0;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/u;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/k;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/a;",
            ">;)",
            "Lcom/hiya/stingray/q/b/t;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/t;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hiya/stingray/q/b/t;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/q/b/s;
    .locals 5

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/s;

    iget-object v1, p0, Lcom/hiya/stingray/q/b/t;->a:Lj/a/a;

    .line 2
    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/b/a0;

    iget-object v2, p0, Lcom/hiya/stingray/q/b/t;->b:Lj/a/a;

    .line 3
    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/q/b/u;

    iget-object v3, p0, Lcom/hiya/stingray/q/b/t;->c:Lj/a/a;

    .line 4
    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/q/b/k;

    iget-object v4, p0, Lcom/hiya/stingray/q/b/t;->d:Lj/a/a;

    .line 5
    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/stingray/q/d/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hiya/stingray/q/b/s;-><init>(Lcom/hiya/stingray/q/b/a0;Lcom/hiya/stingray/q/b/u;Lcom/hiya/stingray/q/b/k;Lcom/hiya/stingray/q/d/a;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/b/t;->b()Lcom/hiya/stingray/q/b/s;

    move-result-object v0

    return-object v0
.end method
