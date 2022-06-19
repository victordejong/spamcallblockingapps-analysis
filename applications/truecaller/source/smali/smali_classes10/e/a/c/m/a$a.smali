.class public final Le/a/c/m/a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/m/a;-><init>(Le/a/c/b/e;Le/a/c/i/b/a;Le/a/c/b/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/m/a;


# direct methods
.method public constructor <init>(Le/a/c/m/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/m/a$a;->b:Le/a/c/m/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/c/m/a$a;->b:Le/a/c/m/a;

    .line 2
    iget-object v0, v0, Le/a/c/m/a;->d:Le/a/c/b/j;

    .line 3
    invoke-interface {v0}, Le/a/c/b/j;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/c/m/a$a;->b:Le/a/c/m/a;

    .line 5
    iget-object v0, v0, Le/a/c/m/a;->c:Le/a/c/i/b/a;

    .line 6
    invoke-interface {v0}, Le/a/c/i/b/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v2, p0, Le/a/c/m/a$a;->b:Le/a/c/m/a;

    .line 8
    iget-object v2, v2, Le/a/c/m/a;->b:Le/a/c/b/e;

    .line 9
    invoke-interface {v2}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v2

    .line 10
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Locale.US"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method
