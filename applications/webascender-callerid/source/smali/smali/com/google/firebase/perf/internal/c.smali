.class public Lcom/google/firebase/perf/internal/c;
.super Lcom/google/firebase/perf/internal/j;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/firebase/perf/g/a;


# instance fields
.field private final a:Lcom/google/firebase/perf/j/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/g/a;->e()Lcom/google/firebase/perf/g/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/internal/c;->b:Lcom/google/firebase/perf/g/a;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/perf/j/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/j;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/perf/internal/c;->a:Lcom/google/firebase/perf/j/c;

    return-void
.end method

.method private g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/c;->a:Lcom/google/firebase/perf/j/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/firebase/perf/internal/c;->b:Lcom/google/firebase/perf/g/a;

    const-string v2, "ApplicationInfo is null"

    invoke-virtual {v0, v2}, Lcom/google/firebase/perf/g/a;->i(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/j/c;->i0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/google/firebase/perf/internal/c;->b:Lcom/google/firebase/perf/g/a;

    const-string v2, "GoogleAppId is null"

    invoke-virtual {v0, v2}, Lcom/google/firebase/perf/g/a;->i(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/c;->a:Lcom/google/firebase/perf/j/c;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/c;->g0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lcom/google/firebase/perf/internal/c;->b:Lcom/google/firebase/perf/g/a;

    const-string v2, "AppInstanceId is null"

    invoke-virtual {v0, v2}, Lcom/google/firebase/perf/g/a;->i(Ljava/lang/String;)V

    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/internal/c;->a:Lcom/google/firebase/perf/j/c;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/c;->h0()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    sget-object v0, Lcom/google/firebase/perf/internal/c;->b:Lcom/google/firebase/perf/g/a;

    const-string v2, "ApplicationProcessState is null"

    invoke-virtual {v0, v2}, Lcom/google/firebase/perf/g/a;->i(Ljava/lang/String;)V

    return v1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/perf/internal/c;->a:Lcom/google/firebase/perf/j/c;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/c;->f0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/google/firebase/perf/internal/c;->a:Lcom/google/firebase/perf/j/c;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/c;->c0()Lcom/google/firebase/perf/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/a;->b0()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    sget-object v0, Lcom/google/firebase/perf/internal/c;->b:Lcom/google/firebase/perf/g/a;

    const-string v2, "AndroidAppInfo.packageName is null"

    invoke-virtual {v0, v2}, Lcom/google/firebase/perf/g/a;->i(Ljava/lang/String;)V

    return v1

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/perf/internal/c;->a:Lcom/google/firebase/perf/j/c;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/c;->c0()Lcom/google/firebase/perf/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/a;->c0()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    sget-object v0, Lcom/google/firebase/perf/internal/c;->b:Lcom/google/firebase/perf/g/a;

    const-string v2, "AndroidAppInfo.sdkVersion is null"

    invoke-virtual {v0, v2}, Lcom/google/firebase/perf/g/a;->i(Ljava/lang/String;)V

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/firebase/perf/internal/c;->b:Lcom/google/firebase/perf/g/a;

    const-string v1, "ApplicationInfo is invalid"

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/g/a;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
