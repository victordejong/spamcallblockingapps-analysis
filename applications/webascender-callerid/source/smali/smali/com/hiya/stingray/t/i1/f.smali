.class public final Lcom/hiya/stingray/t/i1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/t/i1/e;",
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
            "Lcom/hiya/stingray/t/i1/t0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/z;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/l2;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/t0;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/z;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/l2;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/i1/f;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/t/i1/f;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/t/i1/f;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/t/i1/f;->d:Lj/a/a;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/t/i1/f;->e:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/t/i1/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/t0;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/z;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/l2;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/f;",
            ">;)",
            "Lcom/hiya/stingray/t/i1/f;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/hiya/stingray/t/i1/f;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/t/i1/f;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v6
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/t/i1/e;
    .locals 7

    .line 1
    new-instance v6, Lcom/hiya/stingray/t/i1/e;

    iget-object v0, p0, Lcom/hiya/stingray/t/i1/f;->a:Lj/a/a;

    .line 2
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/hiya/stingray/t/i1/f;->b:Lj/a/a;

    .line 3
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/hiya/stingray/t/i1/t0;

    iget-object v0, p0, Lcom/hiya/stingray/t/i1/f;->c:Lj/a/a;

    .line 4
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/hiya/stingray/t/i1/z;

    iget-object v0, p0, Lcom/hiya/stingray/t/i1/f;->d:Lj/a/a;

    .line 5
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/hiya/stingray/manager/l2;

    iget-object v0, p0, Lcom/hiya/stingray/t/i1/f;->e:Lj/a/a;

    .line 6
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/hiya/stingray/q/d/f;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/t/i1/e;-><init>(Landroid/content/Context;Lcom/hiya/stingray/t/i1/t0;Lcom/hiya/stingray/t/i1/z;Lcom/hiya/stingray/manager/l2;Lcom/hiya/stingray/q/d/f;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/i1/f;->b()Lcom/hiya/stingray/t/i1/e;

    move-result-object v0

    return-object v0
.end method
