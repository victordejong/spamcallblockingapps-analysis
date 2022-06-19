.class final Lcom/hiya/client/callerid/dao/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/j;->c()Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/dao/j;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/j$a;->f:Lcom/hiya/client/callerid/dao/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/o/k;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/o/k;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lg/g/a/a/i/o/k;->setTimestamp(J)V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/j$a;->f:Lcom/hiya/client/callerid/dao/j;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/j;->b(Lcom/hiya/client/callerid/dao/j;)Lcom/hiya/client/callerid/prefs/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/prefs/e;->d(Lg/g/a/a/i/o/k;)V

    .line 3
    invoke-virtual {p1}, Lg/g/a/a/i/o/k;->getHashCountries()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/a/a/i/o/k;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/j$a;->a(Lg/g/a/a/i/o/k;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
