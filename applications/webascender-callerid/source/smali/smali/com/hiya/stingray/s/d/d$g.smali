.class Lcom/hiya/stingray/s/d/d$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/s/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj/a/a<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/s/d/h;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/s/d/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/s/d/d$g;->a:Lcom/hiya/stingray/s/d/h;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/d/d$g;->a:Lcom/hiya/stingray/s/d/h;

    .line 2
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/d/d$g;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
