.class public final Le/a/a0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a0/p;


# instance fields
.field public final a:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a0/q;->a:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public a(ILcom/truecaller/data/entity/SpamCategoryModel;IZ)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-gtz p1, :cond_0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/data/entity/SpamCategoryModel;->getLabel()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz p1, :cond_3

    move-object p1, v0

    goto :goto_2

    .line 2
    :cond_3
    iget-object v3, p0, Le/a/a0/q;->a:Le/a/p5/c0;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-interface {v3, p3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "resourceProvider.getString(template, spamScore)"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    const-string v3, "Locale.getDefault()"

    invoke-static {p4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    const-string v3, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object p4, p2

    :goto_3
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_5

    move p4, v2

    goto :goto_4

    :cond_5
    move p4, v1

    :goto_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_6

    move v1, v2

    :cond_6
    xor-int p2, p4, v1

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    const-string v0, " \u00b7 "

    :goto_5
    invoke-static {p3, v0, p1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
