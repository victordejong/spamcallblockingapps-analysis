.class public Ll/a/a/c;
.super Ljava/util/HashMap;
.source "SourceFile"

# interfaces
.implements Ll/a/a/a;
.implements Ll/a/a/b;
.implements Ll/a/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ll/a/a/a;",
        "Ll/a/a/b;",
        "Ll/a/a/e;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ll/a/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/util/Map;Ll/a/a/f;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ll/a/a/f;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p0, v0, p1}, Ll/a/a/c;->i(Ljava/util/Map;Ljava/lang/Appendable;Ll/a/a/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/Map;Ljava/lang/Appendable;Ll/a/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Appendable;",
            "Ll/a/a/f;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 1
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    .line 2
    :cond_0
    sget-object v0, Ll/a/a/j/a;->i:Ll/a/a/j/b;

    invoke-interface {v0, p0, p1, p2}, Ll/a/a/j/b;->a(Ljava/lang/Object;Ljava/lang/Appendable;Ll/a/a/f;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Appendable;Ll/a/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Ll/a/a/c;->i(Ljava/util/Map;Ljava/lang/Appendable;Ll/a/a/f;)V

    return-void
.end method

.method public b(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ll/a/a/h;->a:Ll/a/a/f;

    invoke-static {p0, p1, v0}, Ll/a/a/c;->i(Ljava/util/Map;Ljava/lang/Appendable;Ll/a/a/f;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ll/a/a/h;->a:Ll/a/a/f;

    invoke-static {p0, v0}, Ll/a/a/c;->h(Ljava/util/Map;Ll/a/a/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ll/a/a/f;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ll/a/a/c;->h(Ljava/util/Map;Ll/a/a/f;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ll/a/a/h;->a:Ll/a/a/f;

    invoke-static {p0, v0}, Ll/a/a/c;->h(Ljava/util/Map;Ll/a/a/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
