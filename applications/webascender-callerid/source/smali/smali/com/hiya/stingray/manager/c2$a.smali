.class Lcom/hiya/stingray/manager/c2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/c2;->e(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/n<",
        "Lcom/hiya/stingray/q/c/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/c2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/hiya/stingray/manager/c2$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/q/c/e;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/manager/c2$a;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/q/c/e;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/c2$a;->a(Lcom/hiya/stingray/q/c/e;)Z

    move-result p1

    return p1
.end method
