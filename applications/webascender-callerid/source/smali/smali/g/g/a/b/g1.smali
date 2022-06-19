.class public final Lg/g/a/b/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lm/c0$a;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lg/g/a/b/f1;Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor;Lm/l0/a;Lg/g/a/a/k/c;Lg/g/a/a/k/j;Lg/g/a/a/k/h;)Lm/c0$a;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lg/g/a/b/f1;->a(Lcom/hiya/api/zipkin/interceptor/HeadersInterceptor;Lm/l0/a;Lg/g/a/a/k/c;Lg/g/a/a/k/j;Lg/g/a/a/k/h;)Lm/c0$a;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lm/c0$a;

    return-object p0
.end method
