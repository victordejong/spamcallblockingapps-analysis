.class public final Lcom/hiya/client/callerid/ui/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static a(Lcom/hiya/client/callerid/ui/d;Lcom/hiya/client/callerid/ui/b0/j;ZLcom/hiya/client/callerid/ui/b0/e;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/client/callerid/ui/d;",
            "Lcom/hiya/client/callerid/ui/b0/j;",
            "Z",
            "Lcom/hiya/client/callerid/ui/b0/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/hiya/client/callerid/ui/d$g;",
            ">;"
        }
    .end annotation

    const-string p0, "number"

    invoke-static {p1, p0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/hiya/client/callerid/ui/d$g;->values()[Lcom/hiya/client/callerid/ui/d$g;

    move-result-object p0

    invoke-static {p0}, Lkotlin/s/e;->C([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/hiya/client/callerid/ui/d;Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;ZZ)Z
    .locals 0

    const-string p0, "number"

    invoke-static {p1, p0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
