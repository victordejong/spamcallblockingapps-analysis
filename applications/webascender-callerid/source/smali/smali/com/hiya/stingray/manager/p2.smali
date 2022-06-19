.class public final Lcom/hiya/stingray/manager/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/manager/o2;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/f;",
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
            "Lcom/hiya/stingray/q/d/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/p2;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lcom/hiya/stingray/manager/p2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/f;",
            ">;)",
            "Lcom/hiya/stingray/manager/p2;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/p2;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/p2;-><init>(Lj/a/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/manager/o2;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/o2;

    iget-object v1, p0, Lcom/hiya/stingray/manager/p2;->a:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/d/f;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/manager/o2;-><init>(Lcom/hiya/stingray/q/d/f;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/p2;->b()Lcom/hiya/stingray/manager/o2;

    move-result-object v0

    return-object v0
.end method
