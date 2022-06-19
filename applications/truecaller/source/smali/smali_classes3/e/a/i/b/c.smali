.class public final Le/a/i/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    iget-object v0, v0, Lcom/truecaller/ads/CustomTemplate;->templateId:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/a/i/b/c;->a:Ljava/util/Set;

    return-void
.end method

.method public static final a(Le/a/i/f0/m/c;)Le/a/i/b/b;
    .locals 1

    const-string v0, "$this$asCustomNativeAd"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/i/b/b;

    invoke-direct {v0, p0}, Le/a/i/b/b;-><init>(Le/a/i/f0/m/c;)V

    return-object v0
.end method
