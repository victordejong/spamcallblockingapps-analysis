.class public final Lcom/hiya/stingray/t/i1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/t/i1/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/h2;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/z;",
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
            "Lcom/hiya/stingray/manager/h2;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/z;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/i1/n;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/t/i1/n;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/t/i1/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/h2;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/z;",
            ">;)",
            "Lcom/hiya/stingray/t/i1/n;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/n;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/t/i1/n;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/t/i1/m;
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i1/m;

    iget-object v1, p0, Lcom/hiya/stingray/t/i1/n;->a:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/manager/h2;

    iget-object v2, p0, Lcom/hiya/stingray/t/i1/n;->b:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/t/i1/z;

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/t/i1/m;-><init>(Lcom/hiya/stingray/manager/h2;Lcom/hiya/stingray/t/i1/z;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/i1/n;->b()Lcom/hiya/stingray/t/i1/m;

    move-result-object v0

    return-object v0
.end method
