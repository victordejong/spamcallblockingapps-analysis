.class public final Lcom/hiya/stingray/manager/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/manager/s2;",
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
            "Lcom/hiya/stingray/manager/x3;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/e1;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/util/a0;",
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
            "Lcom/hiya/stingray/manager/x3;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/f;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/e1;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/util/a0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/t2;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/t2;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/manager/t2;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/manager/t2;->d:Lj/a/a;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/manager/t2;->e:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/manager/t2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/x3;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/f;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/e1;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/util/a0;",
            ">;)",
            "Lcom/hiya/stingray/manager/t2;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/hiya/stingray/manager/t2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/manager/t2;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v6
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/manager/s2;
    .locals 7

    .line 1
    new-instance v6, Lcom/hiya/stingray/manager/s2;

    iget-object v0, p0, Lcom/hiya/stingray/manager/t2;->a:Lj/a/a;

    .line 2
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/hiya/stingray/manager/t2;->b:Lj/a/a;

    .line 3
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/hiya/stingray/manager/x3;

    iget-object v0, p0, Lcom/hiya/stingray/manager/t2;->c:Lj/a/a;

    .line 4
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/hiya/stingray/q/d/f;

    iget-object v0, p0, Lcom/hiya/stingray/manager/t2;->d:Lj/a/a;

    .line 5
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/hiya/stingray/manager/e1;

    iget-object v0, p0, Lcom/hiya/stingray/manager/t2;->e:Lj/a/a;

    .line 6
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/hiya/stingray/util/a0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/manager/s2;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/util/a0;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/t2;->b()Lcom/hiya/stingray/manager/s2;

    move-result-object v0

    return-object v0
.end method
