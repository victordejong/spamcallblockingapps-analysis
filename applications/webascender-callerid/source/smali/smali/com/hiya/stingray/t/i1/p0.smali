.class public final Lcom/hiya/stingray/t/i1/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/t/i1/o0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/x;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/i1/p0;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/t/i1/p0;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/t/i1/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/x;",
            ">;)",
            "Lcom/hiya/stingray/t/i1/p0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/p0;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/t/i1/p0;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/t/i1/o0;
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/o0;

    iget-object v1, p0, Lcom/hiya/stingray/t/i1/p0;->a:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/hiya/stingray/t/i1/p0;->b:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/q/b/x;

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/t/i1/o0;-><init>(Ljava/lang/String;Lcom/hiya/stingray/q/b/x;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/i1/p0;->b()Lcom/hiya/stingray/t/i1/o0;

    move-result-object v0

    return-object v0
.end method
