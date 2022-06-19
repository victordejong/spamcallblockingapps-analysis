.class public final Lcom/hiya/stingray/s/e/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/q/b/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/s/e/y0;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/s/e/y0;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/y0;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/s/e/z0;->a:Lcom/hiya/stingray/s/e/y0;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/s/e/z0;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lcom/hiya/stingray/s/e/y0;Lj/a/a;)Lcom/hiya/stingray/s/e/z0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/y0;",
            "Lj/a/a<",
            "Lcom/hiya/stingray/q/b/v;",
            ">;)",
            "Lcom/hiya/stingray/s/e/z0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/s/e/z0;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/s/e/z0;-><init>(Lcom/hiya/stingray/s/e/y0;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/stingray/s/e/y0;Lcom/hiya/stingray/q/b/v;)Lcom/hiya/stingray/q/b/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/s/e/y0;->a(Lcom/hiya/stingray/q/b/v;)Lcom/hiya/stingray/q/b/j;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/stingray/q/b/j;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/q/b/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/z0;->a:Lcom/hiya/stingray/s/e/y0;

    iget-object v1, p0, Lcom/hiya/stingray/s/e/z0;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/b/v;

    invoke-static {v0, v1}, Lcom/hiya/stingray/s/e/z0;->c(Lcom/hiya/stingray/s/e/y0;Lcom/hiya/stingray/q/b/v;)Lcom/hiya/stingray/q/b/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/z0;->b()Lcom/hiya/stingray/q/b/j;

    move-result-object v0

    return-object v0
.end method
