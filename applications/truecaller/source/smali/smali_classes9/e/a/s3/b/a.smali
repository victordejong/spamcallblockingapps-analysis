.class public final Le/a/s3/b/a;
.super Le/a/s3/b/e;
.source "SourceFile"


# static fields
.field public static final a:Le/a/s3/b/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/s3/b/a;

    invoke-direct {v0}, Le/a/s3/b/a;-><init>()V

    sput-object v0, Le/a/s3/b/a;->a:Le/a/s3/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/s3/b/e;-><init>(Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/exception/filters/RemoteFilterRule;Ljava/lang/Throwable;)Z
    .locals 6

    const-string v0, "rule"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/exception/filters/RemoteFilterRule;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/truecaller/exception/filters/RemoteFilterRule;->getTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    :goto_3
    if-eqz v0, :cond_4

    goto/16 :goto_8

    .line 2
    :cond_4
    invoke-virtual {p1}, Lcom/truecaller/exception/filters/RemoteFilterRule;->getTarget()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Locale.US"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x8857fd

    if-eq v3, v4, :cond_9

    const v4, 0x38eb0007

    if-eq v3, v4, :cond_8

    const v4, 0x7a8983bd

    if-eq v3, v4, :cond_5

    goto :goto_6

    :cond_5
    const-string v3, "stacktrace"

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const-string v0, "e.stackTrace"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v0, p2

    move v3, v2

    :goto_4
    if-ge v3, v0, :cond_a

    aget-object v4, p2, v3

    const-string v5, "it"

    .line 5
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/truecaller/exception/filters/RemoteFilterRule;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Ls1/f0/v;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    goto :goto_5

    :cond_6
    move v4, v2

    :goto_5
    if-eqz v4, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    const-string v3, "message"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/truecaller/exception/filters/RemoteFilterRule;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Ls1/f0/v;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    goto :goto_7

    :cond_9
    const-string v3, "classname"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "e.javaClass.name"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/exception/filters/RemoteFilterRule;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Ls1/f0/v;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    goto :goto_7

    :cond_a
    :goto_6
    move v1, v2

    :goto_7
    return v1

    :cond_b
    :goto_8
    return v2
.end method
