.class public final Lcom/hiya/stingray/s/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/ui/local/location/a;",
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
            "Lcom/hiya/stingray/manager/e1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/s/e/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/a;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/e1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/s/e/d;->a:Lcom/hiya/stingray/s/e/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/s/e/d;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/s/e/d;->c:Lj/a/a;

    return-void
.end method

.method public static a(Lcom/hiya/stingray/s/e/a;Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/s/e/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/a;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/e1;",
            ">;)",
            "Lcom/hiya/stingray/s/e/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/s/e/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/stingray/s/e/d;-><init>(Lcom/hiya/stingray/s/e/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/stingray/s/e/a;Landroid/content/Context;Lcom/hiya/stingray/manager/e1;)Lcom/hiya/stingray/ui/local/location/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/s/e/a;->c(Landroid/content/Context;Lcom/hiya/stingray/manager/e1;)Lcom/hiya/stingray/ui/local/location/a;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/stingray/ui/local/location/a;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/ui/local/location/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/d;->a:Lcom/hiya/stingray/s/e/a;

    iget-object v1, p0, Lcom/hiya/stingray/s/e/d;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/hiya/stingray/s/e/d;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/manager/e1;

    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/s/e/d;->c(Lcom/hiya/stingray/s/e/a;Landroid/content/Context;Lcom/hiya/stingray/manager/e1;)Lcom/hiya/stingray/ui/local/location/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/d;->b()Lcom/hiya/stingray/ui/local/location/a;

    move-result-object v0

    return-object v0
.end method
