.class public final Le/a/g/j/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/c0;

.field public final b:Le/a/o5/b0;

.field public final c:Le/a/b0/q/l0;

.field public final d:Le/a/p5/c;

.field public final e:Le/a/b0/q/z;

.field public final f:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/o5/b0;Le/a/b0/q/l0;Le/a/p5/c;Le/a/b0/q/z;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/g;->a:Le/a/p5/c0;

    iput-object p2, p0, Le/a/g/j/g;->b:Le/a/o5/b0;

    iput-object p3, p0, Le/a/g/j/g;->c:Le/a/b0/q/l0;

    iput-object p4, p0, Le/a/g/j/g;->d:Le/a/p5/c;

    iput-object p5, p0, Le/a/g/j/g;->e:Le/a/b0/q/z;

    iput-object p6, p0, Le/a/g/j/g;->f:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Lcom/truecaller/data/entity/Number;
    .locals 1

    .line 1
    invoke-static {p1, p2}, Le/a/o5/t;->e(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "it"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-static {p2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    :goto_1
    xor-int/2addr p2, v0

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/g/j/g;->a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/g/j/g;->e:Le/a/b0/q/z;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it.normalizedNumber"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    const-string v2, "it.countryCode"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Le/a/b0/q/z;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public final c(Lcom/truecaller/data/entity/HistoryEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g/j/g;->a:Le/a/p5/c0;

    .line 2
    iget p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-eqz p1, :cond_1

    const p1, 0x7f12084a

    goto :goto_1

    :cond_1
    const p1, 0x7f120843

    :goto_1
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    .line 3
    invoke-interface {v0, p1, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resourceProvider.getStri\u2026call_ended, relativeTime)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
