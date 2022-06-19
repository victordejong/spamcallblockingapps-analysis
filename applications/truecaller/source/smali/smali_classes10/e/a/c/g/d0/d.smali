.class public final Le/a/c/g/d0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J+\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u000bJ\u001b\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u000cJ&\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000e2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000e2\u0006\u0010\u0008\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/insights/categorizer/seed/MetaTrie;",
        "T",
        "",
        "()V",
        "root",
        "Lcom/truecaller/insights/categorizer/seed/TrieNode;",
        "add",
        "",
        "input",
        "",
        "probability",
        "(Lcom/truecaller/insights/categorizer/seed/TrieNode;Ljava/lang/String;Ljava/lang/Object;)V",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "get",
        "Lcom/truecaller/insights/categorizer/seed/TrieNode$EndNode;",
        "insights-categorizer"
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
.field public final a:Le/a/c/g/d0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c/g/d0/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/c/g/d0/e$b;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Le/a/c/g/d0/e$b;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Le/a/c/g/d0/d;->a:Le/a/c/g/d0/e;

    return-void
.end method


# virtual methods
.method public final a(Le/a/c/g/d0/e;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/d0/e<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p1, p1, Le/a/c/g/d0/e;->a:Ljava/util/Map;

    .line 3
    invoke-static {p2}, Ls1/f0/w;->k0(Ljava/lang/CharSequence;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/g/d0/e;

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 5
    invoke-static {p2}, Ls1/f0/w;->k0(Ljava/lang/CharSequence;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Le/a/c/g/d0/e$b;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v3, v4}, Le/a/c/g/d0/e$b;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ls1/f0/w;->k0(Ljava/lang/CharSequence;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    check-cast p1, Le/a/c/g/d0/e;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Le/a/c/g/d0/d;->a(Le/a/c/g/d0/e;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {p2}, Ls1/f0/w;->k0(Ljava/lang/CharSequence;)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    new-instance v0, Le/a/c/g/d0/e$a;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1, p3}, Le/a/c/g/d0/e$a;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 9
    invoke-static {p2}, Ls1/f0/w;->k0(Ljava/lang/CharSequence;)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    new-instance v1, Le/a/c/g/d0/e$a;

    .line 10
    iget-object v0, v0, Le/a/c/g/d0/e;->a:Ljava/util/Map;

    .line 11
    invoke-direct {v1, v0, p3}, Le/a/c/g/d0/e$a;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p3}, Le/a/c/g/d0/d;->a(Le/a/c/g/d0/e;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/g/d0/d;->a:Le/a/c/g/d0/e;

    invoke-virtual {p0, v0, p1, p2}, Le/a/c/g/d0/d;->a(Le/a/c/g/d0/e;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Le/a/c/g/d0/e;Ljava/lang/String;)Le/a/c/g/d0/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/d0/e<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Le/a/c/g/d0/e$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Le/a/c/g/d0/e;->a:Ljava/util/Map;

    .line 2
    invoke-static {p2}, Ls1/f0/w;->k0(Ljava/lang/CharSequence;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/g/d0/e;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4
    instance-of p2, p1, Le/a/c/g/d0/e$a;

    if-eqz p2, :cond_1

    check-cast p1, Le/a/c/g/d0/e$a;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le/a/c/g/d0/d;->c(Le/a/c/g/d0/e;Ljava/lang/String;)Le/a/c/g/d0/e$a;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final d(Ljava/lang/String;)Le/a/c/g/d0/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/c/g/d0/e$a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/g/d0/d;->a:Le/a/c/g/d0/e;

    invoke-virtual {p0, v0, p1}, Le/a/c/g/d0/d;->c(Le/a/c/g/d0/e;Ljava/lang/String;)Le/a/c/g/d0/e$a;

    move-result-object p1

    return-object p1
.end method
