.class public final Le/m/a/c/p1/z;
.super Le/m/a/c/p1/y;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Le/m/a/c/p1/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Le/m/a/c/p1/n;",
            ")V"
        }
    .end annotation

    const-string p2, "Response code: "

    .line 1
    invoke-static {p2, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p4, p2}, Le/m/a/c/p1/y;-><init>(Ljava/lang/String;Le/m/a/c/p1/n;I)V

    .line 2
    iput-object p3, p0, Le/m/a/c/p1/z;->a:Ljava/util/Map;

    return-void
.end method
