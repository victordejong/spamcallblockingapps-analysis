.class public final Lcom/appnext/base/moments/a/b/b;
.super Lcom/appnext/base/moments/a/b/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "collected_data_table"

    .line 1
    invoke-direct {p0, v0}, Lcom/appnext/base/moments/a/b/d;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static ah()Ljava/lang/String;
    .locals 2

    const-string v0, "collected_data_table"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/appnext/base/moments/a/b/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
