.class public final Lcom/hiya/stingray/s/e/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Landroid/app/job/JobInfo$Builder;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/s/e/m;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/app/job/JobInfo$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/app/job/JobInfo$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/s/e/m;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/m;",
            "Lj/a/a<",
            "Landroid/app/job/JobInfo$Builder;",
            ">;",
            "Lj/a/a<",
            "Landroid/app/job/JobInfo$Builder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/s/e/f0;->a:Lcom/hiya/stingray/s/e/m;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/s/e/f0;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/s/e/f0;->c:Lj/a/a;

    return-void
.end method

.method public static a(Lcom/hiya/stingray/s/e/m;Lj/a/a;Lj/a/a;)Lcom/hiya/stingray/s/e/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/m;",
            "Lj/a/a<",
            "Landroid/app/job/JobInfo$Builder;",
            ">;",
            "Lj/a/a<",
            "Landroid/app/job/JobInfo$Builder;",
            ">;)",
            "Lcom/hiya/stingray/s/e/f0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/s/e/f0;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/stingray/s/e/f0;-><init>(Lcom/hiya/stingray/s/e/m;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/stingray/s/e/m;Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$Builder;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/m;",
            "Landroid/app/job/JobInfo$Builder;",
            "Landroid/app/job/JobInfo$Builder;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/job/JobInfo$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/s/e/m;->s(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$Builder;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/job/JobInfo$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/f0;->a:Lcom/hiya/stingray/s/e/m;

    iget-object v1, p0, Lcom/hiya/stingray/s/e/f0;->b:Lj/a/a;

    .line 2
    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo$Builder;

    iget-object v2, p0, Lcom/hiya/stingray/s/e/f0;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo$Builder;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/s/e/f0;->c(Lcom/hiya/stingray/s/e/m;Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$Builder;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/f0;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
