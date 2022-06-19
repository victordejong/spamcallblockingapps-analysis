.class public abstract Le/a/r2/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/u<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public a:Le/a/r2/d;


# direct methods
.method public constructor <init>(Le/a/r2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/r2/v;->a:Le/a/r2/d;

    return-void
.end method

.method public static b(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "<value>"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "null"

    return-object p0

    .line 1
    :cond_1
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "\'\'"

    return-object p0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const-string p0, "<not empty string>"

    return-object p0

    :cond_3
    const-string p1, "\'"

    .line 3
    invoke-static {p1, p0, p1}, Le/d/c/a/a;->y2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const-string p0, "<not null value>"

    return-object p0

    .line 4
    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Le/a/r2/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r2/v;->a:Le/a/r2/d;

    return-object v0
.end method

.method public c(Le/a/r2/x;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/x<",
            "TR;>;)",
            "Le/a/r2/x<",
            "TR;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Actor methods are not allowed to return null"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/a/r2/v;->a:Le/a/r2/d;

    invoke-virtual {p1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3
    throw p1
.end method
