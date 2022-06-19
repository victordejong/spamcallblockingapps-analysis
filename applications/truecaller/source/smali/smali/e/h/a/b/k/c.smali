.class public final Le/h/a/b/k/c;
.super Le/h/a/b/k/i;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u00070\u0006H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/validators/CarouselTemplateValidator;",
        "Lcom/clevertap/android/pushtemplates/validators/TemplateValidator;",
        "validator",
        "Lcom/clevertap/android/pushtemplates/validators/Validator;",
        "(Lcom/clevertap/android/pushtemplates/validators/Validator;)V",
        "loadKeys",
        "",
        "Lcom/clevertap/android/pushtemplates/checkers/Checker;",
        "",
        "validate",
        "",
        "clevertap-pushtemplates_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public b:Le/h/a/b/k/k;


# direct methods
.method public constructor <init>(Le/h/a/b/k/k;)V
    .locals 1

    const-string v0, "validator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/h/a/b/k/k;->a:Ljava/util/Map;

    .line 2
    invoke-direct {p0, v0}, Le/h/a/b/k/i;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Le/h/a/b/k/c;->b:Le/h/a/b/k/k;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/h/a/b/h/a<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Le/h/a/b/h/a;

    .line 1
    iget-object v1, p0, Le/h/a/b/k/k;->a:Ljava/util/Map;

    const-string v2, "PT_DEEPLINK_LIST"

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    check-cast v1, Le/h/a/b/h/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Le/h/a/b/k/k;->a:Ljava/util/Map;

    const-string v3, "PT_IMAGE_LIST"

    .line 4
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    check-cast v2, Le/h/a/b/h/a;

    aput-object v2, v0, v1

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/b/k/c;->b:Le/h/a/b/k/k;

    invoke-virtual {v0}, Le/h/a/b/k/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/h/a/b/k/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
