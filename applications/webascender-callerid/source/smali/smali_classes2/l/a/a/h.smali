.class public Ll/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ll/a/a/f;

.field public static b:Ll/a/a/j/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ll/a/a/f;->h:Ll/a/a/f;

    sput-object v0, Ll/a/a/h;->a:Ll/a/a/f;

    .line 2
    new-instance v0, Lnet/minidev/json/parser/b;

    .line 3
    new-instance v0, Ll/a/a/j/a;

    invoke-direct {v0}, Ll/a/a/j/a;-><init>()V

    sput-object v0, Ll/a/a/h;->b:Ll/a/a/j/a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ll/a/a/h;->a:Ll/a/a/f;

    invoke-static {p0, v0}, Ll/a/a/h;->b(Ljava/lang/String;Ll/a/a/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ll/a/a/f;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1, p0, v0}, Ll/a/a/f;->f(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Appendable;Ll/a/a/f;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2, p0, p1}, Ll/a/a/f;->f(Ljava/lang/String;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Appendable;Ll/a/a/f;)V
    .locals 5
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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    sget-object v1, Ll/a/a/h;->b:Ll/a/a/j/a;

    invoke-virtual {v1, v0}, Ll/a/a/j/a;->b(Ljava/lang/Class;)Ll/a/a/j/b;

    move-result-object v1

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Ll/a/a/j/a;->k:Ll/a/a/j/b;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Ll/a/a/h;->b:Ll/a/a/j/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ll/a/a/j/a;->c(Ljava/lang/Class;)Ll/a/a/j/b;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    sget-object v1, Ll/a/a/j/a;->j:Ll/a/a/j/b;

    .line 8
    :cond_2
    :goto_0
    sget-object v2, Ll/a/a/h;->b:Ll/a/a/j/a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 9
    :cond_3
    invoke-interface {v1, p0, p1, p2}, Ll/a/a/j/b;->a(Ljava/lang/Object;Ljava/lang/Appendable;Ll/a/a/f;)V

    return-void
.end method
