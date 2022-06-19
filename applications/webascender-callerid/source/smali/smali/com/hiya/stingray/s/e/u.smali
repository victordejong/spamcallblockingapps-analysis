.class public final Lcom/hiya/stingray/s/e/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/q/b/w;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/s/e/m;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/s/e/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/s/e/u;->a:Lcom/hiya/stingray/s/e/m;

    return-void
.end method

.method public static a(Lcom/hiya/stingray/s/e/m;)Lcom/hiya/stingray/s/e/u;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/s/e/u;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/s/e/u;-><init>(Lcom/hiya/stingray/s/e/m;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/stingray/s/e/m;)Lcom/hiya/stingray/q/b/w;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/m;->h()Lcom/hiya/stingray/q/b/w;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/stingray/q/b/w;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/q/b/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/u;->a:Lcom/hiya/stingray/s/e/m;

    invoke-static {v0}, Lcom/hiya/stingray/s/e/u;->c(Lcom/hiya/stingray/s/e/m;)Lcom/hiya/stingray/q/b/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/u;->b()Lcom/hiya/stingray/q/b/w;

    move-result-object v0

    return-object v0
.end method
