.class public final Le/a/l/a/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/a/e0;


# instance fields
.field public final a:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "locale"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/f0;->a:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    const-string v0, "currencyCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/l/a/f0;->a:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    const-string v1, "this"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    const/4 p1, 0x2

    .line 5
    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    long-to-double p1, p2

    const-wide v1, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v1

    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NumberFormat.getCurrency\u2026iv(1000000.00))\n        }"

    .line 7
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
