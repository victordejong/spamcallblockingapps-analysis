.class public final Le/a/u4/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/d4/c;

.field public final b:Le/a/p5/g;

.field public final c:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/d4/c;Le/a/p5/g;Le/a/b0/o/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/u4/k;->a:Le/a/d4/c;

    iput-object p2, p0, Le/a/u4/k;->b:Le/a/p5/g;

    iput-object p3, p0, Le/a/u4/k;->c:Le/a/b0/o/a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u4/k;->c:Le/a/b0/o/a;

    const-string v1, "featureNumberScanner"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/u4/k;->a:Le/a/d4/c;

    sget-object v1, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v0, v1}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/u4/k;->a:Le/a/d4/c;

    invoke-interface {v0, v1}, Le/a/d4/c;->f(Le/a/d4/e;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 4
    sget v1, Le/a/u4/l;->b:I

    if-lt v0, v1, :cond_0

    .line 5
    sget-object v0, Le/a/u4/l;->a:Ljava/util/Set;

    .line 6
    iget-object v1, p0, Le/a/u4/k;->b:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->e()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "Locale.ENGLISH"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    move v2, v0

    :cond_1
    return v2
.end method
