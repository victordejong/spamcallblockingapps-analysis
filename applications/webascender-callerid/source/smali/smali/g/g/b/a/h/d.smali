.class public final Lg/g/b/a/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/b/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lg/g/b/a/h/b;Lcom/hiya/client/callerid/prefs/e;Lcom/hiya/client/callerid/dao/c;Lg/g/b/a/i/d/b;Lg/g/b/a/i/d/a;Lh/a;Lh/a;Lg/g/b/a/i/a;Lh/a;Lh/a;Lh/a;Lh/a;Lh/a;Lh/a;)Lg/g/b/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/a/h/b;",
            "Lcom/hiya/client/callerid/prefs/e;",
            "Lcom/hiya/client/callerid/dao/c;",
            "Lg/g/b/a/i/d/b;",
            "Lg/g/b/a/i/d/a;",
            "Lh/a<",
            "Lcom/hiya/client/callerid/dao/o;",
            ">;",
            "Lh/a<",
            "Lcom/hiya/client/callerid/dao/r;",
            ">;",
            "Lg/g/b/a/i/a;",
            "Lh/a<",
            "Lcom/hiya/client/callerid/dao/w;",
            ">;",
            "Lh/a<",
            "Lcom/hiya/client/callerid/prefs/Cache;",
            ">;",
            "Lh/a<",
            "Lg/g/b/a/j/c;",
            ">;",
            "Lh/a<",
            "Lg/g/b/a/j/n;",
            ">;",
            "Lh/a<",
            "Lg/g/b/a/j/j;",
            ">;",
            "Lh/a<",
            "Lg/g/b/a/j/g;",
            ">;)",
            "Lg/g/b/a/b;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p13}, Lg/g/b/a/h/b;->b(Lcom/hiya/client/callerid/prefs/e;Lcom/hiya/client/callerid/dao/c;Lg/g/b/a/i/d/b;Lg/g/b/a/i/d/a;Lh/a;Lh/a;Lg/g/b/a/i/a;Lh/a;Lh/a;Lh/a;Lh/a;Lh/a;Lh/a;)Lg/g/b/a/b;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/g/b/a/b;

    return-object p0
.end method
