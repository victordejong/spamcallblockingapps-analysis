.class public final Lcom/hiya/stingray/t/i1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/t/i1/o;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/r0;",
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
            "Lcom/hiya/stingray/t/i1/r0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/i1/p;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lcom/hiya/stingray/t/i1/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/r0;",
            ">;)",
            "Lcom/hiya/stingray/t/i1/p;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/p;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/t/i1/p;-><init>(Lj/a/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/t/i1/o;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/o;

    iget-object v1, p0, Lcom/hiya/stingray/t/i1/p;->a:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/i1/r0;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/t/i1/o;-><init>(Lcom/hiya/stingray/t/i1/r0;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/i1/p;->b()Lcom/hiya/stingray/t/i1/o;

    move-result-object v0

    return-object v0
.end method
