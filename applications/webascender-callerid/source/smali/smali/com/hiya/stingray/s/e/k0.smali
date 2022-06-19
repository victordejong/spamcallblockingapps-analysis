.class public final Lcom/hiya/stingray/s/e/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/squareup/picasso/Picasso;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/hiya/stingray/s/e/m;Landroid/content/Context;)Lcom/squareup/picasso/Picasso;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/s/e/m;->x(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/squareup/picasso/Picasso;

    return-object p0
.end method
