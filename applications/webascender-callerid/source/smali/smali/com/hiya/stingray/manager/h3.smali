.class public final Lcom/hiya/stingray/manager/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/manager/g3;",
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
            "Lcom/hiya/stingray/manager/u3;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/x3;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/p4/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/util/a0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/i1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/u3;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/x3;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/p4/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/util/a0;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/i1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/h3;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/h3;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/manager/h3;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/manager/h3;->d:Lj/a/a;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/manager/h3;->e:Lj/a/a;

    .line 7
    iput-object p6, p0, Lcom/hiya/stingray/manager/h3;->f:Lj/a/a;

    .line 8
    iput-object p7, p0, Lcom/hiya/stingray/manager/h3;->g:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/manager/h3;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/u3;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/x3;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/p4/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/d/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/util/a0;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/i1;",
            ">;)",
            "Lcom/hiya/stingray/manager/h3;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/hiya/stingray/manager/h3;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/hiya/stingray/manager/h3;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v8
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/manager/g3;
    .locals 9

    .line 1
    new-instance v8, Lcom/hiya/stingray/manager/g3;

    iget-object v0, p0, Lcom/hiya/stingray/manager/h3;->a:Lj/a/a;

    .line 2
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/hiya/stingray/manager/h3;->b:Lj/a/a;

    .line 3
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/hiya/stingray/manager/u3;

    iget-object v0, p0, Lcom/hiya/stingray/manager/h3;->c:Lj/a/a;

    .line 4
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/hiya/stingray/manager/x3;

    iget-object v0, p0, Lcom/hiya/stingray/manager/h3;->d:Lj/a/a;

    .line 5
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/hiya/stingray/manager/p4/a;

    iget-object v0, p0, Lcom/hiya/stingray/manager/h3;->e:Lj/a/a;

    .line 6
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/hiya/stingray/q/d/a;

    iget-object v0, p0, Lcom/hiya/stingray/manager/h3;->f:Lj/a/a;

    .line 7
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/hiya/stingray/util/a0;

    iget-object v0, p0, Lcom/hiya/stingray/manager/h3;->g:Lj/a/a;

    .line 8
    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/hiya/stingray/manager/i1;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/hiya/stingray/manager/g3;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/manager/p4/a;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/i1;)V

    return-object v8
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/h3;->b()Lcom/hiya/stingray/manager/g3;

    move-result-object v0

    return-object v0
.end method
