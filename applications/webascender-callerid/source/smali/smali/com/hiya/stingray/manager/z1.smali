.class public final Lcom/hiya/stingray/manager/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/manager/y1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
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


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/z1;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/z1;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/manager/z1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/u;",
            ">;)",
            "Lcom/hiya/stingray/manager/z1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/z1;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/manager/z1;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/manager/y1;
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/y1;

    iget-object v1, p0, Lcom/hiya/stingray/manager/z1;->a:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/hiya/stingray/manager/z1;->b:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/q/b/u;

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/manager/y1;-><init>(Landroid/content/Context;Lcom/hiya/stingray/q/b/u;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/z1;->b()Lcom/hiya/stingray/manager/y1;

    move-result-object v0

    return-object v0
.end method
