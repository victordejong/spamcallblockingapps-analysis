.class public final Lcom/hiya/client/callerid/ui/z/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/ui/a0/c;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/hiya/client/callerid/ui/z/l;Landroid/content/Context;Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/a0/k;Lcom/hiya/client/callerid/ui/x/a;Lcom/hiya/client/callerid/ui/a0/d;Lh/a;Lh/a;)Lcom/hiya/client/callerid/ui/a0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/client/callerid/ui/z/l;",
            "Landroid/content/Context;",
            "Lg/g/b/a/b;",
            "Lcom/hiya/client/callerid/ui/a0/k;",
            "Lcom/hiya/client/callerid/ui/x/a;",
            "Lcom/hiya/client/callerid/ui/a0/d;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hiya/client/callerid/ui/a0/c;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p7}, Lcom/hiya/client/callerid/ui/z/l;->a(Landroid/content/Context;Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/a0/k;Lcom/hiya/client/callerid/ui/x/a;Lcom/hiya/client/callerid/ui/a0/d;Lh/a;Lh/a;)Lcom/hiya/client/callerid/ui/a0/c;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/client/callerid/ui/a0/c;

    return-object p0
.end method
