.class public final Lg/g/b/a/g/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lg/g/b/c/q;)Z
    .locals 1

    const-string v0, "$this$isFraudOrSpam"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lg/g/b/c/q;->FRAUD:Lg/g/b/c/q;

    if-eq p0, v0, :cond_1

    sget-object v0, Lg/g/b/c/q;->SPAM:Lg/g/b/c/q;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
