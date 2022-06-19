.class public final Lg/g/d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/d/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/d/i$a;
    }
.end annotation


# static fields
.field private static volatile f:Lg/g/d/h;

.field public static final g:Lg/g/d/i$a;


# instance fields
.field private final a:Lcom/hiya/api/zipkin/interceptor/HeadersInfo;

.field private final b:Lcom/hiya/api/zipkin/interceptor/TracingEnableState;

.field private final c:Lg/g/d/f;

.field private final d:Li/a/a/f/x;

.field private e:Lg/g/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/g/d/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/d/i$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lg/g/d/i;->g:Lg/g/d/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;Lg/g/d/m/a/b;Lcom/hiya/api/zipkin/interceptor/TracingEnableState;Lg/g/d/m/a/c;Lg/g/d/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lg/g/d/i;->a:Lcom/hiya/api/zipkin/interceptor/HeadersInfo;

    .line 4
    iput-object p5, p0, Lg/g/d/i;->b:Lcom/hiya/api/zipkin/interceptor/TracingEnableState;

    .line 5
    iput-object p7, p0, Lg/g/d/i;->c:Lg/g/d/f;

    .line 6
    invoke-virtual {p6}, Lg/g/d/m/a/c;->a()Li/a/a/f/x;

    move-result-object p1

    iput-object p1, p0, Lg/g/d/i;->d:Li/a/a/f/x;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;Lg/g/d/m/a/b;Lcom/hiya/api/zipkin/interceptor/TracingEnableState;Lg/g/d/m/a/c;Lg/g/d/f;Lkotlin/w/c/g;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lg/g/d/i;-><init>(Ljava/lang/String;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;Lg/g/d/m/a/b;Lcom/hiya/api/zipkin/interceptor/TracingEnableState;Lg/g/d/m/a/c;Lg/g/d/f;)V

    return-void
.end method

.method public static final synthetic f()Lg/g/d/h;
    .locals 1

    .line 1
    sget-object v0, Lg/g/d/i;->f:Lg/g/d/h;

    return-object v0
.end method

.method public static final synthetic g(Lg/g/d/h;)V
    .locals 0

    .line 1
    sput-object p0, Lg/g/d/i;->f:Lg/g/d/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/d/i;->e:Lg/g/d/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/g/d/a;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lg/g/d/i;->e:Lg/g/d/a;

    return-void
.end method

.method public b(Ljava/lang/String;)Lg/g/d/e;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/d/i;->c:Lg/g/d/f;

    .line 2
    iget-object v1, p0, Lg/g/d/i;->d:Li/a/a/f/x;

    .line 3
    iget-object v2, p0, Lg/g/d/i;->b:Lcom/hiya/api/zipkin/interceptor/TracingEnableState;

    invoke-interface {v2}, Lcom/hiya/api/zipkin/interceptor/TracingEnableState;->isEnabled()Z

    move-result v2

    .line 4
    iget-object v3, p0, Lg/g/d/i;->e:Lg/g/d/a;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lg/g/d/a;->b()Lg/g/d/e;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0, v1, v2, p1, v3}, Lg/g/d/f;->b(Li/a/a/f/x;ZLjava/lang/String;Lg/g/d/e;)Lg/g/d/e;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lg/g/d/i;->e:Lg/g/d/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lg/g/d/a;->a(Lg/g/d/e;)V

    :cond_1
    return-object p1
.end method

.method public c(Ljava/lang/String;Lg/g/d/e;)Lg/g/d/e;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/d/i;->c:Lg/g/d/f;

    .line 2
    iget-object v1, p0, Lg/g/d/i;->d:Li/a/a/f/x;

    .line 3
    iget-object v2, p0, Lg/g/d/i;->b:Lcom/hiya/api/zipkin/interceptor/TracingEnableState;

    invoke-interface {v2}, Lcom/hiya/api/zipkin/interceptor/TracingEnableState;->isEnabled()Z

    move-result v2

    .line 4
    invoke-virtual {v0, v1, v2, p1, p2}, Lg/g/d/f;->b(Li/a/a/f/x;ZLjava/lang/String;Lg/g/d/e;)Lg/g/d/e;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lg/g/d/i;->e:Lg/g/d/a;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lg/g/d/a;->a(Lg/g/d/e;)V

    :cond_0
    return-object p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/d/i;->e:Lg/g/d/a;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/g/d/i;->c:Lg/g/d/f;

    .line 3
    iget-object v1, p0, Lg/g/d/i;->d:Li/a/a/f/x;

    .line 4
    iget-object v2, p0, Lg/g/d/i;->b:Lcom/hiya/api/zipkin/interceptor/TracingEnableState;

    invoke-interface {v2}, Lcom/hiya/api/zipkin/interceptor/TracingEnableState;->isEnabled()Z

    move-result v2

    .line 5
    iget-object v3, p0, Lg/g/d/i;->a:Lcom/hiya/api/zipkin/interceptor/HeadersInfo;

    .line 6
    invoke-virtual {v0, v1, v2, p1, v3}, Lg/g/d/f;->a(Li/a/a/f/x;ZLjava/lang/String;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;)Lg/g/d/a;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lg/g/d/a;->start()V

    .line 8
    iput-object p1, p0, Lg/g/d/i;->e:Lg/g/d/a;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/d/i;->e:Lg/g/d/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
