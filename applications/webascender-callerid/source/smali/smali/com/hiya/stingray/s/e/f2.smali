.class public final Lcom/hiya/stingray/s/e/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/q/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/s/e/e2;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/s/e/e2;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/e2;",
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/s/e/f2;->a:Lcom/hiya/stingray/s/e/e2;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/s/e/f2;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lcom/hiya/stingray/s/e/e2;Lj/a/a;)Lcom/hiya/stingray/s/e/f2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/e2;",
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Lcom/hiya/stingray/s/e/f2;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/s/e/f2;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/s/e/f2;-><init>(Lcom/hiya/stingray/s/e/e2;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/stingray/s/e/e2;Landroid/content/SharedPreferences;)Lcom/hiya/stingray/q/d/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/s/e/e2;->a(Landroid/content/SharedPreferences;)Lcom/hiya/stingray/q/d/a;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/stingray/q/d/a;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/q/d/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/f2;->a:Lcom/hiya/stingray/s/e/e2;

    iget-object v1, p0, Lcom/hiya/stingray/s/e/f2;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/hiya/stingray/s/e/f2;->c(Lcom/hiya/stingray/s/e/e2;Landroid/content/SharedPreferences;)Lcom/hiya/stingray/q/d/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/f2;->b()Lcom/hiya/stingray/q/d/a;

    move-result-object v0

    return-object v0
.end method
