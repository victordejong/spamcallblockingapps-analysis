.class final Ll/a/a/j/a$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/a/a/j/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/a/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/a/a/j/b<",
        "Ll/a/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Appendable;Ll/a/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ll/a/a/a;

    invoke-virtual {p0, p1, p2, p3}, Ll/a/a/j/a$r;->b(Ll/a/a/a;Ljava/lang/Appendable;Ll/a/a/f;)V

    return-void
.end method

.method public b(Ll/a/a/a;Ljava/lang/Appendable;Ll/a/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ll/a/a/a;",
            ">(TE;",
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

    .line 1
    invoke-interface {p1}, Ll/a/a/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
