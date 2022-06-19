.class public final Lcom/hiya/stingray/ui/customblock/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Li/c/b0/k/a<",
            "Lcom/trello/rxlifecycle4/d/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Li/c/b0/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/lang/String;",
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
            "Li/c/b0/k/a<",
            "Lcom/trello/rxlifecycle4/d/b;",
            ">;>;",
            "Lj/a/a<",
            "Li/c/b0/c/a;",
            ">;",
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/e1;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/j;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/customblock/j;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/ui/customblock/j;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/ui/customblock/j;->d:Lj/a/a;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/ui/customblock/j;->e:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/ui/customblock/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Li/c/b0/k/a<",
            "Lcom/trello/rxlifecycle4/d/b;",
            ">;>;",
            "Lj/a/a<",
            "Li/c/b0/c/a;",
            ">;",
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/e1;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/f;",
            ">;)",
            "Lcom/hiya/stingray/ui/customblock/j;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/hiya/stingray/ui/customblock/j;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/ui/customblock/j;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v6
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/j;->a:Lj/a/a;

    .line 3
    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/c/b0/k/a;

    .line 4
    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/common/h;->b(Lcom/hiya/stingray/ui/common/g;Li/c/b0/k/a;)V

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/j;->b:Lj/a/a;

    .line 6
    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/c/b0/c/a;

    .line 7
    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/common/h;->a(Lcom/hiya/stingray/ui/common/g;Li/c/b0/c/a;)V

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/j;->c:Lj/a/a;

    .line 9
    invoke-static {v1}, Lh/b/a;->a(Lj/a/a;)Lh/a;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/customblock/k;->b(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;Lh/a;)V

    .line 11
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/j;->d:Lj/a/a;

    .line 12
    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/manager/e1;

    .line 13
    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/customblock/k;->a(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;Lcom/hiya/stingray/manager/e1;)V

    .line 14
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/j;->e:Lj/a/a;

    .line 15
    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/d/f;

    .line 16
    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/customblock/k;->c(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;Lcom/hiya/stingray/q/d/f;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/customblock/j;->b()Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    move-result-object v0

    return-object v0
.end method
