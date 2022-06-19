.class public final Lcom/hiya/stingray/s/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/manager/c4;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/s/e/a;

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
            "Lcom/hiya/stingray/ui/login/o;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/o2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/s/e/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/a;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/ui/login/o;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/o2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/s/e/f;->a:Lcom/hiya/stingray/s/e/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/s/e/f;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/s/e/f;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/s/e/f;->d:Lj/a/a;

    return-void
.end method

.method public static a(Lcom/hiya/stingray/s/e/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/s/e/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/a;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/ui/login/o;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/o2;",
            ">;)",
            "Lcom/hiya/stingray/s/e/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/s/e/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hiya/stingray/s/e/f;-><init>(Lcom/hiya/stingray/s/e/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/stingray/s/e/a;Landroid/content/Context;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/o2;)Lcom/hiya/stingray/manager/c4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/hiya/stingray/s/e/a;->e(Landroid/content/Context;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/o2;)Lcom/hiya/stingray/manager/c4;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/stingray/manager/c4;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/manager/c4;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/f;->a:Lcom/hiya/stingray/s/e/a;

    iget-object v1, p0, Lcom/hiya/stingray/s/e/f;->b:Lj/a/a;

    .line 2
    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/hiya/stingray/s/e/f;->c:Lj/a/a;

    .line 3
    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/ui/login/o;

    iget-object v3, p0, Lcom/hiya/stingray/s/e/f;->d:Lj/a/a;

    .line 4
    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/manager/o2;

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/hiya/stingray/s/e/f;->c(Lcom/hiya/stingray/s/e/a;Landroid/content/Context;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/o2;)Lcom/hiya/stingray/manager/c4;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/f;->b()Lcom/hiya/stingray/manager/c4;

    move-result-object v0

    return-object v0
.end method
