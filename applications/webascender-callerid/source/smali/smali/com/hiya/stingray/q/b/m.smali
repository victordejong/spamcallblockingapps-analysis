.class public final Lcom/hiya/stingray/q/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/q/b/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/v;",
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
            "Lcom/hiya/stingray/q/b/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/q/b/m;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lcom/hiya/stingray/q/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/v;",
            ">;)",
            "Lcom/hiya/stingray/q/b/m;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/m;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/q/b/m;-><init>(Lj/a/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/q/b/l;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/l;

    iget-object v1, p0, Lcom/hiya/stingray/q/b/m;->a:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/b/v;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/q/b/l;-><init>(Lcom/hiya/stingray/q/b/v;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/b/m;->b()Lcom/hiya/stingray/q/b/l;

    move-result-object v0

    return-object v0
.end method
