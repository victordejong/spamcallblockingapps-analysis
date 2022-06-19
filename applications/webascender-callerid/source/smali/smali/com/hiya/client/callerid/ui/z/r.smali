.class public final Lcom/hiya/client/callerid/ui/z/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/ui/a0/h;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/hiya/client/callerid/ui/z/l;Landroid/content/Context;)Lcom/hiya/client/callerid/ui/a0/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/z/l;->f(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/a0/h;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/client/callerid/ui/a0/h;

    return-object p0
.end method
