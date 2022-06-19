.class public final Lg/g/d/k/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/api/zipkin/interceptor/TracingEnableState;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lg/g/d/k/b;)Lcom/hiya/api/zipkin/interceptor/TracingEnableState;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/d/k/b;->f()Lcom/hiya/api/zipkin/interceptor/TracingEnableState;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/hiya/api/zipkin/interceptor/TracingEnableState;

    return-object p0
.end method
