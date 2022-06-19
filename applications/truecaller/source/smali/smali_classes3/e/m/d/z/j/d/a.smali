.class public Le/m/d/z/j/d/a;
.super Le/m/d/z/j/d/e;
.source "SourceFile"


# static fields
.field public static final b:Le/m/d/z/i/a;


# instance fields
.field public final a:Lcom/google/firebase/perf/v1/ApplicationInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v0

    sput-object v0, Le/m/d/z/j/d/a;->b:Le/m/d/z/i/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/v1/ApplicationInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/d/z/j/d/e;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/z/j/d/a;->a:Lcom/google/firebase/perf/v1/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/d/z/j/d/a;->a:Lcom/google/firebase/perf/v1/ApplicationInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Le/m/d/z/j/d/a;->b:Le/m/d/z/i/a;

    .line 3
    iget-boolean v3, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    move v0, v2

    goto/16 :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasGoogleAppId()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Le/m/d/z/j/d/a;->b:Le/m/d/z/i/a;

    .line 8
    iget-boolean v3, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v3, :cond_0

    .line 9
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Le/m/d/z/j/d/a;->a:Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasAppInstanceId()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    sget-object v0, Le/m/d/z/j/d/a;->b:Le/m/d/z/i/a;

    .line 13
    iget-boolean v3, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v3, :cond_0

    .line 14
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Le/m/d/z/j/d/a;->a:Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasApplicationProcessState()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    sget-object v0, Le/m/d/z/j/d/a;->b:Le/m/d/z/i/a;

    .line 18
    iget-boolean v3, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v3, :cond_0

    .line 19
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_4
    iget-object v0, p0, Le/m/d/z/j/d/a;->a:Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasAndroidAppInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p0, Le/m/d/z/j/d/a;->a:Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getAndroidAppInfo()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->hasPackageName()Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    sget-object v0, Le/m/d/z/j/d/a;->b:Le/m/d/z/i/a;

    .line 24
    iget-boolean v3, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v3, :cond_0

    .line 25
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 26
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_5
    iget-object v0, p0, Le/m/d/z/j/d/a;->a:Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getAndroidAppInfo()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->hasSdkVersion()Z

    move-result v0

    if-nez v0, :cond_6

    .line 28
    sget-object v0, Le/m/d/z/j/d/a;->b:Le/m/d/z/i/a;

    .line 29
    iget-boolean v3, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v3, :cond_0

    .line 30
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_1
    if-nez v0, :cond_8

    .line 32
    sget-object v0, Le/m/d/z/j/d/a;->b:Le/m/d/z/i/a;

    .line 33
    iget-boolean v1, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v1, :cond_7

    .line 34
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return v2

    :cond_8
    return v1
.end method
