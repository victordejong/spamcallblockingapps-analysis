.class public final Lcom/hiya/stingray/s/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;",
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


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/s/e/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/a;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/s/e/e;->a:Lcom/hiya/stingray/s/e/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/s/e/e;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lcom/hiya/stingray/s/e/a;Lj/a/a;)Lcom/hiya/stingray/s/e/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/s/e/a;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/hiya/stingray/s/e/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/s/e/e;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/s/e/e;-><init>(Lcom/hiya/stingray/s/e/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/stingray/s/e/a;Landroid/content/Context;)Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/s/e/a;->d(Landroid/content/Context;)Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/e;->a:Lcom/hiya/stingray/s/e/a;

    iget-object v1, p0, Lcom/hiya/stingray/s/e/e;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/hiya/stingray/s/e/e;->c(Lcom/hiya/stingray/s/e/a;Landroid/content/Context;)Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/e;->b()Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    move-result-object v0

    return-object v0
.end method
