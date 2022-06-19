.class public final Le/a/c/g/c0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/c0/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u000c\u0010\u0008\u001a\u00020\u0006*\u00020\u0006H\u0002J\u000c\u0010\t\u001a\u00020\u0006*\u00020\u0006H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/truecaller/insights/categorizer/preprocessing/LocaleAwarePreprocessingImpl;",
        "Lcom/truecaller/insights/categorizer/preprocessing/LocaleAwarePreprocessing;",
        "currentLocale",
        "Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;",
        "(Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;)V",
        "processString",
        "",
        "message",
        "arabicProcessing",
        "globalProcessing",
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
.field public final b:Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;)V
    .locals 1

    const-string v0, "currentLocale"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/g/c0/b;->b:Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/g/c0/b;->b:Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "<this>"

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 2
    sget-object v0, Le/a/c/g/f0/a;->a:Ls1/f0/h;

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Le/a/c/g/f0/a;->a:Ls1/f0/h;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Ls1/f0/h;->a(Ljava/lang/CharSequence;I)Ls1/f0/f;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    .line 5
    :cond_0
    check-cast v0, Ls1/f0/g;

    invoke-virtual {v0}, Ls1/f0/g;->b()Ljava/util/List;

    move-result-object v0

    :goto_0
    const/4 v4, 0x2

    const/16 v5, 0x20

    const-string v6, "NUM"

    if-nez v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v6, v5}, Le/d/c/a/a;->D(Ljava/lang/String;C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_1
    sget-object v0, Le/a/c/g/f0/a;->b:Ls1/f0/h;

    .line 8
    invoke-virtual {v0, p1, v1}, Ls1/f0/h;->a(Ljava/lang/CharSequence;I)Ls1/f0/f;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_2

    .line 9
    :cond_2
    check-cast v0, Ls1/f0/g;

    invoke-virtual {v0}, Ls1/f0/g;->b()Ljava/util/List;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0, v5, v6}, Le/d/c/a/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :goto_3
    sget-object v0, Le/a/c/g/f0/a;->c:Ls1/f0/h;

    .line 12
    invoke-virtual {v0, p1, v1}, Ls1/f0/h;->a(Ljava/lang/CharSequence;I)Ls1/f0/f;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 13
    :cond_4
    check-cast v0, Ls1/f0/g;

    invoke-virtual {v0}, Ls1/f0/g;->b()Ljava/util/List;

    move-result-object v3

    :goto_4
    if-nez v3, :cond_5

    goto :goto_5

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    :goto_5
    sget-object v0, Le/a/c/g/f0/a;->d:Ls1/f0/h;

    invoke-virtual {v0, p1, v6}, Ls1/f0/h;->e(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 16
    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 17
    :cond_7
    sget-object v0, Le/a/c/g/f0/b;->a:Ls1/f0/h;

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Le/a/c/g/f0/b;->a:Ls1/f0/h;

    const-string v1, " "

    invoke-virtual {v0, p1, v1}, Ls1/f0/h;->e(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_6
    return-object p1
.end method
