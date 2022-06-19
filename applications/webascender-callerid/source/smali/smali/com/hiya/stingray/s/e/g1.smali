.class public final Lcom/hiya/stingray/s/e/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/ui/common/error/c;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/hiya/stingray/s/e/f1;)Lcom/hiya/stingray/ui/common/error/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/s/e/f1;->a()Lcom/hiya/stingray/ui/common/error/c;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/stingray/ui/common/error/c;

    return-object p0
.end method
