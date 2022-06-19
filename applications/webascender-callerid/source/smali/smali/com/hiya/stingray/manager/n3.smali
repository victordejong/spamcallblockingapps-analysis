.class public final Lcom/hiya/stingray/manager/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/manager/m3;",
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

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/o0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/l2;",
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
            "Lcom/hiya/stingray/q/b/v;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/o0;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/l2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/n3;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/n3;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/manager/n3;->c:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/manager/n3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/v;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/o0;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/l2;",
            ">;)",
            "Lcom/hiya/stingray/manager/n3;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/n3;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/stingray/manager/n3;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/manager/m3;
    .locals 4

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/m3;

    iget-object v1, p0, Lcom/hiya/stingray/manager/n3;->a:Lj/a/a;

    .line 2
    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/b/v;

    iget-object v2, p0, Lcom/hiya/stingray/manager/n3;->b:Lj/a/a;

    .line 3
    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/t/i1/o0;

    iget-object v3, p0, Lcom/hiya/stingray/manager/n3;->c:Lj/a/a;

    .line 4
    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/manager/l2;

    invoke-direct {v0, v1, v2, v3}, Lcom/hiya/stingray/manager/m3;-><init>(Lcom/hiya/stingray/q/b/v;Lcom/hiya/stingray/t/i1/o0;Lcom/hiya/stingray/manager/l2;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/n3;->b()Lcom/hiya/stingray/manager/m3;

    move-result-object v0

    return-object v0
.end method
