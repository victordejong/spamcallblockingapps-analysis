.class final Lcom/hiya/client/support/logging/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/client/support/logging/c;


# static fields
.field private static a:Lcom/hiya/client/support/logging/e;

.field public static final b:Lcom/hiya/client/support/logging/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/support/logging/b;

    invoke-direct {v0}, Lcom/hiya/client/support/logging/b;-><init>()V

    sput-object v0, Lcom/hiya/client/support/logging/b;->b:Lcom/hiya/client/support/logging/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final varargs d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1
    array-length v2, p2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_4

    .line 2
    sget-object v0, Lkotlin/w/c/t;->a:Lkotlin/w/c/t;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    invoke-virtual {v0}, Lcom/hiya/client/support/logging/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hiya/client/support/logging/b;->a:Lcom/hiya/client/support/logging/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hiya/client/support/logging/e;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 2
    :cond_1
    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    invoke-direct {p0, p3, p4}, Lcom/hiya/client/support/logging/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public varargs b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    invoke-virtual {v0}, Lcom/hiya/client/support/logging/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hiya/client/support/logging/b;->a:Lcom/hiya/client/support/logging/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hiya/client/support/logging/e;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    const/4 v1, 0x6

    if-gt v0, v1, :cond_2

    .line 2
    :cond_1
    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    invoke-direct {p0, p3, p4}, Lcom/hiya/client/support/logging/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public varargs c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    invoke-virtual {v0}, Lcom/hiya/client/support/logging/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hiya/client/support/logging/b;->a:Lcom/hiya/client/support/logging/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hiya/client/support/logging/e;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 2
    :cond_1
    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    invoke-direct {p0, p3, p4}, Lcom/hiya/client/support/logging/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public final e(Lcom/hiya/client/support/logging/e;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/hiya/client/support/logging/b;->a:Lcom/hiya/client/support/logging/e;

    return-void
.end method
