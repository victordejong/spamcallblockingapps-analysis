.class public final Lcom/hiya/stingray/s/e/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/q/b/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/s/e/y0;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/util/a0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/ui/login/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/s/e/y0;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/y0;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/util/a0;",
            ">;",
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/ui/login/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/s/e/e1;->a:Lcom/hiya/stingray/s/e/y0;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/s/e/e1;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/s/e/e1;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/s/e/e1;->d:Lj/a/a;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/s/e/e1;->e:Lj/a/a;

    return-void
.end method

.method public static a(Lcom/hiya/stingray/s/e/y0;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/s/e/e1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/y0;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/util/a0;",
            ">;",
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/ui/login/o;",
            ">;)",
            "Lcom/hiya/stingray/s/e/e1;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/hiya/stingray/s/e/e1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/s/e/e1;-><init>(Lcom/hiya/stingray/s/e/y0;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v6
.end method

.method public static c(Lcom/hiya/stingray/s/e/y0;Landroid/content/Context;Lcom/hiya/stingray/util/a0;Lh/a;Lcom/hiya/stingray/ui/login/o;)Lcom/hiya/stingray/q/b/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/y0;",
            "Landroid/content/Context;",
            "Lcom/hiya/stingray/util/a0;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hiya/stingray/ui/login/o;",
            ")",
            "Lcom/hiya/stingray/q/b/u;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/s/e/y0;->f(Landroid/content/Context;Lcom/hiya/stingray/util/a0;Lh/a;Lcom/hiya/stingray/ui/login/o;)Lcom/hiya/stingray/q/b/u;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/stingray/q/b/u;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/q/b/u;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/e1;->a:Lcom/hiya/stingray/s/e/y0;

    iget-object v1, p0, Lcom/hiya/stingray/s/e/e1;->b:Lj/a/a;

    .line 2
    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/hiya/stingray/s/e/e1;->c:Lj/a/a;

    .line 3
    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/util/a0;

    iget-object v3, p0, Lcom/hiya/stingray/s/e/e1;->d:Lj/a/a;

    .line 4
    invoke-static {v3}, Lh/b/a;->a(Lj/a/a;)Lh/a;

    move-result-object v3

    iget-object v4, p0, Lcom/hiya/stingray/s/e/e1;->e:Lj/a/a;

    .line 5
    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/stingray/ui/login/o;

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Lcom/hiya/stingray/s/e/e1;->c(Lcom/hiya/stingray/s/e/y0;Landroid/content/Context;Lcom/hiya/stingray/util/a0;Lh/a;Lcom/hiya/stingray/ui/login/o;)Lcom/hiya/stingray/q/b/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/e1;->b()Lcom/hiya/stingray/q/b/u;

    move-result-object v0

    return-object v0
.end method
