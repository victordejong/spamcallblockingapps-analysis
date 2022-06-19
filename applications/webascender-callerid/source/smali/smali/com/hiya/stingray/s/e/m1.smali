.class public final Lcom/hiya/stingray/s/e/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/ui/callergrid/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/s/e/h1;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/p;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/u;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/ui/login/o;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/s/e/h1;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/h1;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/k;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/p;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/u;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/ui/login/o;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/s/e/m1;->a:Lcom/hiya/stingray/s/e/h1;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/s/e/m1;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/s/e/m1;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/s/e/m1;->d:Lj/a/a;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/s/e/m1;->e:Lj/a/a;

    .line 7
    iput-object p6, p0, Lcom/hiya/stingray/s/e/m1;->f:Lj/a/a;

    .line 8
    iput-object p7, p0, Lcom/hiya/stingray/s/e/m1;->g:Lj/a/a;

    return-void
.end method

.method public static a(Lcom/hiya/stingray/s/e/h1;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/s/e/m1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/h1;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/k;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/p;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/u;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/ui/login/o;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/k;",
            ">;)",
            "Lcom/hiya/stingray/s/e/m1;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/hiya/stingray/s/e/m1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/hiya/stingray/s/e/m1;-><init>(Lcom/hiya/stingray/s/e/h1;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v8
.end method

.method public static c(Lcom/hiya/stingray/s/e/h1;Lcom/hiya/stingray/q/b/k;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/q/b/p;Lcom/hiya/stingray/q/b/u;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/t/i1/k;)Lcom/hiya/stingray/ui/callergrid/j;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/hiya/stingray/s/e/h1;->e(Lcom/hiya/stingray/q/b/k;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/q/b/p;Lcom/hiya/stingray/q/b/u;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/t/i1/k;)Lcom/hiya/stingray/ui/callergrid/j;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/stingray/ui/callergrid/j;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/ui/callergrid/j;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/m1;->a:Lcom/hiya/stingray/s/e/h1;

    iget-object v1, p0, Lcom/hiya/stingray/s/e/m1;->b:Lj/a/a;

    .line 2
    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/b/k;

    iget-object v2, p0, Lcom/hiya/stingray/s/e/m1;->c:Lj/a/a;

    .line 3
    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/q/d/a;

    iget-object v3, p0, Lcom/hiya/stingray/s/e/m1;->d:Lj/a/a;

    .line 4
    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/q/b/p;

    iget-object v4, p0, Lcom/hiya/stingray/s/e/m1;->e:Lj/a/a;

    .line 5
    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/stingray/q/b/u;

    iget-object v5, p0, Lcom/hiya/stingray/s/e/m1;->f:Lj/a/a;

    .line 6
    invoke-interface {v5}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hiya/stingray/ui/login/o;

    iget-object v6, p0, Lcom/hiya/stingray/s/e/m1;->g:Lj/a/a;

    .line 7
    invoke-interface {v6}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hiya/stingray/t/i1/k;

    .line 8
    invoke-static/range {v0 .. v6}, Lcom/hiya/stingray/s/e/m1;->c(Lcom/hiya/stingray/s/e/h1;Lcom/hiya/stingray/q/b/k;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/q/b/p;Lcom/hiya/stingray/q/b/u;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/t/i1/k;)Lcom/hiya/stingray/ui/callergrid/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/m1;->b()Lcom/hiya/stingray/ui/callergrid/j;

    move-result-object v0

    return-object v0
.end method
