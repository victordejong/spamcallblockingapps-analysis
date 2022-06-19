.class public final Lcom/hiya/stingray/manager/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/manager/r3;",
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
            "Lcom/hiya/stingray/manager/h2;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/o2;",
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


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/h2;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/o2;",
            ">;",
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/s3;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/s3;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/manager/s3;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/manager/s3;->d:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/manager/s3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/h2;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/manager/o2;",
            ">;",
            "Lj/a/a<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hiya/stingray/manager/s3;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/s3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hiya/stingray/manager/s3;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/hiya/stingray/manager/h2;Lcom/hiya/stingray/manager/o2;)Lcom/hiya/stingray/manager/r3;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/r3;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/stingray/manager/r3;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/h2;Lcom/hiya/stingray/manager/o2;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/manager/r3;
    .locals 4

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/r3;

    iget-object v1, p0, Lcom/hiya/stingray/manager/s3;->a:Lj/a/a;

    .line 2
    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/hiya/stingray/manager/s3;->b:Lj/a/a;

    .line 3
    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/manager/h2;

    iget-object v3, p0, Lcom/hiya/stingray/manager/s3;->c:Lj/a/a;

    .line 4
    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/manager/o2;

    invoke-direct {v0, v1, v2, v3}, Lcom/hiya/stingray/manager/r3;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/h2;Lcom/hiya/stingray/manager/o2;)V

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/manager/s3;->d:Lj/a/a;

    .line 6
    invoke-static {v1}, Lh/b/a;->a(Lj/a/a;)Lh/a;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/hiya/stingray/manager/t3;->a(Lcom/hiya/stingray/manager/r3;Lh/a;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/s3;->b()Lcom/hiya/stingray/manager/r3;

    move-result-object v0

    return-object v0
.end method
