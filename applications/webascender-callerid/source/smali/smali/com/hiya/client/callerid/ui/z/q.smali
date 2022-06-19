.class public final Lcom/hiya/client/callerid/ui/z/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/ui/f;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/hiya/client/callerid/ui/z/l;Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/a0/f;)Lcom/hiya/client/callerid/ui/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/client/callerid/ui/z/l;->e(Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/a0/f;)Lcom/hiya/client/callerid/ui/f;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/client/callerid/ui/f;

    return-object p0
.end method
