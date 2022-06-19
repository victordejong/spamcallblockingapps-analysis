.class public final Le/a/a/g1/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g1/c;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/w/d;

.field public final synthetic b:Le/a/a/g1/c;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/a/g1/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g1/c$g;->a:Ls1/w/d;

    iput-object p2, p0, Le/a/a/g1/c$g;->b:Le/a/a/g1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    :cond_1
    if-eqz v1, :cond_2

    .line 3
    iget-object p1, v1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "und"

    .line 4
    :goto_1
    iget-object v0, p0, Le/a/a/g1/c$g;->a:Ls1/w/d;

    new-instance v2, Le/a/a/g1/a;

    if-eqz v1, :cond_3

    .line 5
    iget v1, v1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b:F

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 6
    :goto_2
    iget-object v3, p0, Le/a/a/g1/c$g;->b:Le/a/a/g1/c;

    invoke-virtual {v3}, Le/a/a/g1/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v1, v3}, Le/a/a/g1/a;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    invoke-interface {v0, v2}, Ls1/w/d;->c(Ljava/lang/Object;)V

    return-void
.end method
