.class public final Lg/g/d/k/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/d/h;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lg/g/d/k/b;Ljava/lang/String;Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;Lg/g/d/m/a/b;Lcom/hiya/api/zipkin/interceptor/TracingEnableState;Lg/g/d/m/a/c;Lg/g/d/f;)Lg/g/d/h;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p7}, Lg/g/d/k/b;->d(Ljava/lang/String;Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;Lg/g/d/m/a/b;Lcom/hiya/api/zipkin/interceptor/TracingEnableState;Lg/g/d/m/a/c;Lg/g/d/f;)Lg/g/d/h;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/g/d/h;

    return-object p0
.end method
