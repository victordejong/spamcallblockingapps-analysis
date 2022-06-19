.class public final Le/i/b/g2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Le/i/b/q2/f;
    .locals 9
    .annotation runtime Le/i/b/q2/a$a;
    .end annotation

    const-string v0, "Calling "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    const-class v1, Le/i/b/q2/c;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    const-class v2, Le/i/b/q2/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 6
    invoke-static {v1}, Le/q/f/a/d/a;->J1([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->A(Ljava/util/Iterator;)Ls1/e0/k;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ls1/e0/x;->e(Ls1/e0/k;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "stackTraceElement.className"

    invoke-static {v2, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.criteo.publisher."

    invoke-static {v2, v3}, Ls1/f0/v;->P(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x23

    .line 8
    invoke-static {v2, v3}, Le/d/c/a/a;->D(Ljava/lang/String;C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Le/i/b/q2/a;->a:Le/i/b/q2/a;

    invoke-static {v2, v1}, Le/i/b/q2/a;->a(Le/i/b/q2/a;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, " with a null application"

    .line 10
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    new-instance v0, Le/i/b/q2/f;

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v4, 0x5

    const-string v7, "onMethodCalledWithNullApplication"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final b(Lcom/criteo/publisher/CriteoInterstitial;Z)Le/i/b/q2/f;
    .locals 7

    const-string v0, "interstitial"

    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/i/b/q2/f;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$this$adUnit"

    .line 3
    invoke-static {p0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/criteo/publisher/CriteoInterstitial;->interstitialAdUnit:Lcom/criteo/publisher/model/InterstitialAdUnit;

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") is isAdLoaded="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    move-object v1, v0

    .line 6
    invoke-direct/range {v1 .. v6}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-object v0
.end method
