.class public final Lcom/hiya/stingray/s/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/ui/premium/y;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/s/e/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/s/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/s/e/g;->a:Lcom/hiya/stingray/s/e/a;

    return-void
.end method

.method public static a(Lcom/hiya/stingray/s/e/a;)Lcom/hiya/stingray/s/e/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/s/e/g;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/s/e/g;-><init>(Lcom/hiya/stingray/s/e/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/stingray/s/e/a;)Lcom/hiya/stingray/ui/premium/y;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/a;->f()Lcom/hiya/stingray/ui/premium/y;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/stingray/ui/premium/y;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/ui/premium/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/s/e/g;->a:Lcom/hiya/stingray/s/e/a;

    invoke-static {v0}, Lcom/hiya/stingray/s/e/g;->c(Lcom/hiya/stingray/s/e/a;)Lcom/hiya/stingray/ui/premium/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/g;->b()Lcom/hiya/stingray/ui/premium/y;

    move-result-object v0

    return-object v0
.end method
