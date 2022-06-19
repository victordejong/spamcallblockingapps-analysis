.class public final Lcom/hiya/stingray/s/e/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/q/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/s/e/v1;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/a/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/j;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/s/e/v1;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/v1;",
            "Lj/a/a<",
            "Lg/g/a/a/g/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/j;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/a;",
            ">;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/s/e/w1;->a:Lcom/hiya/stingray/s/e/v1;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/s/e/w1;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/s/e/w1;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/s/e/w1;->d:Lj/a/a;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/s/e/w1;->e:Lj/a/a;

    return-void
.end method

.method public static a(Lcom/hiya/stingray/s/e/v1;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/s/e/w1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/v1;",
            "Lj/a/a<",
            "Lg/g/a/a/g/a;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/j;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/t/i1/a;",
            ">;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/hiya/stingray/s/e/w1;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/hiya/stingray/s/e/w1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/s/e/w1;-><init>(Lcom/hiya/stingray/s/e/v1;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v6
.end method

.method public static c(Lcom/hiya/stingray/s/e/v1;Lg/g/a/a/g/a;Lcom/hiya/stingray/q/b/j;Lcom/hiya/stingray/t/i1/a;Landroid/content/Context;)Lcom/hiya/stingray/q/a/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/s/e/v1;->a(Lg/g/a/a/g/a;Lcom/hiya/stingray/q/b/j;Lcom/hiya/stingray/t/i1/a;Landroid/content/Context;)Lcom/hiya/stingray/q/a/i;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/stingray/q/a/i;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/q/a/i;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/w1;->a:Lcom/hiya/stingray/s/e/v1;

    iget-object v1, p0, Lcom/hiya/stingray/s/e/w1;->b:Lj/a/a;

    .line 2
    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/a/a/g/a;

    iget-object v2, p0, Lcom/hiya/stingray/s/e/w1;->c:Lj/a/a;

    .line 3
    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/q/b/j;

    iget-object v3, p0, Lcom/hiya/stingray/s/e/w1;->d:Lj/a/a;

    .line 4
    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/t/i1/a;

    iget-object v4, p0, Lcom/hiya/stingray/s/e/w1;->e:Lj/a/a;

    .line 5
    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Lcom/hiya/stingray/s/e/w1;->c(Lcom/hiya/stingray/s/e/v1;Lg/g/a/a/g/a;Lcom/hiya/stingray/q/b/j;Lcom/hiya/stingray/t/i1/a;Landroid/content/Context;)Lcom/hiya/stingray/q/a/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/w1;->b()Lcom/hiya/stingray/q/a/i;

    move-result-object v0

    return-object v0
.end method
